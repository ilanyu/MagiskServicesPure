.class Lcom/android/server/lights/view/MessageView$1;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/view/MessageView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/view/MessageView;


# direct methods
.method constructor <init>(Lcom/android/server/lights/view/MessageView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/lights/view/MessageView;

    .line 226
    iput-object p1, p0, Lcom/android/server/lights/view/MessageView$1;->this$0:Lcom/android/server/lights/view/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiui/animation/physics/DynamicAnimation;FF)V
    .registers 23
    .param p1, "dynamicAnimation"    # Lmiui/animation/physics/DynamicAnimation;
    .param p2, "v"    # F
    .param p3, "v1"    # F

    move-object/from16 v0, p0

    .line 229
    iget-object v1, v0, Lcom/android/server/lights/view/MessageView$1;->this$0:Lcom/android/server/lights/view/MessageView;

    move/from16 v2, p2

    # setter for: Lcom/android/server/lights/view/MessageView;->mCtrlTarX:F
    invoke-static {v1, v2}, Lcom/android/server/lights/view/MessageView;->access$402(Lcom/android/server/lights/view/MessageView;F)F

    .line 230
    iget-object v1, v0, Lcom/android/server/lights/view/MessageView$1;->this$0:Lcom/android/server/lights/view/MessageView;

    iget-object v3, v0, Lcom/android/server/lights/view/MessageView$1;->this$0:Lcom/android/server/lights/view/MessageView;

    # getter for: Lcom/android/server/lights/view/MessageView;->mCtrlTarX:F
    invoke-static {v3}, Lcom/android/server/lights/view/MessageView;->access$400(Lcom/android/server/lights/view/MessageView;)F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const-wide/16 v7, 0x0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float v3, v3

    # setter for: Lcom/android/server/lights/view/MessageView;->mAlphaTarX:F
    invoke-static {v1, v3}, Lcom/android/server/lights/view/MessageView;->access$502(Lcom/android/server/lights/view/MessageView;F)F

    .line 232
    iget-object v1, v0, Lcom/android/server/lights/view/MessageView$1;->this$0:Lcom/android/server/lights/view/MessageView;

    # getter for: Lcom/android/server/lights/view/MessageView;->mAlphaTarX:F
    invoke-static {v1}, Lcom/android/server/lights/view/MessageView;->access$500(Lcom/android/server/lights/view/MessageView;)F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    .line 233
    .local v1, "per":F
    iget-object v3, v0, Lcom/android/server/lights/view/MessageView$1;->this$0:Lcom/android/server/lights/view/MessageView;

    # getter for: Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;
    invoke-static {v3}, Lcom/android/server/lights/view/MessageView;->access$600(Lcom/android/server/lights/view/MessageView;)Lcom/android/server/lights/view/MessageView$PictureData;

    move-result-object v3

    float-to-double v7, v1

    const-wide v9, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v7, v9

    const-wide v11, 0x3fe999999999999aL    # 0.8

    add-double/2addr v7, v11

    iput-wide v7, v3, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleX:D

    .line 234
    iget-object v3, v0, Lcom/android/server/lights/view/MessageView$1;->this$0:Lcom/android/server/lights/view/MessageView;

    # getter for: Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;
    invoke-static {v3}, Lcom/android/server/lights/view/MessageView;->access$600(Lcom/android/server/lights/view/MessageView;)Lcom/android/server/lights/view/MessageView$PictureData;

    move-result-object v3

    float-to-double v7, v1

    const-wide v13, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v7, v13

    const-wide v15, 0x3fe3333333333333L    # 0.6

    add-double/2addr v7, v15

    iput-wide v7, v3, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleY:D

    .line 235
    iget-object v3, v0, Lcom/android/server/lights/view/MessageView$1;->this$0:Lcom/android/server/lights/view/MessageView;

    # getter for: Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;
    invoke-static {v3}, Lcom/android/server/lights/view/MessageView;->access$600(Lcom/android/server/lights/view/MessageView;)Lcom/android/server/lights/view/MessageView$PictureData;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v7, v4, v1

    float-to-double v7, v7

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v7, v13, v7

    const-wide/high16 v17, 0x3ff8000000000000L    # 1.5

    mul-double v7, v7, v17

    sub-double/2addr v7, v9

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iput-wide v7, v3, Lcom/android/server/lights/view/MessageView$PictureData;->mAlpha:D

    .line 237
    iget-object v3, v0, Lcom/android/server/lights/view/MessageView$1;->this$0:Lcom/android/server/lights/view/MessageView;

    # getter for: Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;
    invoke-static {v3}, Lcom/android/server/lights/view/MessageView;->access$700(Lcom/android/server/lights/view/MessageView;)Lcom/android/server/lights/view/MessageView$PictureData;

    move-result-object v3

    float-to-double v7, v1

    mul-double/2addr v7, v11

    add-double/2addr v9, v7

    iput-wide v9, v3, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleX:D

    .line 238
    iget-object v3, v0, Lcom/android/server/lights/view/MessageView$1;->this$0:Lcom/android/server/lights/view/MessageView;

    # getter for: Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;
    invoke-static {v3}, Lcom/android/server/lights/view/MessageView;->access$700(Lcom/android/server/lights/view/MessageView;)Lcom/android/server/lights/view/MessageView$PictureData;

    move-result-object v3

    float-to-double v7, v1

    const-wide v9, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v7, v9

    add-double/2addr v7, v15

    iput-wide v7, v3, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleY:D

    .line 239
    iget-object v3, v0, Lcom/android/server/lights/view/MessageView$1;->this$0:Lcom/android/server/lights/view/MessageView;

    # getter for: Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;
    invoke-static {v3}, Lcom/android/server/lights/view/MessageView;->access$700(Lcom/android/server/lights/view/MessageView;)Lcom/android/server/lights/view/MessageView$PictureData;

    move-result-object v3

    sub-float/2addr v4, v1

    float-to-double v7, v4

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v4, v6

    sub-double/2addr v13, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v13, v4

    iput-wide v13, v3, Lcom/android/server/lights/view/MessageView$PictureData;->mAlpha:D

    .line 240
    iget-object v3, v0, Lcom/android/server/lights/view/MessageView$1;->this$0:Lcom/android/server/lights/view/MessageView;

    invoke-virtual {v3}, Lcom/android/server/lights/view/MessageView;->invalidate()V

    .line 241
    return-void
.end method
