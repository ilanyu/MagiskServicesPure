.class Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Landroid/view/InputFilter;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final FEATURES_AFFECTING_MOTION_EVENTS:I = 0x5b

.field static final FLAG_FEATURE_AUTOCLICK:I = 0x8

.field static final FLAG_FEATURE_CONTROL_SCREEN_MAGNIFIER:I = 0x20

.field static final FLAG_FEATURE_FILTER_KEY_EVENTS:I = 0x4

.field static final FLAG_FEATURE_INJECT_MOTION_EVENTS:I = 0x10

.field static final FLAG_FEATURE_SCREEN_MAGNIFIER:I = 0x1

.field static final FLAG_FEATURE_TOUCH_EXPLORATION:I = 0x2

.field static final FLAG_FEATURE_TRIGGERED_SCREEN_MAGNIFIER:I = 0x40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mContext:Landroid/content/Context;

.field private mEnabledFeatures:I

.field private mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

.field private mInstalled:Z

.field private mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

.field private mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

.field private mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

.field private mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private final mPm:Landroid/os/PowerManager;

.field private final mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

.field private mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

.field private mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 107
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$1;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    .line 160
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 162
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    .line 163
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AccessibilityInputFilter;)Landroid/view/Choreographer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 46
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AccessibilityInputFilter;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;
    .param p1, "x1"    # J

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processBatchedEvents(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AccessibilityInputFilter;)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 46
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 46
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V

    return-void
.end method

.method private addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 3
    .param p1, "handler"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 463
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_a

    .line 464
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {p1, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_d

    .line 466
    :cond_a
    invoke-interface {p1, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 468
    :goto_d
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 469
    return-void
.end method

.method private batchMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 297
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    if-nez v0, :cond_e

    .line 298
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 299
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V

    .line 300
    return-void

    .line 302
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->addBatch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 303
    return-void

    .line 305
    :cond_19
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    move-result-object v0

    .line 306
    .local v0, "holder":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 307
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 308
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 309
    return-void
.end method

.method private disableFeatures()V
    .registers 3

    .line 474
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processBatchedEvents(J)V

    .line 475
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 476
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjector(Lcom/android/server/accessibility/MotionEventInjector;)V

    .line 477
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->onDestroy()V

    .line 478
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    .line 480
    :cond_19
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    if-eqz v0, :cond_24

    .line 481
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController;->onDestroy()V

    .line 482
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 484
    :cond_24
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    if-eqz v0, :cond_2f

    .line 485
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->onDestroy()V

    .line 486
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    .line 488
    :cond_2f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    if-eqz v0, :cond_3a

    .line 489
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->onDestroy()V

    .line 490
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 492
    :cond_3a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    if-eqz v0, :cond_45

    .line 493
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    invoke-virtual {v0}, Lcom/android/server/accessibility/KeyboardInterceptor;->onDestroy()V

    .line 494
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 497
    :cond_45
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 498
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamState()V

    .line 499
    return-void
.end method

.method private enableFeatures()V
    .registers 6

    .line 418
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamState()V

    .line 420
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_19

    .line 421
    new-instance v0, Lcom/android/server/accessibility/AutoclickController;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/AutoclickController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 422
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 425
    :cond_19
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2f

    .line 426
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    .line 427
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 430
    :cond_2f
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    if-nez v0, :cond_41

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/2addr v0, v1

    if-nez v0, :cond_41

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_66

    .line 433
    :cond_41
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_49

    move v0, v1

    goto :goto_4a

    :cond_49
    move v0, v2

    .line 435
    .local v0, "detectControlGestures":Z
    :goto_4a
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_51

    goto :goto_52

    :cond_51
    move v1, v2

    .line 437
    .local v1, "triggerable":Z
    :goto_52
    new-instance v2, Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 438
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;ZZ)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 440
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 443
    .end local v0    # "detectControlGestures":Z
    .end local v1    # "triggerable":Z
    :cond_66
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_85

    .line 444
    new-instance v0, Lcom/android/server/accessibility/MotionEventInjector;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/MotionEventInjector;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    .line 445
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 446
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjector(Lcom/android/server/accessibility/MotionEventInjector;)V

    .line 449
    :cond_85
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a1

    .line 450
    new-instance v0, Lcom/android/server/accessibility/KeyboardInterceptor;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-class v2, Lcom/android/server/policy/WindowManagerPolicy;

    .line 451
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/KeyboardInterceptor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/policy/WindowManagerPolicy;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 452
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 454
    :cond_a1
    return-void
.end method

.method private getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 243
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_30

    .line 244
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 245
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_17

    .line 246
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 248
    :cond_17
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 250
    :cond_1a
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 251
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_2d

    .line 252
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 254
    :cond_2d
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 256
    :cond_30
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_4a

    .line 257
    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 258
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_47

    .line 259
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 261
    :cond_47
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 264
    :cond_4a
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 342
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1a

    .line 343
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 344
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 345
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 346
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 350
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_1a
    return-void
.end method

.method private processBatchedEvents(J)V
    .registers 7
    .param p1, "frameNanos"    # J

    .line 312
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 313
    .local v0, "current":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    if-nez v0, :cond_5

    .line 314
    return-void

    .line 316
    :cond_5
    :goto_5
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    if-eqz v1, :cond_c

    .line 317
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    goto :goto_5

    .line 320
    :cond_c
    :goto_c
    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 321
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 322
    goto :goto_1f

    .line 324
    :cond_12
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_20

    .line 326
    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 327
    nop

    .line 334
    :goto_1f
    return-void

    .line 329
    :cond_20
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    iget v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->policyFlags:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->handleMotionEvent(Landroid/view/MotionEvent;I)V

    .line 330
    move-object v1, v0

    .line 331
    .local v1, "prior":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 332
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->recycle()V

    .line 333
    .end local v1    # "prior":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    goto :goto_c
.end method

.method private processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V
    .registers 5
    .param p1, "state"    # Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 281
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 282
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 283
    return-void

    .line 285
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 286
    return-void
.end method

.method private processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "state"    # Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 268
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessScroll()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 269
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 270
    return-void

    .line 273
    :cond_12
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 274
    return-void

    .line 277
    :cond_19
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->batchMotionEvent(Landroid/view/MotionEvent;I)V

    .line 278
    return-void
.end method

.method private scheduleProcessBatchedEvents()V
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 291
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 2
    .param p1, "inputSource"    # I

    .line 383
    return-void
.end method

.method public getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 2

    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method notifyAccessibilityButtonClicked()V
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    if-eqz v0, :cond_9

    .line 411
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->notifyShortcutTriggered()V

    .line 413
    :cond_9
    return-void
.end method

.method notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 404
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_9

    .line 405
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 407
    :cond_9
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 368
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 516
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 194
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v0, :cond_8

    .line 196
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 197
    return-void

    .line 200
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    move-result-object v0

    .line 201
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    if-nez v0, :cond_12

    .line 202
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 203
    return-void

    .line 206
    :cond_12
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    .line 207
    .local v1, "eventSource":I
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, p2

    if-nez v2, :cond_27

    .line 208
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 209
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v2, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 210
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 211
    return-void

    .line 214
    :cond_27
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->updateDeviceId(I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 215
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v2, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 218
    :cond_36
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->deviceIdValid()Z

    move-result v2

    if-nez v2, :cond_40

    .line 219
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 220
    return-void

    .line 223
    :cond_40
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_55

    .line 224
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x5b

    if-eqz v2, :cond_51

    .line 225
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .line 226
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v0, v2, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V

    .line 227
    return-void

    .line 229
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    :cond_51
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_5f

    .line 231
    :cond_55
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_5f

    .line 232
    move-object v2, p1

    check-cast v2, Landroid/view/KeyEvent;

    .line 233
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, v2, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V

    .line 235
    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    :cond_5f
    :goto_5f
    return-void
.end method

.method public onInstalled()V
    .registers 2

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 172
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 173
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 174
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    .line 175
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 361
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "transformedEvent"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 355
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 356
    return-void
.end method

.method public onUninstalled()V
    .registers 2

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 183
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 184
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 185
    return-void
.end method

.method resetStreamState()V
    .registers 2

    .line 502
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_9

    .line 503
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 505
    :cond_9
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_12

    .line 506
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 508
    :cond_12
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_1b

    .line 509
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 511
    :cond_1b
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1, "sink"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 373
    return-void
.end method

.method setUserAndEnabledFeatures(II)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "enabledFeatures"    # I

    .line 390
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    if-ne v0, p2, :cond_9

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    if-ne v0, p1, :cond_9

    .line 391
    return-void

    .line 393
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_10

    .line 394
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 396
    :cond_10
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 397
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 398
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_1b

    .line 399
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 401
    :cond_1b
    return-void
.end method
