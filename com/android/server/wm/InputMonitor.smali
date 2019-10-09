.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;,
        Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;
    }
.end annotation


# instance fields
.field private mAddGestureInputConsumerHandle:Z

.field private mAddInputConsumerHandle:Z

.field private mAddPipInputConsumerHandle:Z

.field private mAddRecentsAnimationInputConsumerHandle:Z

.field private mAddWallpaperInputConsumerHandle:Z

.field private mDisableWallpaperTouchEvents:Z

.field private mFocusedInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field private final mInputConsumers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/InputConsumerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputFreezeReason:Ljava/lang/String;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 95
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    .line 96
    new-instance v1, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    .line 136
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 137
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p1, "x1"    # Lcom/android/server/input/InputWindowHandle;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/InputMonitor;)[Lcom/android/server/input/InputWindowHandle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/input/InputWindowHandle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mFocusedInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/InputMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 63
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/InputMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 63
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mAddInputConsumerHandle:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wm/InputMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mAddInputConsumerHandle:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wm/InputMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 63
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mAddPipInputConsumerHandle:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/InputMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mAddPipInputConsumerHandle:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/InputMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 63
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mAddWallpaperInputConsumerHandle:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/InputMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mAddWallpaperInputConsumerHandle:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/InputMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 63
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mAddRecentsAnimationInputConsumerHandle:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/InputMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mAddRecentsAnimationInputConsumerHandle:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/InputMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 63
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mAddGestureInputConsumerHandle:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wm/InputMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mAddGestureInputConsumerHandle:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/InputMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 63
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wm/InputMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "consumer"    # Lcom/android/server/wm/InputConsumerImpl;

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {p2}, Lcom/android/server/wm/InputConsumerImpl;->linkToDeathRecipient()V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 143
    return-void
.end method

.method private addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;)V
    .registers 5
    .param p1, "windowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_a

    .line 307
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 309
    :cond_a
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1f

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 313
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 314
    return-void
.end method

.method private clearInputWindowHandlesLw()V
    .registers 4

    .line 361
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object v1, v0, v2

    goto :goto_0

    .line 364
    :cond_10
    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mFocusedInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 365
    return-void
.end method

.method private disposeInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)Z
    .registers 3
    .param p1, "consumer"    # Lcom/android/server/wm/InputConsumerImpl;

    .line 154
    if-eqz p1, :cond_7

    .line 155
    invoke-virtual {p1}, Lcom/android/server/wm/InputConsumerImpl;->disposeChannelsLw()V

    .line 156
    const/4 v0, 0x1

    return v0

    .line 158
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private updateInputDispatchModeLw()V
    .registers 4

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 604
    return-void
.end method


# virtual methods
.method addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .registers 11
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;
    .param p3, "flags"    # I
    .param p4, "type"    # I
    .param p5, "isVisible"    # Z
    .param p6, "hasFocus"    # Z
    .param p7, "hasWallpaper"    # Z

    .line 320
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 321
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, v0, p3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;I)I

    move-result p3

    .line 322
    iput p3, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 323
    iput p4, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 324
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 325
    iput-boolean p5, p1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 326
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 327
    iput-boolean p6, p1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 328
    iput-boolean p7, p1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 329
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_2b

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    iput-boolean v0, p1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 330
    iget v0, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 331
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 332
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 333
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 335
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 336
    .local v0, "frame":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 337
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 338
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 339
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 341
    iget v1, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_64

    .line 345
    iget v1, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v2, v1

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_66

    .line 347
    :cond_64
    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 354
    :goto_66
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;)V

    .line 355
    if-eqz p6, :cond_6d

    .line 356
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mFocusedInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 358
    :cond_6d
    return-void
.end method

.method createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
    .registers 13
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputEventReceiverFactory"    # Landroid/view/InputEventReceiver$Factory;

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 178
    new-instance v0, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 179
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/InputMonitor;Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;ILandroid/os/UserHandle;)V

    .line 181
    .local v0, "consumer":Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/InputMonitor;->addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V

    .line 182
    return-object v0

    .line 175
    .end local v0    # "consumer":Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing input consumer found with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputChannel"    # Landroid/view/InputChannel;
    .param p4, "clientPid"    # I
    .param p5, "clientUser"    # Landroid/os/UserHandle;

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 191
    new-instance v0, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/InputConsumerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V

    .line 193
    .local v0, "consumer":Lcom/android/server/wm/InputConsumerImpl;
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x3d13fc73

    const/4 v4, 0x1

    if-eq v2, v3, :cond_31

    const v3, 0x5463dca8

    if-eq v2, v3, :cond_26

    goto :goto_3b

    :cond_26
    const-string/jumbo v2, "wallpaper_input_consumer"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v1, 0x0

    goto :goto_3b

    :cond_31
    const-string/jumbo v2, "pip_input_consumer"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    move v1, v4

    :cond_3b
    :goto_3b
    packed-switch v1, :pswitch_data_68

    goto :goto_4d

    .line 200
    :pswitch_3f
    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v2, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    goto :goto_4d

    .line 195
    :pswitch_48
    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v4, v1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 196
    nop

    .line 203
    :goto_4d
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/InputMonitor;->addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V

    .line 204
    return-void

    .line 188
    .end local v0    # "consumer":Lcom/android/server/wm/InputConsumerImpl;
    :cond_51
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing input consumer found with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_48
        :pswitch_3f
    .end packed-switch
.end method

.method destroyInputConsumer(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InputConsumerImpl;

    invoke-direct {p0, v0}, Lcom/android/server/wm/InputMonitor;->disposeInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 148
    return v0

    .line 150
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 6
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 492
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 493
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    :goto_8
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->dispatchUnhandledKey(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mInputFreezeReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 611
    .local v0, "inputConsumerKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InputConsumers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 614
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/wm/InputConsumerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_42

    .line 617
    :cond_5a
    return-void
.end method

.method public freezeInputDispatchingLw()V
    .registers 2

    .line 565
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_11

    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 573
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    .line 575
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 577
    :cond_11
    return-void
.end method

.method getInputConsumer(Ljava/lang/String;I)Lcom/android/server/wm/InputConsumerImpl;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 163
    if-nez p2, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InputConsumerImpl;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getPointerLayer()I
    .registers 3

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .registers 7
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 483
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 484
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    :goto_8
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    return-wide v1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method layoutInputConsumers(II)V
    .registers 5
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/InputConsumerImpl;->layout(II)V

    .line 167
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 170
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .registers 13
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v1, 0x0

    .line 235
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 236
    .local v2, "aboveSystem":Z
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 237
    if-eqz p2, :cond_17

    .line 238
    iget-object v4, p2, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wm/WindowState;

    move-object v1, v4

    .line 239
    if-eqz v1, :cond_17

    .line 240
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object v0, v4

    .line 243
    :cond_17
    if-nez v0, :cond_20

    if-eqz p1, :cond_20

    .line 244
    iget-object v4, p1, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    move-object v0, v4

    .line 247
    :cond_20
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_78

    .line 248
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Input event dispatching timed out sending to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 249
    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 248
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object p3, v6

    .line 256
    iget-object v6, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v7, 0x7f6

    iget-boolean v8, v1, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    invoke-interface {v6, v7, v8}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v6

    .line 258
    .local v6, "systemAlertLayer":I
    iget v7, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v7, v6, :cond_75

    move v7, v5

    goto :goto_76

    :cond_75
    move v7, v4

    :goto_76
    move v2, v7

    .line 259
    .end local v6    # "systemAlertLayer":I
    goto :goto_c8

    :cond_78
    if-eqz v0, :cond_b2

    .line 260
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Input event dispatching timed out sending to application "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".  Reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object p3, v6

    goto :goto_c8

    .line 266
    :cond_b2
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Input event dispatching timed out .  Reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_c8
    iget-object v6, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v0, v1, p3}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 271
    monitor-exit v3
    :try_end_ce
    .catchall {:try_start_8 .. :try_end_ce} :catchall_116

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 274
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p3}, Landroid/app/ActivityManagerInternal;->saveANRState(Ljava/lang/String;)V

    .line 276
    const-wide/16 v6, 0x0

    if-eqz v0, :cond_fc

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v3, :cond_fc

    .line 279
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v3

    .line 280
    .local v3, "controller":Lcom/android/server/wm/AppWindowContainerController;
    if-eqz v3, :cond_f6

    .line 282
    if-eqz v1, :cond_ed

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mPid:I

    goto :goto_ee

    :cond_ed
    const/4 v8, -0x1

    .line 281
    :goto_ee
    invoke-virtual {v3, p3, v8}, Lcom/android/server/wm/AppWindowContainerController;->keyDispatchingTimedOut(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_f6

    move v4, v5

    nop

    .line 283
    .local v4, "abort":Z
    :cond_f6
    if-nez v4, :cond_fb

    .line 286
    iget-wide v5, v0, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    return-wide v5

    .line 288
    .end local v3    # "controller":Lcom/android/server/wm/AppWindowContainerController;
    .end local v4    # "abort":Z
    :cond_fb
    goto :goto_115

    :cond_fc
    if-eqz v1, :cond_115

    .line 292
    :try_start_fe
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v3, v4, v2, p3}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v3
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_fe .. :try_end_10a} :catch_114

    .line 294
    .local v3, "timeout":J
    cmp-long v5, v3, v6

    if-ltz v5, :cond_113

    .line 297
    const-wide/32 v5, 0xf4240

    mul-long/2addr v5, v3

    return-wide v5

    .line 300
    .end local v3    # "timeout":J
    :cond_113
    goto :goto_115

    .line 299
    :catch_114
    move-exception v3

    .line 302
    :cond_115
    :goto_115
    return-wide v6

    .line 271
    :catchall_116
    move-exception v4

    :try_start_117
    monitor-exit v3
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_116

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 460
    return-void
.end method

.method public notifyConfigurationChanged()V
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    .line 429
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v1, :cond_15

    .line 431
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    .line 432
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 434
    :cond_15
    monitor-exit v0

    .line 435
    return-void

    .line 434
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .registers 7
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .line 212
    if-nez p1, :cond_3

    .line 213
    return-void

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 217
    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 218
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_2a

    .line 219
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 222
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 223
    return-void

    .line 222
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 453
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 454
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .line 543
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_a

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 549
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 551
    :cond_a
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .line 554
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_b

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 560
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 562
    :cond_b
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 592
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_9

    .line 597
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 598
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 600
    :cond_9
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5
    .param p1, "newApp"    # Lcom/android/server/wm/AppWindowToken;

    .line 531
    if-nez p1, :cond_b

    .line 532
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_1e

    .line 534
    :cond_b
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 535
    .local v0, "handle":Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 536
    iget-wide v1, p1, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    iput-wide v1, v0, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 538
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    .line 540
    .end local v0    # "handle":Lcom/android/server/input/InputApplicationHandle;
    :goto_1e
    return-void
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .registers 5
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"    # Z

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_1b

    .line 513
    const/4 v0, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 517
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 520
    :cond_11
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 521
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 523
    if-eqz p2, :cond_1b

    .line 524
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 527
    :cond_1b
    return-void
.end method

.method setUpdateInputWindowsNeededLw()V
    .registers 2

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 369
    return-void
.end method

.method public thawInputDispatchingLw()V
    .registers 2

    .line 580
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_d

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    .line 587
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 589
    :cond_d
    return-void
.end method

.method updateInputWindowsLw(Z)V
    .registers 7
    .param p1, "force"    # Z

    .line 373
    if-nez p1, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez v0, :cond_7

    .line 374
    return-void

    .line 376
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v0

    .line 388
    .local v0, "inDrag":Z
    if-eqz v0, :cond_29

    .line 392
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 393
    invoke-virtual {v1}, Lcom/android/server/wm/DragDropController;->getInputWindowHandleLocked()Lcom/android/server/input/InputWindowHandle;

    move-result-object v1

    .line 394
    .local v1, "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v1, :cond_22

    .line 395
    invoke-direct {p0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;)V

    goto :goto_29

    .line 397
    :cond_22
    const-string v2, "WindowManager"

    const-string v3, "Drag is in progress but there is no drag window handle."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v1    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskPositioningController;->isPositioningLocked()Z

    move-result v1

    .line 403
    .local v1, "inPositioning":Z
    if-eqz v1, :cond_48

    .line 407
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 408
    invoke-virtual {v2}, Lcom/android/server/wm/TaskPositioningController;->getDragWindowHandleLocked()Lcom/android/server/input/InputWindowHandle;

    move-result-object v2

    .line 409
    .local v2, "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v2, :cond_41

    .line 410
    invoke-direct {p0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;)V

    goto :goto_48

    .line 412
    :cond_41
    const-string v3, "WindowManager"

    const-string v4, "Repositioning is in progress but there is no drag window handle."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v2    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_48
    :goto_48
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    # invokes: Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->updateInputWindows(Z)V
    invoke-static {v2, v0}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->access$100(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V

    .line 421
    return-void
.end method

.method public waitForInputDevicesReady(J)Z
    .registers 5
    .param p1, "timeoutMillis"    # J

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_12

    if-nez v1, :cond_e

    .line 442
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_12

    .line 444
    goto :goto_e

    .line 443
    :catch_d
    move-exception v1

    .line 446
    :cond_e
    :goto_e
    :try_start_e
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    monitor-exit v0

    return v1

    .line 447
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v1
.end method
