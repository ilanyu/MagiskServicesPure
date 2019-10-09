.class Lcom/android/server/lights/view/MusicView$3;
.super Ljava/lang/Object;
.source "MusicView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/view/MusicView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/view/MusicView;


# direct methods
.method constructor <init>(Lcom/android/server/lights/view/MusicView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/lights/view/MusicView;

    .line 218
    iput-object p1, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 221
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/android/server/lights/view/MusicView;->beatTar:I
    invoke-static {v0, v1}, Lcom/android/server/lights/view/MusicView;->access$202(Lcom/android/server/lights/view/MusicView;I)I

    .line 222
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->ctrlBall:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/server/lights/view/MusicView;->access$300(Lcom/android/server/lights/view/MusicView;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->beatTar:I
    invoke-static {v2}, Lcom/android/server/lights/view/MusicView;->access$200(Lcom/android/server/lights/view/MusicView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->ctrlBall:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/android/server/lights/view/MusicView;->access$300(Lcom/android/server/lights/view/MusicView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->ctrlBall:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/server/lights/view/MusicView;->access$300(Lcom/android/server/lights/view/MusicView;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->beatTar:I
    invoke-static {v5}, Lcom/android/server/lights/view/MusicView;->access$200(Lcom/android/server/lights/view/MusicView;)I

    move-result v5

    if-le v4, v5, :cond_3a

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    goto :goto_3f

    :cond_3a
    const-wide v4, 0x3fc999999999999aL    # 0.2

    :goto_3f
    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 223
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->ctrlBall:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/server/lights/view/MusicView;->access$300(Lcom/android/server/lights/view/MusicView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->moveTar:I
    invoke-static {v1}, Lcom/android/server/lights/view/MusicView;->access$000(Lcom/android/server/lights/view/MusicView;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 225
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;
    invoke-static {v0}, Lcom/android/server/lights/view/MusicView;->access$400(Lcom/android/server/lights/view/MusicView;)Lcom/android/server/lights/view/MusicView$LineData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget-object v1, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->ctrlBall:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/server/lights/view/MusicView;->access$300(Lcom/android/server/lights/view/MusicView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/lit16 v1, v1, -0x4b0

    iput v1, v0, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveCenter:I

    .line 226
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;
    invoke-static {v0}, Lcom/android/server/lights/view/MusicView;->access$400(Lcom/android/server/lights/view/MusicView;)Lcom/android/server/lights/view/MusicView$LineData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget-object v1, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->ctrlBall:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/server/lights/view/MusicView;->access$300(Lcom/android/server/lights/view/MusicView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/lit16 v1, v1, -0x4b0

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveWidth:I

    .line 227
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;
    invoke-static {v0}, Lcom/android/server/lights/view/MusicView;->access$400(Lcom/android/server/lights/view/MusicView;)Lcom/android/server/lights/view/MusicView$LineData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget-object v1, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->ctrlBall:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/server/lights/view/MusicView;->access$300(Lcom/android/server/lights/view/MusicView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    rsub-int v1, v1, 0x7d4

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveHeight:I

    .line 229
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;
    invoke-static {v0}, Lcom/android/server/lights/view/MusicView;->access$400(Lcom/android/server/lights/view/MusicView;)Lcom/android/server/lights/view/MusicView$LineData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget-object v1, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->ctrlBall:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/server/lights/view/MusicView;->access$300(Lcom/android/server/lights/view/MusicView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/lit16 v1, v1, -0x4b0

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/server/lights/view/MusicView$WaveConfig;->y:I

    .line 230
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;
    invoke-static {v0}, Lcom/android/server/lights/view/MusicView;->access$400(Lcom/android/server/lights/view/MusicView;)Lcom/android/server/lights/view/MusicView$LineData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget-object v1, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;
    invoke-static {v1}, Lcom/android/server/lights/view/MusicView;->access$400(Lcom/android/server/lights/view/MusicView;)Lcom/android/server/lights/view/MusicView$LineData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v1, v1, Lcom/android/server/lights/view/MusicView$WaveConfig;->y:I

    rsub-int v1, v1, 0x8ca

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveCenter:I

    .line 231
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;
    invoke-static {v0}, Lcom/android/server/lights/view/MusicView;->access$400(Lcom/android/server/lights/view/MusicView;)Lcom/android/server/lights/view/MusicView$LineData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget-object v1, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;
    invoke-static {v1}, Lcom/android/server/lights/view/MusicView;->access$400(Lcom/android/server/lights/view/MusicView;)Lcom/android/server/lights/view/MusicView$LineData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v1, v1, Lcom/android/server/lights/view/MusicView$WaveConfig;->y:I

    rsub-int v1, v1, 0x8ca

    iput v1, v0, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveWidth:I

    .line 232
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;
    invoke-static {v0}, Lcom/android/server/lights/view/MusicView;->access$400(Lcom/android/server/lights/view/MusicView;)Lcom/android/server/lights/view/MusicView$LineData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget-object v1, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->ctrlBall:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/server/lights/view/MusicView;->access$300(Lcom/android/server/lights/view/MusicView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    rsub-int v1, v1, 0x7d4

    int-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveHeight:I

    .line 234
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$3;->this$0:Lcom/android/server/lights/view/MusicView;

    invoke-virtual {v0}, Lcom/android/server/lights/view/MusicView;->invalidate()V

    .line 235
    return-void
.end method
