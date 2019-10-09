.class Lcom/android/server/wm/TaskSnapshotSurface$Window;
.super Lcom/android/internal/view/BaseIWindow;
.source "TaskSnapshotSurface.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Window"
.end annotation


# instance fields
.field private mOuter:Lcom/android/server/wm/TaskSnapshotSurface;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 434
    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    return-void
.end method


# virtual methods
.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V
    .registers 19
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p9, "backDropFrame"    # Landroid/graphics/Rect;
    .param p10, "forceLayout"    # Z
    .param p11, "alwaysConsumeNavBar"    # Z
    .param p12, "displayId"    # I
    .param p13, "displayCutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;

    move-object v0, p0

    .line 448
    if-eqz p8, :cond_26

    iget-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mOuter:Lcom/android/server/wm/TaskSnapshotSurface;

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mOuter:Lcom/android/server/wm/TaskSnapshotSurface;

    .line 449
    # getter for: Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I
    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotSurface;->access$300(Lcom/android/server/wm/TaskSnapshotSurface;)I

    move-result v1

    .line 450
    invoke-virtual {p8}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_26

    .line 455
    # getter for: Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/wm/TaskSnapshotSurface;->access$400()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mOuter:Lcom/android/server/wm/TaskSnapshotSurface;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;

    invoke-direct {v3, v2}, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;-><init>(Lcom/android/server/wm/TaskSnapshotSurface;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    :cond_26
    if-eqz p7, :cond_36

    .line 458
    # getter for: Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/wm/TaskSnapshotSurface;->access$400()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mOuter:Lcom/android/server/wm/TaskSnapshotSurface;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 460
    :cond_36
    return-void
.end method

.method public setOuter(Lcom/android/server/wm/TaskSnapshotSurface;)V
    .registers 2
    .param p1, "outer"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 439
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mOuter:Lcom/android/server/wm/TaskSnapshotSurface;

    .line 440
    return-void
.end method
