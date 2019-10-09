.class Lcom/android/server/accessibility/TouchExplorer;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_GESTURE_DETECTING:I = 0x5

.field private static final STATE_TOUCH_EXPLORING:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapSlop:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

.field private final mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

.field private final mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mTempPoint:Landroid/graphics/Point;

.field private mTouchExplorationInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 171
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 145
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 172
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 174
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 175
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 176
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 177
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    .line 178
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    .line 180
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    .line 181
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    .line 182
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    const/16 v2, 0x400

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    .line 185
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    const/high16 v2, 0x200000

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    .line 188
    new-instance v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 190
    .local v0, "density":F
    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    .line 192
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 58
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/TouchExplorer;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 58
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 58
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 58
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 58
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method private clear()V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 211
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_13

    .line 212
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 214
    :cond_13
    return-void
.end method

.method private clear(Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 217
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-eq v0, v1, :cond_14

    packed-switch v0, :pswitch_data_52

    goto :goto_18

    .line 223
    :pswitch_a
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    .line 226
    goto :goto_18

    .line 220
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 221
    goto :goto_18

    .line 229
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    .line 230
    nop

    .line 236
    :goto_18
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 237
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 238
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 239
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 240
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 242
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->clear()V

    .line 243
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->clear()V

    .line 245
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 248
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    .line 250
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    .line 251
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 252
    iput-boolean v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    .line 253
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 254
    return-void

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .registers 7
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .line 1073
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1074
    .local v0, "lastExploreEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x1

    if-eqz v0, :cond_38

    .line 1075
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1076
    .local v2, "lastExplorePointerIndex":I
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1077
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 1078
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1079
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v4

    if-ne v3, v4, :cond_38

    .line 1080
    :cond_2d
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1081
    return v1

    .line 1083
    :cond_36
    const/4 v1, 0x2

    return v1

    .line 1087
    .end local v2    # "lastExplorePointerIndex":I
    :cond_38
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1088
    return v1

    .line 1090
    :cond_41
    const/4 v1, 0x0

    return v1
.end method

.method private computeInjectionAction(II)I
    .registers 6
    .param p1, "actionMasked"    # I
    .param p2, "pointerIndex"    # I

    .line 1021
    if-eqz p1, :cond_15

    packed-switch p1, :pswitch_data_24

    .line 1044
    return p1

    .line 1034
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 1036
    .local v0, "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 1037
    return v2

    .line 1039
    :cond_10
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 v1, v1, 0x6

    return v1

    .line 1024
    .end local v0    # "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    :cond_15
    :pswitch_15
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 1026
    .restart local v0    # "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-nez v1, :cond_1f

    .line 1027
    const/4 v1, 0x0

    return v1

    .line 1029
    :cond_1f
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 v1, v1, 0x5

    return v1

    :pswitch_data_24
    .packed-switch 0x5
        :pswitch_15
        :pswitch_6
    .end packed-switch
.end method

.method private endGestureDetection()V
    .registers 2

    .line 790
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 793
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 795
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 797
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 798
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 799
    return-void
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 1100
    packed-switch p0, :pswitch_data_22

    .line 1110
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1108
    :pswitch_15
    const-string v0, "STATE_GESTURE_DETECTING"

    return-object v0

    .line 1106
    :pswitch_18
    const-string v0, "STATE_DELEGATING"

    return-object v0

    .line 1104
    :pswitch_1b
    const-string v0, "STATE_DRAGGING"

    return-object v0

    .line 1102
    :pswitch_1e
    const-string v0, "STATE_TOUCH_EXPLORING"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_3
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_46

    .line 784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_45

    .line 764
    :pswitch_10
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    if-ltz v0, :cond_25

    .line 765
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v0, v0

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v2, v2

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/accessibility/TouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 768
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    .line 770
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    .line 774
    :cond_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 777
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 778
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 780
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 781
    goto :goto_45

    .line 756
    :pswitch_3a
    const-string v0, "TouchExplorer"

    const-string v1, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 759
    return-void

    .line 787
    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_10
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 645
    const/4 v0, 0x0

    .line 647
    .local v0, "pointerIdBits":I
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_33

    .line 648
    const-string v1, "TouchExplorer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDraggingPointerId doesn\'t match any pointers on current event. mDraggingPointerId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 649
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 648
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    goto :goto_37

    .line 653
    :cond_33
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    shl-int v0, v3, v1

    .line 655
    :goto_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v4, 0x4

    packed-switch v1, :pswitch_data_f2

    :pswitch_3f
    goto/16 :goto_ef

    .line 724
    :pswitch_41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 725
    .local v1, "pointerId":I
    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v1, v4, :cond_52

    .line 726
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 728
    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 730
    .end local v1    # "pointerId":I
    :cond_52
    goto/16 :goto_ef

    .line 665
    :pswitch_54
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 666
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-eq v1, v2, :cond_5d

    .line 667
    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 669
    :cond_5d
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 670
    goto/16 :goto_ef

    .line 672
    :pswitch_62
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v1, v2, :cond_68

    .line 673
    goto/16 :goto_ef

    .line 675
    :cond_68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    packed-switch v1, :pswitch_data_104

    .line 712
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 714
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 715
    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 718
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 722
    goto :goto_ef

    .line 680
    :pswitch_7f
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 681
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 682
    .local v2, "firstPtrX":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 683
    .local v1, "firstPtrY":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 684
    .local v4, "secondPtrX":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 686
    .local v3, "secondPtrY":F
    sub-float v5, v2, v4

    .line 687
    .local v5, "deltaX":F
    sub-float v6, v1, v3

    .line 688
    .local v6, "deltaY":F
    float-to-double v7, v5

    float-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    .line 690
    .local v7, "distance":D
    iget v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    int-to-double v9, v9

    cmpl-double v9, v7, v9

    if-lez v9, :cond_b0

    .line 691
    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v5, v9

    div-float v9, v6, v9

    invoke-virtual {p1, v10, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 695
    :cond_b0
    const/4 v9, 0x2

    invoke-direct {p0, p1, v9, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 697
    .end local v1    # "firstPtrY":F
    .end local v2    # "firstPtrX":F
    .end local v3    # "secondPtrY":F
    .end local v4    # "secondPtrX":F
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distance":D
    goto :goto_ef

    .line 700
    :cond_b5
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 703
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 704
    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 707
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 708
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 710
    goto :goto_ef

    .line 678
    :pswitch_c5
    goto :goto_ef

    .line 732
    :pswitch_c6
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 734
    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 737
    .local v1, "pointerId":I
    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v1, v4, :cond_e1

    .line 738
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 740
    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 742
    :cond_e1
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 742
    .end local v1    # "pointerId":I
    goto :goto_ef

    .line 657
    :pswitch_e4
    const-string v1, "TouchExplorer"

    const-string v2, "Dragging state can be reached only if two pointers are already down"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 660
    return-void

    .line 745
    :goto_ef
    return-void

    nop

    nop

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_c6
        :pswitch_62
        :pswitch_3f
        :pswitch_3f
        :pswitch_54
        :pswitch_41
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_7f
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 487
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 489
    .local v0, "receivedTracker":Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_13e

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_14a

    goto/16 :goto_149

    .line 531
    :pswitch_f
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v1

    .line 532
    .local v1, "pointerId":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 533
    .local v3, "pointerIndex":I
    shl-int/2addr v2, v1

    .line 534
    .local v2, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x4

    packed-switch v4, :pswitch_data_154

    .line 598
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 601
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 602
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto/16 :goto_af

    .line 552
    :pswitch_34
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 555
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 556
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_6e

    .line 558
    :cond_47
    iget-boolean v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-eqz v4, :cond_6e

    .line 564
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v4

    .line 565
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    .line 566
    .local v4, "deltaX":F
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v6

    .line 567
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v6, v7

    .line 568
    .local v6, "deltaY":F
    float-to-double v7, v4

    float-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    .line 569
    .local v7, "moveDelta":D
    iget v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    int-to-double v9, v9

    cmpg-double v9, v7, v9

    if-gez v9, :cond_6b

    .line 570
    goto :goto_bb

    .line 574
    :cond_6b
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 579
    .end local v4    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "moveDelta":D
    :cond_6e
    :goto_6e
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 580
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 583
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 584
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 585
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 586
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_8e

    .line 590
    :cond_89
    iput v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 591
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 593
    :goto_8e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 594
    goto :goto_bb

    .line 538
    :pswitch_92
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 540
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto :goto_bb

    .line 542
    :cond_a0
    iget-boolean v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-eqz v4, :cond_bb

    .line 543
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    .line 544
    const/4 v4, 0x7

    invoke-direct {p0, p1, v4, v2, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_bb

    .line 606
    :cond_ac
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 610
    :goto_af
    iput v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 611
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 612
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 616
    .end local v1    # "pointerId":I
    .end local v2    # "pointerIdBits":I
    .end local v3    # "pointerIndex":I
    :cond_bb
    :goto_bb
    goto/16 :goto_149

    .line 618
    :pswitch_bd
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 620
    .restart local v1    # "pointerId":I
    shl-int/2addr v2, v1

    .line 622
    .restart local v2    # "pointerIdBits":I
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 624
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v3, p1, v2, p3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;II)V

    goto :goto_dc

    .line 627
    :cond_d9
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 630
    :goto_dc
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v3

    if-nez v3, :cond_149

    .line 631
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .end local v1    # "pointerId":I
    .end local v2    # "pointerIdBits":I
    goto :goto_149

    .line 491
    :pswitch_ea
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    .line 493
    const/high16 v1, 0x100000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 498
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 499
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 501
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 502
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 505
    :cond_10b
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_118

    .line 506
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 509
    :cond_118
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->firstTapDetected()Z

    move-result v1

    if-nez v1, :cond_149

    iget-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-nez v1, :cond_149

    .line 510
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v1

    if-nez v1, :cond_138

    .line 513
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v1

    .line 514
    .restart local v1    # "pointerId":I
    shl-int v3, v2, v1

    .line 515
    .local v3, "pointerIdBits":I
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v4, p1, v2, v3, p3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;ZII)V

    .line 517
    .end local v1    # "pointerId":I
    .end local v3    # "pointerIdBits":I
    goto :goto_149

    .line 519
    :cond_138
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto :goto_149

    .line 527
    :cond_13e
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 528
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 529
    nop

    .line 636
    :cond_149
    :goto_149
    return-void

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_ea
        :pswitch_bd
        :pswitch_f
    .end packed-switch

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_92
        :pswitch_34
    .end packed-switch
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .registers 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1055
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 1057
    .local v2, "receivedTracker":Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 1058
    .local v13, "firstPtrX":F
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 1059
    .local v14, "firstPtrY":F
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 1060
    .local v15, "secondPtrX":F
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    .line 1062
    .local v16, "secondPtrY":F
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v17

    .line 1063
    .local v17, "firstPtrDownX":F
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    .line 1064
    .local v3, "firstPtrDownY":F
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v18

    .line 1065
    .local v18, "secondPtrDownX":F
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v19

    .line 1067
    .local v19, "secondPtrDownY":F
    const v12, 0x3f067b80

    move/from16 v4, v17

    move v5, v3

    move/from16 v6, v18

    move/from16 v7, v19

    move v8, v13

    move v9, v14

    move v10, v15

    move/from16 v11, v16

    invoke-static/range {v4 .. v12}, Lcom/android/server/accessibility/GestureUtils;->isDraggingGesture(FFFFFFFFF)Z

    move-result v4

    return v4
.end method

.method private offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .registers 28
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 990
    move/from16 v2, p3

    if-nez v1, :cond_b

    if-nez v2, :cond_b

    .line 991
    return-object v0

    .line 993
    :cond_b
    move-object/from16 v3, p0

    iget v4, v3, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 994
    .local v4, "remappedIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 995
    .local v5, "pointerCount":I
    invoke-static {v5}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v22

    .line 996
    .local v22, "props":[Landroid/view/MotionEvent$PointerProperties;
    invoke-static {v5}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v23

    .line 997
    .local v23, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_20
    if-ge v6, v5, :cond_41

    .line 998
    aget-object v7, v22, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 999
    aget-object v7, v23, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1000
    if-ne v6, v4, :cond_3e

    .line 1001
    aget-object v7, v23, v6

    iget v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    int-to-float v9, v1

    add-float/2addr v8, v9

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1002
    aget-object v7, v23, v6

    iget v8, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-float v9, v2

    add-float/2addr v8, v9

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 997
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 1005
    .end local v6    # "i":I
    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    .line 1006
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 1007
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    .line 1008
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    .line 1009
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v21

    .line 1005
    move-object/from16 v12, v22

    move-object/from16 v13, v23

    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    return-object v6
.end method

.method private sendAccessibilityEvent(I)V
    .registers 5
    .param p1, "type"    # I

    .line 807
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 808
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 809
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 810
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 811
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 812
    const/16 v2, 0x200

    if-eq p1, v2, :cond_29

    const/16 v2, 0x400

    if-eq p1, v2, :cond_25

    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_2d

    .line 817
    .restart local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_25
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_2d

    .line 814
    .restart local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_29
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    .line 815
    nop

    .line 821
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2d
    :goto_2d
    return-void
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    .registers 8
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .param p3, "targetAccessibilityFocus"    # Z

    .line 912
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 913
    .local v0, "pointerId":I
    const/4 v1, 0x1

    shl-int v2, v1, v0

    .line 914
    .local v2, "pointerIdBits":I
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 915
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 916
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 917
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 918
    return-void
.end method

.method private sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .registers 10
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 831
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 834
    .local v0, "injectedPointers":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    const/4 v1, 0x0

    .line 835
    .local v1, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 836
    .local v2, "pointerCount":I
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "pointerIdBits":I
    :goto_a
    if-ge v1, v2, :cond_23

    .line 837
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 839
    .local v5, "pointerId":I
    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_20

    .line 840
    const/4 v6, 0x1

    shl-int/2addr v6, v5

    or-int/2addr v4, v6

    .line 841
    invoke-direct {p0, v3, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v6

    .line 842
    .local v6, "action":I
    invoke-direct {p0, p1, v6, v4, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 836
    .end local v5    # "pointerId":I
    .end local v6    # "action":I
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 845
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method private sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .registers 6
    .param p1, "policyFlags"    # I

    .line 854
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 855
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_24

    .line 856
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 857
    .local v1, "pointerIdBits":I
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v3

    if-nez v3, :cond_21

    .line 858
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 860
    :cond_21
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 862
    .end local v1    # "pointerIdBits":I
    :cond_24
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .registers 10
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    .line 930
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, "event":Landroid/view/MotionEvent;
    const/4 v1, -0x1

    if-ne p3, v1, :cond_9

    .line 934
    move-object v0, p1

    goto :goto_f

    .line 937
    :cond_9
    :try_start_9
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_d} :catch_42

    move-object v0, v1

    .line 941
    nop

    .line 943
    :goto_f
    if-nez p2, :cond_19

    .line 944
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_22

    .line 946
    :cond_19
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 955
    :goto_22
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    if-ltz v1, :cond_30

    .line 956
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object v0

    .line 966
    :cond_30
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr p4, v1

    .line 970
    const/4 v1, 0x0

    invoke-super {p0, v0, v1, p4}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 972
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 974
    if-eq v0, p1, :cond_41

    .line 975
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 977
    :cond_41
    return-void

    .line 938
    :catch_42
    move-exception v1

    .line 939
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "TouchExplorer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMotionEvent: Failed to split motion event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return-void
.end method

.method private sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .registers 5
    .param p1, "policyFlags"    # I

    .line 871
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 872
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1e

    .line 873
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 874
    .local v1, "pointerIdBits":I
    const/16 v2, 0x200

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 875
    const/16 v2, 0x9

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 877
    .end local v1    # "pointerIdBits":I
    :cond_1e
    return-void
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .registers 10
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 887
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 888
    .local v0, "injectedTracked":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    const/4 v1, 0x0

    .line 889
    .local v1, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 890
    .local v2, "pointerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_23

    .line 891
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 893
    .local v4, "pointerId":I
    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v5

    if-nez v5, :cond_15

    .line 894
    goto :goto_20

    .line 896
    :cond_15
    const/4 v5, 0x1

    shl-int v6, v5, v4

    or-int/2addr v1, v6

    .line 897
    invoke-direct {p0, v5, v3}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v5

    .line 898
    .local v5, "action":I
    invoke-direct {p0, p1, v5, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 890
    .end local v4    # "pointerId":I
    .end local v5    # "action":I
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 900
    .end local v3    # "i":I
    :cond_23
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 3
    .param p1, "inputSource"    # I

    .line 196
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_7

    .line 197
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    .line 199
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->clearEvents(I)V

    .line 200
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 305
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 309
    .local v0, "eventType":I
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    const/16 v2, 0x100

    if-eqz v1, :cond_1a

    if-ne v0, v2, :cond_1a

    .line 311
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 312
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 317
    :cond_1a
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_2e

    if-ne v0, v2, :cond_2e

    .line 319
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 320
    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 325
    :cond_2e
    const/16 v1, 0x20

    if-eq v0, v1, :cond_45

    const/16 v1, 0x80

    if-eq v0, v1, :cond_3e

    if-eq v0, v2, :cond_3e

    const v1, 0x8000

    if-eq v0, v1, :cond_45

    goto :goto_60

    .line 336
    :cond_3e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    goto :goto_60

    .line 328
    :cond_45
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    # getter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$100(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_5c

    .line 329
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    # getter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$100(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 330
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$102(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 332
    :cond_5c
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    .line 333
    nop

    .line 339
    :goto_60
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 340
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 204
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    .line 205
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)Z
    .registers 29
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 377
    iget v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_b

    .line 378
    return v3

    .line 382
    :cond_b
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 383
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 385
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 386
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 388
    :cond_22
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 389
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 393
    :cond_2f
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->performActionOnAccessibilityFocusedItem(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 395
    return v4

    .line 397
    :cond_3a
    const-string v2, "TouchExplorer"

    const-string v5, "ACTION_CLICK failed. Dispatching motion events to simulate click."

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 400
    .local v2, "pointerIndex":I
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 402
    .local v5, "pointerId":I
    iget-object v6, v0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 403
    .local v6, "clickLocation":Landroid/graphics/Point;
    invoke-direct {v0, v6}, Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v7

    .line 404
    .local v7, "result":I
    if-nez v7, :cond_52

    .line 407
    return v4

    .line 411
    :cond_52
    new-array v15, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 412
    .local v15, "properties":[Landroid/view/MotionEvent$PointerProperties;
    new-instance v8, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v8, v15, v3

    .line 413
    aget-object v8, v15, v3

    invoke-virtual {v1, v2, v8}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 414
    new-array v14, v4, [Landroid/view/MotionEvent$PointerCoords;

    .line 415
    .local v14, "coords":[Landroid/view/MotionEvent$PointerCoords;
    new-instance v8, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v8, v14, v3

    .line 416
    aget-object v8, v14, v3

    iget v9, v6, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iput v9, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 417
    aget-object v8, v14, v3

    iget v9, v6, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iput v9, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v20

    const/16 v21, 0x0

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v23

    .line 418
    move-object/from16 v24, v14

    move-object v14, v15

    .end local v14    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .local v24, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v25, v15

    move-object/from16 v15, v24

    .end local v15    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .local v25, "properties":[Landroid/view/MotionEvent$PointerProperties;
    invoke-static/range {v8 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v8

    .line 422
    .local v8, "click_event":Landroid/view/MotionEvent;
    if-ne v7, v4, :cond_a6

    move v3, v4

    nop

    .line 423
    .local v3, "targetAccessibilityFocus":Z
    :cond_a6
    move/from16 v9, p2

    invoke-direct {v0, v8, v9, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V

    .line 424
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 425
    return v4
.end method

.method public onDoubleTapAndHold(Landroid/view/MotionEvent;I)V
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 345
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 346
    return-void

    .line 350
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 351
    return-void

    .line 354
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 355
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 357
    .local v1, "pointerId":I
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 358
    .local v2, "clickLocation":Landroid/graphics/Point;
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v3

    .line 360
    .local v3, "result":I
    if-nez v3, :cond_24

    .line 361
    return-void

    .line 364
    :cond_24
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 365
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    .line 366
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    .line 368
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 370
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 372
    return-void
.end method

.method public onGestureCancelled(Landroid/view/MotionEvent;I)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 457
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_a

    .line 458
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->endGestureDetection()V

    .line 459
    return v1

    .line 460
    :cond_a
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    if-ne v0, v1, :cond_31

    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_31

    .line 463
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    .line 464
    .local v0, "pointerId":I
    shl-int v2, v1, v0

    .line 468
    .local v2, "pointerIdBits":I
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    .line 469
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    .line 470
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 471
    const/4 v3, 0x7

    invoke-direct {p0, p1, v3, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 472
    return v1

    .line 475
    .end local v0    # "pointerId":I
    .end local v2    # "pointerIdBits":I
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public onGestureCompleted(I)Z
    .registers 4
    .param p1, "gestureId"    # I

    .line 444
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    .line 445
    const/4 v0, 0x0

    return v0

    .line 448
    :cond_7
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->endGestureDetection()V

    .line 450
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public onGestureStarted()Z
    .registers 2

    .line 432
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 433
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 434
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 435
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    .line 438
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 258
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 259
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 260
    return-void

    .line 269
    :cond_c
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->onMotionEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 276
    return-void

    .line 279
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    .line 280
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 281
    return-void

    .line 284
    :cond_25
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_54

    .line 298
    :pswitch_2a
    const-string v0, "TouchExplorer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto :goto_53

    .line 296
    :pswitch_46
    goto :goto_53

    .line 292
    :pswitch_47
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    .line 293
    goto :goto_53

    .line 289
    :pswitch_4b
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    .line 290
    goto :goto_53

    .line 286
    :pswitch_4f
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 287
    nop

    .line 301
    :goto_53
    return-void

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_4b
        :pswitch_2a
        :pswitch_47
        :pswitch_46
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1315
    const-string v0, "TouchExplorer"

    return-object v0
.end method
