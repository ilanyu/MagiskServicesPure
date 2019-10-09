.class interface abstract Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
.super Ljava/lang/Object;
.source "LocalAnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LocalAnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AnimationSpec"
.end annotation


# virtual methods
.method public abstract apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
.end method

.method public calculateStatusBarTransitionStartTime()J
    .registers 3

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public canSkipFirstFrame()Z
    .registers 2

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getDetachWallpaper()Z
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDuration()J
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public needsEarlyWakeup()Z
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 159
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 160
    .local v0, "token":J
    invoke-interface {p0, p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 162
    return-void
.end method

.method public abstract writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V
.end method
