.class Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/RampAnimator;

    .line 137
    .local p0, "this":Lcom/android/server/display/RampAnimator$1;, "Lcom/android/server/display/RampAnimator$1;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 140
    .local p0, "this":Lcom/android/server/display/RampAnimator$1;, "Lcom/android/server/display/RampAnimator$1;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v8

    .line 141
    .local v8, "frameTimeNanos":J
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->access$100(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v0

    sub-long v0, v8, v0

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v1

    .line 143
    .local v0, "timeDelta":F
    iget-object v1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # setter for: Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v1, v8, v9}, Lcom/android/server/display/RampAnimator;->access$102(Lcom/android/server/display/RampAnimator;J)J

    .line 151
    const/high16 v10, 0x3f800000    # 1.0f

    .line 158
    .local v10, "scale":F
    iget-object v1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    .line 160
    # getter for: Lcom/android/server/display/RampAnimator;->mStartFrameTimeNanos:J
    invoke-static {v1}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v3}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    .line 161
    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v3}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    .line 162
    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v3}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    .line 159
    move-wide v3, v8

    invoke-static/range {v1 .. v7}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->computeRate(JJIII)I

    move-result v1

    .line 163
    .local v1, "temprate":I
    int-to-float v2, v1

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v2, v3

    .line 165
    .local v2, "amount":F
    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v3}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    if-le v3, v4, :cond_66

    .line 166
    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)F

    move-result v4

    add-float/2addr v4, v2

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v3, v4}, Lcom/android/server/display/RampAnimator;->access$602(Lcom/android/server/display/RampAnimator;F)F

    goto :goto_7d

    .line 168
    :cond_66
    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)F

    move-result v4

    sub-float/2addr v4, v2

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v3, v4}, Lcom/android/server/display/RampAnimator;->access$602(Lcom/android/server/display/RampAnimator;F)F

    .line 171
    .end local v1    # "temprate":I
    .end local v2    # "amount":F
    :goto_7d
    iget-object v1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v1}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v1

    .line 172
    .local v1, "oldCurrentValue":I
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v3}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    # setter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v2, v3}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    .line 174
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v2

    if-eq v1, v2, :cond_af

    .line 175
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 178
    :cond_af
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v3}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v3

    if-eq v2, v3, :cond_c3

    .line 179
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # invokes: Lcom/android/server/display/RampAnimator;->postAnimationCallback()V
    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)V

    goto :goto_da

    .line 181
    :cond_c3
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimating:Z
    invoke-static {v2, v3}, Lcom/android/server/display/RampAnimator;->access$1002(Lcom/android/server/display/RampAnimator;Z)Z

    .line 182
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;
    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->access$1100(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v2

    if-eqz v2, :cond_da

    .line 183
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;
    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->access$1100(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    .line 186
    :cond_da
    :goto_da
    return-void
.end method
