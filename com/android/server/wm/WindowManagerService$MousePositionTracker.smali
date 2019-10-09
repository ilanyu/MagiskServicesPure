.class Lcom/android/server/wm/WindowManagerService$MousePositionTracker;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MousePositionTracker"
.end annotation


# instance fields
.field private mLatestEventWasMouse:Z

.field private mLatestMouseX:F

.field private mLatestMouseY:F


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 7461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/wm/WindowManagerService$1;

    .line 7461
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    .line 7461
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    .line 7461
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    .line 7461
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    return v0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 7476
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(FF)V

    goto :goto_19

    .line 7479
    :cond_14
    monitor-enter p0

    .line 7480
    const/4 v0, 0x0

    :try_start_16
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 7481
    monitor-exit p0

    .line 7483
    :goto_19
    return-void

    .line 7481
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method updatePosition(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 7467
    monitor-enter p0

    .line 7468
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 7469
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    .line 7470
    iput p2, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    .line 7471
    monitor-exit p0

    .line 7472
    return-void

    .line 7471
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v0
.end method
