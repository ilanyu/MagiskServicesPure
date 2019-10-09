.class final Lcom/android/server/wm/WindowState$MoveAnimationSpec;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MoveAnimationSpec"
.end annotation


# instance fields
.field private final mDuration:J

.field private mFrom:Landroid/graphics/Point;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mTo:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowState;IIII)V
    .registers 9
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 4967
    iput-object p1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->this$0:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4964
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    .line 4965
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    .line 4968
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    const v1, 0x10a00b8

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4970
    .local v0, "anim":Landroid/view/animation/Animation;
    nop

    .line 4971
    invoke-virtual {v0}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v1

    long-to-float v1, v1

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result p1

    mul-float/2addr v1, p1

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    .line 4972
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4973
    iget-object p1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 4974
    iget-object p1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Point;->set(II)V

    .line 4975
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowState;IIIILcom/android/server/wm/WindowState$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/android/server/wm/WindowState;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/android/server/wm/WindowState$1;

    .line 4960
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;-><init>(Lcom/android/server/wm/WindowState;IIII)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 11
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "currentPlayTime"    # J

    .line 4984
    long-to-float v0, p3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 4985
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 4986
    .local v1, "v":F
    iget-object v2, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 4988
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 4992
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "from="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4993
    const-string v0, " to="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4994
    const-string v0, " duration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 4995
    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 4979
    iget-wide v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    return-wide v0
.end method

.method public writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 4999
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 5000
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    const-wide v5, 0x10b00000001L

    invoke-virtual {v4, p1, v5, v6}, Landroid/graphics/Point;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5001
    iget-object v4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    invoke-virtual {v4, p1, v0, v1}, Landroid/graphics/Point;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5002
    iget-wide v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5003
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5004
    return-void
.end method
