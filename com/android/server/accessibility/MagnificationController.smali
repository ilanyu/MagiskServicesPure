.class public Lcom/android/server/accessibility/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationController$SettingsBridge;,
        Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;,
        Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final INVALID_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationController"

.field public static final MAX_SCALE:F = 5.0f

.field public static final MIN_SCALE:F = 1.0f

.field private static final MSG_ON_MAGNIFIED_BOUNDS_CHANGED:I = 0x3

.field private static final MSG_ON_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x4

.field private static final MSG_ON_USER_CONTEXT_CHANGED:I = 0x5

.field private static final MSG_SCREEN_TURNED_OFF:I = 0x2

.field private static final MSG_SEND_SPEC_TO_ANIMATION:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mHandler:Landroid/os/Handler;

.field private mIdOfLastServiceToMagnify:I

.field private final mLock:Ljava/lang/Object;

.field private final mMagnificationBounds:Landroid/graphics/Rect;

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private final mMainThreadId:J

.field mRegistered:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

.field private final mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

.field private final mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mUnregisterPending:Z

.field private mUserId:I

.field private final mWMCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 148
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v8, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;-><init>(Landroid/content/ContentResolver;)V

    .line 148
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/accessibility/MagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$SettingsBridge;)V

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$SettingsBridge;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p6, "valueAnimator"    # Landroid/animation/ValueAnimator;
    .param p7, "settingsBridge"    # Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 86
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect1:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/MagnificationController$1;-><init>(Lcom/android/server/accessibility/MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWMCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    .line 161
    iput-object p4, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    .line 162
    iput-object p5, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    .line 164
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 165
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    .line 166
    iput-object p3, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .line 169
    iput-object p7, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/MagnificationController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController;

    .line 58
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$SettingsBridge;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController;

    .line 58
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/MagnificationController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController;

    .line 58
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onScreenTurnedOff()V

    return-void
.end method

.method private getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "outFrame"    # Landroid/graphics/Rect;

    .line 716
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentScale()F

    move-result v0

    .line 717
    .local v0, "scale":F
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentOffsetX()F

    move-result v1

    .line 718
    .local v1, "offsetX":F
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentOffsetY()F

    move-result v2

    .line 719
    .local v2, "offsetY":F
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 720
    neg-float v3, v1

    float-to-int v3, v3

    neg-float v4, v2

    float-to-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 721
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 722
    return-void
.end method

.method private getMinOffsetXLocked()F
    .registers 3

    .line 667
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 668
    .local v0, "viewportWidth":F
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    return v1
.end method

.method private getMinOffsetYLocked()F
    .registers 3

    .line 672
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 673
    .local v0, "viewportHeight":F
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    return v1
.end method

.method private getSentOffsetX()F
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    # getter for: Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$200(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method private getSentOffsetY()F
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    # getter for: Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$200(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method private getSentScale()F
    .registers 2

    .line 368
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    # getter for: Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$200(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method private onMagnificationChangedLocked()V
    .registers 6

    .line 567
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    .line 568
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    move-result v4

    .line 567
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(Landroid/graphics/Region;FFF)V

    .line 569
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_20

    .line 570
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->unregisterInternalLocked()V

    .line 572
    :cond_20
    return-void
.end method

.method private onMagnificationRegionChanged(Landroid/graphics/Region;)V
    .registers 5
    .param p1, "magnified"    # Landroid/graphics/Region;

    .line 242
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_9

    .line 245
    monitor-exit v0

    return-void

    .line 247
    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 248
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 249
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 252
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 254
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 256
    :cond_31
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    .line 258
    :cond_34
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private onScreenTurnedOff()V
    .registers 3

    .line 781
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 782
    return-void
.end method

.method private requestRectangleOnScreen(IIII)V
    .registers 14
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 725
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 727
    .local v1, "magnifiedFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 728
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v2

    if-nez v2, :cond_10

    .line 729
    monitor-exit v0

    return-void

    .line 732
    :cond_10
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect1:Landroid/graphics/Rect;

    .line 733
    .local v2, "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/MagnificationController;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 737
    sub-int v3, p3, p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    const/4 v5, 0x0

    if-le v3, v4, :cond_35

    .line 739
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    .line 740
    .local v3, "direction":I
    if-nez v3, :cond_2e

    .line 741
    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    .local v4, "scrollX":F
    goto :goto_33

    .line 743
    .end local v4    # "scrollX":F
    :cond_2e
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int v4, p3, v4

    int-to-float v4, v4

    .end local v3    # "direction":I
    .restart local v4    # "scrollX":F
    :goto_33
    move v3, v4

    .line 745
    .end local v4    # "scrollX":F
    .local v3, "scrollX":F
    goto :goto_4a

    .end local v3    # "scrollX":F
    :cond_35
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge p1, v3, :cond_3f

    .line 746
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    .restart local v3    # "scrollX":F
    :goto_3e
    goto :goto_4a

    .line 747
    .end local v3    # "scrollX":F
    :cond_3f
    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-le p3, v3, :cond_49

    .line 748
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    goto :goto_3e

    .line 750
    :cond_49
    move v3, v5

    .line 753
    .restart local v3    # "scrollX":F
    :goto_4a
    sub-int v4, p4, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v4, v6, :cond_58

    .line 754
    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, p2, v4

    int-to-float v5, v4

    .local v5, "scrollY":F
    :goto_57
    goto :goto_6d

    .line 755
    .end local v5    # "scrollY":F
    :cond_58
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge p2, v4, :cond_62

    .line 756
    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, p2, v4

    int-to-float v5, v4

    goto :goto_57

    .line 757
    :cond_62
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-le p4, v4, :cond_6c

    .line 758
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p4, v4

    int-to-float v5, v4

    goto :goto_57

    .line 760
    :cond_6c
    nop

    .restart local v5    # "scrollY":F
    :goto_6d
    move v4, v5

    .line 763
    .end local v5    # "scrollY":F
    .local v4, "scrollY":F
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v5

    .line 764
    .local v5, "scale":F
    mul-float v6, v3, v5

    mul-float v7, v4, v5

    const/4 v8, -0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/accessibility/MagnificationController;->offsetMagnifiedRegion(FFI)V

    .line 765
    .end local v1    # "magnifiedFrame":Landroid/graphics/Rect;
    .end local v2    # "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    .end local v3    # "scrollX":F
    .end local v4    # "scrollY":F
    .end local v5    # "scale":F
    monitor-exit v0

    .line 766
    return-void

    .line 765
    :catchall_7c
    move-exception v1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method private resetLocked(Z)Z
    .registers 5
    .param p1, "animate"    # Z

    .line 409
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v0, :cond_6

    .line 410
    const/4 v0, 0x0

    return v0

    .line 412
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 413
    .local v0, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 414
    .local v1, "changed":Z
    if-eqz v1, :cond_16

    .line 415
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    .line 416
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    .line 418
    :cond_16
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    .line 419
    invoke-direct {p0, v0, p1}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 420
    return v1
.end method

.method private sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V
    .registers 7
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "animate"    # Z

    .line 772
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 773
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V

    goto :goto_1f

    .line 775
    :cond_14
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 776
    const/4 v2, 0x0

    .line 775
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 776
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 778
    :goto_1f
    return-void
.end method

.method private setScaleAndCenterLocked(FFFZI)Z
    .registers 8
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    .line 521
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController;->updateMagnificationSpecLocked(FFF)Z

    move-result v0

    .line 522
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, v1, p4}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 523
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    if-eq p5, v1, :cond_14

    .line 524
    iput p5, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    .line 526
    :cond_14
    return v0
.end method

.method private unregisterInternalLocked()V
    .registers 4

    .line 218
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 219
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->unregister()V

    .line 221
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V

    .line 222
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 223
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    .line 225
    :cond_1c
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    .line 226
    return-void
.end method

.method private updateCurrentSpecWithOffsetsLocked(FF)Z
    .registers 7
    .param p1, "nonNormOffsetX"    # F
    .param p2, "nonNormOffsetY"    # F

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetXLocked()F

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 654
    .local v1, "offsetX":F
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_19

    .line 655
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v3, Landroid/view/MagnificationSpec;->offsetX:F

    .line 656
    const/4 v0, 0x1

    .line 658
    :cond_19
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetYLocked()F

    move-result v3

    invoke-static {p2, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    .line 659
    .local v2, "offsetY":F
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_30

    .line 660
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v2, v3, Landroid/view/MagnificationSpec;->offsetY:F

    .line 661
    const/4 v0, 0x1

    .line 663
    :cond_30
    return v0
.end method

.method private updateMagnificationSpecLocked(FFF)Z
    .registers 9
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .line 614
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 615
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    move-result p2

    .line 617
    :cond_a
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 618
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    move-result p3

    .line 620
    :cond_14
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 621
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result p1

    .line 625
    :cond_1e
    const/4 v0, 0x0

    .line 627
    .local v0, "changed":Z
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 628
    .local v1, "normScale":F
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_36

    .line 629
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v2, Landroid/view/MagnificationSpec;->scale:F

    .line 630
    const/4 v0, 0x1

    .line 633
    :cond_36
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    mul-float v4, p2, v1

    sub-float/2addr v2, v4

    .line 635
    .local v2, "nonNormOffsetX":F
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    mul-float v3, p3, v1

    sub-float/2addr v4, v3

    .line 637
    .local v4, "nonNormOffsetY":F
    invoke-direct {p0, v2, v4}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v3

    or-int/2addr v0, v3

    .line 639
    if-eqz v0, :cond_64

    .line 640
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    .line 643
    :cond_64
    return v0
.end method


# virtual methods
.method public getCenterX()F
    .registers 4

    .line 331
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 333
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getOffsetX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    monitor-exit v0

    .line 332
    return v1

    .line 334
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getCenterY()F
    .registers 4

    .line 354
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 356
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getOffsetY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    monitor-exit v0

    .line 355
    return v1

    .line 357
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getIdOfLastServiceToMagnify()I
    .registers 2

    .line 563
    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    return v0
.end method

.method public getMagnificationBounds(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 285
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 287
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getMagnificationRegion(Landroid/graphics/Region;)V
    .registers 4
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 298
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getOffsetX()F
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method public getOffsetY()F
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method public getPersistedScale()F
    .registers 3

    .line 598
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;->getMagnificationScale(I)F

    move-result v0

    return v0
.end method

.method public getScale()F
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 785
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_48

    goto :goto_46

    .line 811
    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    goto :goto_46

    .line 802
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 803
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 804
    .local v1, "left":I
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 805
    .local v3, "top":I
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 806
    .local v4, "right":I
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 807
    .local v5, "bottom":I
    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/server/accessibility/MagnificationController;->requestRectangleOnScreen(IIII)V

    .line 808
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 809
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "left":I
    .end local v3    # "top":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    goto :goto_46

    .line 795
    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 796
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Region;

    .line 797
    .local v1, "magnifiedBounds":Landroid/graphics/Region;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationRegionChanged(Landroid/graphics/Region;)V

    .line 798
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 799
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 800
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "magnifiedBounds":Landroid/graphics/Region;
    goto :goto_46

    .line 792
    :pswitch_31
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    .line 793
    goto :goto_46

    .line 787
    :pswitch_35
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_3b

    move v1, v2

    nop

    :cond_3b
    move v0, v1

    .line 788
    .local v0, "animate":Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MagnificationSpec;

    .line 789
    .local v1, "spec":Landroid/view/MagnificationSpec;
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V

    .line 790
    nop

    .line 814
    .end local v0    # "animate":Z
    .end local v1    # "spec":Landroid/view/MagnificationSpec;
    :goto_46
    return v2

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_35
        :pswitch_31
        :pswitch_1f
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public isMagnifying()Z
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isRegisteredLocked()Z
    .registers 2

    .line 214
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    return v0
.end method

.method public magnificationRegionContains(FF)Z
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 271
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 273
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public offsetMagnifiedRegion(FFI)V
    .registers 9
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F
    .param p3, "id"    # I

    .line 540
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_9

    .line 542
    monitor-exit v0

    return-void

    .line 545
    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v1, p1

    .line 546
    .local v1, "nonNormOffsetX":F
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v2, p2

    .line 547
    .local v2, "nonNormOffsetY":F
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 548
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    .line 550
    :cond_1c
    const/4 v3, -0x1

    if-eq p3, v3, :cond_21

    .line 551
    iput p3, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    .line 553
    :cond_21
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 554
    .end local v1    # "nonNormOffsetX":F
    .end local v2    # "nonNormOffsetY":F
    monitor-exit v0

    .line 555
    return-void

    .line 554
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public persistScale()V
    .registers 5

    .line 578
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 579
    .local v0, "scale":F
    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    .line 581
    .local v1, "userId":I
    new-instance v2, Lcom/android/server/accessibility/MagnificationController$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/accessibility/MagnificationController$2;-><init>(Lcom/android/server/accessibility/MagnificationController;FI)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 587
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/MagnificationController$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 588
    return-void
.end method

.method public register()V
    .registers 5

    .line 180
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_29

    .line 182
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->register()V

    .line 183
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mWMCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V

    .line 184
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 186
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerInternal;->getMagnificationRegion(Landroid/graphics/Region;)V

    .line 187
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 188
    iput-boolean v2, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    .line 190
    :cond_29
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public reset(Z)Z
    .registers 4
    .param p1, "animate"    # Z

    .line 403
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->resetLocked(Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 405
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method resetIfNeeded(Z)Z
    .registers 4
    .param p1, "animate"    # Z

    .line 700
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 702
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    .line 703
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 705
    :cond_f
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 706
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setCenter(FFZI)Z
    .registers 13
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "animate"    # Z
    .param p4, "id"    # I

    .line 479
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_a

    .line 481
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 483
    :cond_a
    const/high16 v3, 0x7fc00000    # Float.NaN

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 484
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method setForceShowMagnifiableBounds(Z)V
    .registers 3
    .param p1, "show"    # Z

    .line 710
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-eqz v0, :cond_9

    .line 711
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setForceShowMagnifiableBounds(Z)V

    .line 713
    :cond_9
    return-void
.end method

.method public setScale(FFFZI)Z
    .registers 26
    .param p1, "scale"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    move-object/from16 v7, p0

    .line 438
    iget-object v8, v7, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 439
    :try_start_5
    iget-boolean v0, v7, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_7d

    if-nez v0, :cond_11

    .line 440
    const/4 v0, 0x0

    :try_start_a
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_c

    return v0

    .line 461
    :catchall_c
    move-exception v0

    move/from16 v9, p1

    goto/16 :goto_81

    .line 443
    :cond_11
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40a00000    # 5.0f

    move/from16 v2, p1

    :try_start_17
    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_7b

    move v9, v0

    .line 445
    .end local p1    # "scale":F
    .local v9, "scale":F
    :try_start_1c
    iget-object v0, v7, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 446
    .local v0, "viewport":Landroid/graphics/Rect;
    iget-object v1, v7, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 447
    iget-object v1, v7, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object v10, v1

    .line 448
    .local v10, "spec":Landroid/view/MagnificationSpec;
    iget v1, v10, Landroid/view/MagnificationSpec;->scale:F

    move v11, v1

    .line 449
    .local v11, "oldScale":F
    nop

    .line 450
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v10, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    div-float v12, v1, v11

    .line 451
    .local v12, "oldCenterX":F
    nop

    .line 452
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v2, v10, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    div-float v13, v1, v11

    .line 453
    .local v13, "oldCenterY":F
    iget v1, v10, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float v1, p2, v1

    div-float v14, v1, v11

    .line 454
    .local v14, "normPivotX":F
    iget v1, v10, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float v1, p3, v1

    div-float v15, v1, v11

    .line 455
    .local v15, "normPivotY":F
    sub-float v1, v12, v14

    div-float v2, v11, v9

    mul-float v16, v1, v2

    .line 456
    .local v16, "offsetX":F
    sub-float v1, v13, v15

    div-float v2, v11, v9

    mul-float v17, v1, v2

    .line 457
    .local v17, "offsetY":F
    add-float v18, v14, v16

    .line 458
    .local v18, "centerX":F
    add-float v19, v15, v17

    .line 459
    .local v19, "centerY":F
    move/from16 v6, p5

    iput v6, v7, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    .line 460
    move-object v1, v7

    move v2, v9

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z

    move-result v1

    monitor-exit v8

    return v1

    .line 461
    .end local v0    # "viewport":Landroid/graphics/Rect;
    .end local v9    # "scale":F
    .end local v10    # "spec":Landroid/view/MagnificationSpec;
    .end local v11    # "oldScale":F
    .end local v12    # "oldCenterX":F
    .end local v13    # "oldCenterY":F
    .end local v14    # "normPivotX":F
    .end local v15    # "normPivotY":F
    .end local v16    # "offsetX":F
    .end local v17    # "offsetY":F
    .end local v18    # "centerX":F
    .end local v19    # "centerY":F
    .restart local p1    # "scale":F
    :catchall_7b
    move-exception v0

    goto :goto_80

    :catchall_7d
    move-exception v0

    move/from16 v2, p1

    .end local p1    # "scale":F
    .restart local v9    # "scale":F
    :goto_80
    move v9, v2

    :goto_81
    monitor-exit v8
    :try_end_82
    .catchall {:try_start_1c .. :try_end_82} :catchall_83

    throw v0

    :catchall_83
    move-exception v0

    goto :goto_81
.end method

.method public setScaleAndCenter(FFFZI)Z
    .registers 8
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    .line 505
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_a

    .line 507
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 509
    :cond_a
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 510
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public setUserId(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 682
    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    if-eq v0, p1, :cond_18

    .line 683
    iput p1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    .line 685
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 687
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    .line 689
    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1

    .line 691
    :cond_18
    :goto_18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagnificationController{mCurrentMagnificationSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIdOfLastServiceToMagnify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUnregisterPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister()V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    if-nez v1, :cond_d

    .line 200
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->unregisterInternalLocked()V

    goto :goto_13

    .line 202
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    .line 203
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->resetLocked(Z)Z

    .line 205
    :goto_13
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method
