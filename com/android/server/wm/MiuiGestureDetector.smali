.class public Lcom/android/server/wm/MiuiGestureDetector;
.super Ljava/lang/Object;
.source "MiuiGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MiuiGestureDetector$H;
    }
.end annotation


# static fields
.field private static final CHECK_GAP:I = 0x14

.field private static DEBUG:Z = false

.field private static DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_BOTTOM_EDGE_HEIGHT_STANDARD:F = 4.5f

.field private static final DISTANCE_CANCEL_TO_RECENTS:I = 0x8c

.field private static final DISTANCE_GO_TO_RECENTS:I = 0xa0

.field private static final DISTANCE_LIMIT:I = 0x14

.field public static final GESTURE_READY_THRESHOLD:I = 0x14

.field private static final HOT_SPACE_DEFAULT_HEIGHT:I = 0xd

.field private static final MSG_CHECK_TAIL_DISTANCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiGesturePointerEventListener"

.field public static final WINDOW_SEARCH_RESULT_APP_DIED:I = 0x0

.field public static final WINDOW_SEARCH_RESULT_LENGTH:I = 0x3

.field public static final WINDOW_SEARCH_RESULT_NORMAL:I = 0x2

.field public static final WINDOW_SEARCH_RESULT_NOT_FOUND:I = -0x1

.field public static final WINDOW_SEARCH_RESULT_SPECIAL:I = 0x1

.field private static sCurrentX:I

.field private static sCurrentY:I

.field private static sDownX:I

.field private static sDownY:I

.field private static sFirstTouch:Z

.field private static sGestureController:Lcom/android/server/wm/MiuiGestureController;

.field private static sGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

.field private static sGestureStubWindow:Lcom/android/server/wm/WindowState;

.field private static sHandler:Lcom/android/server/wm/MiuiGestureDetector$H;

.field private static sIsPortrait:Z

.field private static sLastTouchTime:J

.field private static sScreenHeight:I

.field private static sScreenWidth:I

.field private static sTailDistance:D

.field private static sTailX:I

.field private static sTailY:I

.field private static sWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    sget-boolean v0, Lcom/android/server/wm/MiuiGestureController;->DEBUG_DETECT:Z

    sput-boolean v0, Lcom/android/server/wm/MiuiGestureDetector;->DEBUG:Z

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/MiuiGestureDetector;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    .line 40
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string/jumbo v1, "perseus"

    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string v1, "cepheus"

    const v2, 0x40666666    # 3.6f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string v1, "dipper"

    const v2, 0x40cccccd    # 6.4f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Utility class not for instance"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()V
    .registers 0

    .line 30
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->updateTail()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .registers 1

    .line 30
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    return-object v0
.end method

.method static calculateInertia()Landroid/graphics/Point;
    .registers 4

    .line 413
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->updateTail()V

    .line 414
    new-instance v0, Landroid/graphics/Point;

    sget v1, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentX:I

    sget v2, Lcom/android/server/wm/MiuiGestureDetector;->sTailX:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentY:I

    sget v3, Lcom/android/server/wm/MiuiGestureDetector;->sTailY:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method static canGestureBegin()Z
    .registers 1

    .line 128
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->isInHotSpace()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->isForbidGestureLocked()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->checkMistakeTouchLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method static canGestureReady()Z
    .registers 8

    .line 137
    sget v0, Lcom/android/server/wm/MiuiGestureDetector;->sDownY:I

    sget v1, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentY:I

    sub-int/2addr v0, v1

    .line 138
    .local v0, "offset":I
    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_b

    .line 139
    return v1

    .line 141
    :cond_b
    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    sget v6, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentX:I

    sget v7, Lcom/android/server/wm/MiuiGestureDetector;->sDownX:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    .line 142
    .local v2, "angle":D
    cmpg-double v4, v2, v4

    if-gez v4, :cond_39

    .line 143
    const-string v4, "MiuiGesturePointerEventListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gesture cancel with angle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v1

    .line 146
    :cond_39
    const/4 v1, 0x1

    return v1
.end method

.method private static checkMistakeTouchLocked()Z
    .registers 9

    .line 177
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->isMistakeTouch()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 178
    return v1

    .line 180
    :cond_a
    sget-boolean v0, Lcom/android/server/wm/MiuiGestureDetector;->sIsPortrait:Z

    if-nez v0, :cond_43

    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->isFullScreenModeLocked()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 181
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->isActiveRegion()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 183
    .local v3, "now":J
    sget-wide v5, Lcom/android/server/wm/MiuiGestureDetector;->sLastTouchTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x7d0

    cmp-long v0, v5, v7

    if-lez v0, :cond_2e

    .line 184
    sput-wide v3, Lcom/android/server/wm/MiuiGestureDetector;->sLastTouchTime:J

    .line 185
    sput-boolean v1, Lcom/android/server/wm/MiuiGestureDetector;->sFirstTouch:Z

    .line 186
    return v2

    .line 188
    :cond_2e
    sput-wide v3, Lcom/android/server/wm/MiuiGestureDetector;->sLastTouchTime:J

    .line 189
    sget-boolean v0, Lcom/android/server/wm/MiuiGestureDetector;->sFirstTouch:Z

    if-nez v0, :cond_37

    .line 190
    sput-boolean v1, Lcom/android/server/wm/MiuiGestureDetector;->sFirstTouch:Z

    .line 191
    return v2

    .line 193
    :cond_37
    sput-boolean v2, Lcom/android/server/wm/MiuiGestureDetector;->sFirstTouch:Z

    .line 194
    return v1

    .line 196
    .end local v3    # "now":J
    :cond_3a
    const-string v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "not in ActiveRegion"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v2

    .line 200
    :cond_43
    return v1
.end method

.method static enableDebug(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 418
    sput-boolean p0, Lcom/android/server/wm/MiuiGestureDetector;->DEBUG:Z

    .line 419
    return-void
.end method

.method private static findGestureStubWindowLocked()V
    .registers 3

    .line 261
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sGestureStubWindow:Lcom/android/server/wm/WindowState;

    .line 262
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/-$$Lambda$MiuiGestureDetector$7UMp7VdAz6e08Rrg-DZuO9Fd8CE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MiuiGestureDetector$7UMp7VdAz6e08Rrg-DZuO9Fd8CE;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 267
    return-void
.end method

.method private static getGestureHotSpaceHeight()I
    .registers 9

    .line 305
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 306
    .local v0, "dpi":I
    int-to-float v1, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41500000    # 13.0f

    mul-float/2addr v2, v1

    .line 307
    .local v2, "height":F
    sget-boolean v1, Lcom/android/server/wm/MiuiGestureDetector;->sIsPortrait:Z

    if-eqz v1, :cond_3d

    .line 308
    sget-object v1, Lcom/android/server/wm/MiuiGestureDetector;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 309
    .local v1, "bottomEdgeHeight":Ljava/lang/Float;
    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x40900000    # 4.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3d

    .line 310
    float-to-double v5, v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v4, v3

    float-to-double v3, v4

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v7

    const-wide v7, 0x400399999999999aL    # 2.45

    div-double/2addr v3, v7

    int-to-double v7, v0

    mul-double/2addr v3, v7

    add-double/2addr v5, v3

    double-to-float v2, v5

    .line 313
    .end local v1    # "bottomEdgeHeight":Ljava/lang/Float;
    :cond_3d
    float-to-int v1, v2

    return v1
.end method

.method static init(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MiuiGesturePointerEventListener;Lcom/android/server/wm/MiuiGestureController;)V
    .registers 5
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "listener"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .param p2, "gestureController"    # Lcom/android/server/wm/MiuiGestureController;

    .line 89
    sput-object p0, Lcom/android/server/wm/MiuiGestureDetector;->sWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 90
    sput-object p1, Lcom/android/server/wm/MiuiGestureDetector;->sGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 91
    sput-object p2, Lcom/android/server/wm/MiuiGestureDetector;->sGestureController:Lcom/android/server/wm/MiuiGestureController;

    .line 92
    new-instance v0, Lcom/android/server/wm/MiuiGestureDetector$H;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/MiuiGestureDetector$H;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sHandler:Lcom/android/server/wm/MiuiGestureDetector$H;

    .line 93
    return-void
.end method

.method private static isActiveRegion()Z
    .registers 4

    .line 280
    sget-boolean v0, Lcom/android/server/wm/MiuiGestureDetector;->sIsPortrait:Z

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 281
    sget v0, Lcom/android/server/wm/MiuiGestureDetector;->sScreenWidth:I

    sget v2, Lcom/android/server/wm/MiuiGestureDetector;->sScreenHeight:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 282
    .local v0, "oriX":I
    sget v2, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentX:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 283
    .local v2, "offsetX":F
    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_20

    sget v3, Lcom/android/server/wm/MiuiGestureDetector;->sScreenHeight:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_20

    const/4 v1, 0x1

    nop

    :cond_20
    return v1

    .line 285
    .end local v0    # "oriX":I
    .end local v2    # "offsetX":F
    :cond_21
    return v1
.end method

.method static isAppLaunchingAndSurfaceShownLocked()I
    .registers 4

    .line 322
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 323
    .local v0, "result":[I
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 324
    sget-object v2, Lcom/android/server/wm/MiuiGestureDetector;->sWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/-$$Lambda$MiuiGestureDetector$CTKeLQHnBHFNTjtep58Ns8N1jfs;

    invoke-direct {v3, v0}, Lcom/android/server/wm/-$$Lambda$MiuiGestureDetector$CTKeLQHnBHFNTjtep58Ns8N1jfs;-><init>([I)V

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 350
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_20

    .line 351
    aget v2, v0, v1

    if-eqz v2, :cond_1d

    .line 352
    return v1

    .line 350
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 355
    .end local v1    # "i":I
    :cond_20
    const/4 v1, -0x1

    return v1
.end method

.method public static isCurrentUser(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 270
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 271
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 270
    :goto_13
    return v0
.end method

.method private static isForbidGestureLocked()Z
    .registers 3

    .line 204
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->isGestureStubWindowInvisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 205
    const-string v0, "MiuiGesturePointerEventListener"

    const-string v2, "ForbidGesture: now GestureStubWindow isn\'t visible"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v1

    .line 209
    :cond_f
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 210
    const-string v0, "MiuiGesturePointerEventListener"

    const-string v2, "ForbidGesture: now KeyguardLocked"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v1

    .line 214
    :cond_21
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iget-object v0, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsStrategy:Lcom/android/server/wm/MiuiGestureStrategy;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiGestureStrategy;->isForbidGesture()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 215
    const-string v0, "MiuiGesturePointerEventListener"

    const-string v2, "ForbidGesture: recents animating"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v1

    .line 219
    :cond_33
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iget-boolean v0, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDuringGoBackHome:Z

    if-eqz v0, :cond_41

    .line 220
    const-string v0, "MiuiGesturePointerEventListener"

    const-string v2, "ForbidGesture: mDuringGoBackHome = true"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return v1

    .line 224
    :cond_41
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->isHomeWindowEnterAnimatingLocked()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 225
    sget-boolean v0, Lcom/android/server/wm/MiuiGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_52

    .line 226
    const-string v0, "MiuiGesturePointerEventListener"

    const-string v2, "ForbidGesture: now home window doing enter animating"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_52
    return v1

    .line 230
    :cond_53
    const/4 v0, 0x0

    return v0
.end method

.method private static isFullScreenModeLocked()Z
    .registers 3

    .line 294
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/-$$Lambda$MiuiGestureDetector$OIH61KVndrm8CU_nDdqfeNqspdM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MiuiGestureDetector$OIH61KVndrm8CU_nDdqfeNqspdM;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method private static isGestureStubWindowInvisible()Z
    .registers 3

    .line 242
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sGestureStubWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_27

    .line 243
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sGestureStubWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureDetector;->isCurrentUser(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 244
    .local v0, "isCurrentUser":Z
    if-nez v0, :cond_14

    .line 245
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->findGestureStubWindowLocked()V

    .line 246
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->isGestureStubWindowInvisible()Z

    move-result v1

    return v1

    .line 249
    :cond_14
    sget-object v1, Lcom/android/server/wm/MiuiGestureDetector;->sGestureStubWindow:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v1, :cond_27

    .line 250
    sget-boolean v1, Lcom/android/server/wm/MiuiGestureDetector;->DEBUG:Z

    if-eqz v1, :cond_25

    .line 251
    const-string v1, "MiuiGesturePointerEventListener"

    const-string v2, "Forbid gesture because the gesture stub isn\'t visible."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_25
    const/4 v1, 0x1

    return v1

    .line 257
    .end local v0    # "isCurrentUser":Z
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method private static isHomeWindowEnterAnimatingLocked()Z
    .registers 3

    .line 234
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/-$$Lambda$MiuiGestureDetector$x53zlRRapHCItnfw3vn17tu8mfc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MiuiGestureDetector$x53zlRRapHCItnfw3vn17tu8mfc;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method private static isInHotSpace()Z
    .registers 3

    .line 167
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->getGestureHotSpaceHeight()I

    move-result v0

    .line 168
    .local v0, "hotSpace":I
    sget v1, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentY:I

    sget v2, Lcom/android/server/wm/MiuiGestureDetector;->sScreenHeight:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_13

    sget v1, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentY:I

    sget v2, Lcom/android/server/wm/MiuiGestureDetector;->sScreenHeight:I

    if-gt v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method static isOverSpeed()Z
    .registers 4

    .line 405
    sget-wide v0, Lcom/android/server/wm/MiuiGestureDetector;->sTailDistance:D

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static isPortrait()Z
    .registers 1

    .line 119
    sget-boolean v0, Lcom/android/server/wm/MiuiGestureDetector;->sIsPortrait:Z

    return v0
.end method

.method static isRightDirection()Z
    .registers 2

    .line 409
    sget v0, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentY:I

    sget v1, Lcom/android/server/wm/MiuiGestureDetector;->sTailY:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static isSpecialWindowVisible()Z
    .registers 5

    .line 359
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 360
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 361
    .local v1, "homeStack":Lcom/android/server/wm/TaskStack;
    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 362
    .local v3, "recentStack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isReallyVisible()Z

    move-result v4

    if-nez v4, :cond_20

    :cond_18
    if-eqz v3, :cond_21

    .line 363
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->isReallyVisible()Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_20
    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    .line 362
    :goto_22
    return v2
.end method

.method static synthetic lambda$findGestureStubWindowLocked$1(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 263
    invoke-static {p0}, Lcom/android/server/wm/MiuiGestureDetector;->isCurrentUser(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 264
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/MiuiGestureController;->tryToSetGestureStubWindow(Lcom/android/server/wm/WindowState;)V

    .line 266
    :cond_b
    return-void
.end method

.method static synthetic lambda$isAppLaunchingAndSurfaceShownLocked$3([ILcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p0, "result"    # [I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 325
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 326
    aput v1, p0, v1

    .line 328
    :cond_9
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_5a

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_5a

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 329
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 330
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v0

    if-eq v0, v2, :cond_5a

    .line 331
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v0

    if-eq v0, v3, :cond_5a

    .line 332
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v0

    if-eq v0, v2, :cond_5a

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v4, :cond_48

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v3, :cond_48

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v2, :cond_5a

    .line 336
    :cond_48
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v0

    if-ne v0, v3, :cond_57

    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->isSpecialWindowVisible()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 337
    aput v4, p0, v4

    goto :goto_59

    .line 339
    :cond_57
    aput v4, p0, v3

    .line 341
    :goto_59
    return v4

    .line 342
    :cond_5a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v0

    if-eq v0, v3, :cond_66

    .line 343
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v0

    if-ne v0, v2, :cond_7b

    :cond_66
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_7b

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 344
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mIsDummyVisible:Z

    if-nez v0, :cond_7b

    .line 345
    aput v4, p0, v4

    .line 346
    return v4

    .line 348
    :cond_7b
    return v1
.end method

.method static synthetic lambda$isFullScreenModeLocked$2(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 296
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 295
    :goto_17
    return v0
.end method

.method static synthetic lambda$isHomeWindowEnterAnimatingLocked$0(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 237
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->hasCommittedReparentToAnimationLeash()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_19
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iget-boolean v0, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLoadBackHomeAnimation:Z

    if-eqz v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 235
    :goto_22
    return v0
.end method

.method static onActionDown(IIIIZ)V
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "isPortrait"    # Z

    .line 96
    sput p0, Lcom/android/server/wm/MiuiGestureDetector;->sScreenWidth:I

    .line 97
    sput p1, Lcom/android/server/wm/MiuiGestureDetector;->sScreenHeight:I

    .line 98
    sput p2, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentX:I

    .line 99
    sput p3, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentY:I

    .line 100
    sput p2, Lcom/android/server/wm/MiuiGestureDetector;->sDownX:I

    .line 101
    sput p3, Lcom/android/server/wm/MiuiGestureDetector;->sDownY:I

    .line 102
    sput p2, Lcom/android/server/wm/MiuiGestureDetector;->sTailX:I

    .line 103
    sput p3, Lcom/android/server/wm/MiuiGestureDetector;->sTailY:I

    .line 104
    sput-boolean p4, Lcom/android/server/wm/MiuiGestureDetector;->sIsPortrait:Z

    .line 105
    return-void
.end method

.method static onActionMove(II)V
    .registers 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 108
    sput p0, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentX:I

    .line 109
    sput p1, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentY:I

    .line 110
    return-void
.end method

.method static onActionUp(II)V
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 113
    sput p0, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentX:I

    .line 114
    sput p1, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentY:I

    .line 115
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sHandler:Lcom/android/server/wm/MiuiGestureDetector$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureDetector$H;->removeMessages(I)V

    .line 116
    return-void
.end method

.method static resendTailMessage()V
    .registers 2

    .line 394
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sHandler:Lcom/android/server/wm/MiuiGestureDetector$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureDetector$H;->removeMessages(I)V

    .line 395
    sget-object v0, Lcom/android/server/wm/MiuiGestureDetector;->sHandler:Lcom/android/server/wm/MiuiGestureDetector$H;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureDetector$H;->sendEmptyMessage(I)Z

    .line 396
    return-void
.end method

.method static resetTail()V
    .registers 2

    .line 389
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->resendTailMessage()V

    .line 390
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    sput-wide v0, Lcom/android/server/wm/MiuiGestureDetector;->sTailDistance:D

    .line 391
    return-void
.end method

.method static setGestureStubWindow(Lcom/android/server/wm/WindowState;)V
    .registers 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 158
    sput-object p0, Lcom/android/server/wm/MiuiGestureDetector;->sGestureStubWindow:Lcom/android/server/wm/WindowState;

    .line 159
    return-void
.end method

.method static shouldCancelGoRecents()Z
    .registers 2

    .line 154
    sget v0, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentY:I

    sget v1, Lcom/android/server/wm/MiuiGestureDetector;->sScreenHeight:I

    add-int/lit16 v1, v1, -0x8c

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static shouldGoRecents()Z
    .registers 2

    .line 150
    sget v0, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentY:I

    sget v1, Lcom/android/server/wm/MiuiGestureDetector;->sScreenHeight:I

    add-int/lit16 v1, v1, -0xa0

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static updateTail()V
    .registers 6

    .line 399
    sget v0, Lcom/android/server/wm/MiuiGestureDetector;->sTailX:I

    sget v1, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentX:I

    sget v2, Lcom/android/server/wm/MiuiGestureDetector;->sTailX:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/wm/MiuiGestureDetector;->sTailX:I

    .line 400
    sget v0, Lcom/android/server/wm/MiuiGestureDetector;->sTailY:I

    sget v1, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentY:I

    sget v2, Lcom/android/server/wm/MiuiGestureDetector;->sTailY:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/wm/MiuiGestureDetector;->sTailY:I

    .line 401
    sget v0, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentX:I

    sget v1, Lcom/android/server/wm/MiuiGestureDetector;->sTailX:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget v4, Lcom/android/server/wm/MiuiGestureDetector;->sCurrentY:I

    sget v5, Lcom/android/server/wm/MiuiGestureDetector;->sTailY:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/MiuiGestureDetector;->sTailDistance:D

    .line 402
    return-void
.end method
