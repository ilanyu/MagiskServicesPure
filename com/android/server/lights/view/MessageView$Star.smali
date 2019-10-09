.class Lcom/android/server/lights/view/MessageView$Star;
.super Ljava/lang/Object;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/view/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Star"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mStarBitmap:Landroid/graphics/Bitmap;

.field private mStarBitmapOri:Landroid/graphics/Bitmap;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private prop:[F

.field final synthetic this$0:Lcom/android/server/lights/view/MessageView;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/view/MessageView;Landroid/content/Context;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/lights/view/MessageView;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lcom/android/server/lights/view/MessageView$Star;->this$0:Lcom/android/server/lights/view/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/lights/view/MessageView$Star;->prop:[F

    .line 321
    iput-object p2, p0, Lcom/android/server/lights/view/MessageView$Star;->mContext:Landroid/content/Context;

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "inStar":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 325
    .local v1, "inStarOri":Ljava/io/InputStream;
    :try_start_e
    iget-object v2, p0, Lcom/android/server/lights/view/MessageView$Star;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11020147

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 326
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/lights/view/MessageView$Star;->mStarBitmap:Landroid/graphics/Bitmap;

    .line 327
    iget-object v2, p0, Lcom/android/server/lights/view/MessageView$Star;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 328
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/lights/view/MessageView$Star;->mStarBitmapOri:Landroid/graphics/Bitmap;

    .line 329
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/server/lights/view/MessageView$Star;->mMatrix:Landroid/graphics/Matrix;

    .line 330
    iget-object v2, p0, Lcom/android/server/lights/view/MessageView$Star;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_56

    .line 333
    if-eqz v0, :cond_49

    .line 334
    :try_start_43
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_49

    .line 340
    :catch_47
    move-exception v2

    goto :goto_4f

    .line 337
    :cond_49
    :goto_49
    if-eqz v1, :cond_54

    .line 338
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4e} :catch_47

    goto :goto_54

    .line 340
    :goto_4f
    nop

    .line 341
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 343
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_55

    .line 342
    :cond_54
    :goto_54
    nop

    .line 344
    :goto_55
    return-void

    .line 332
    :catchall_56
    move-exception v2

    .line 333
    if-eqz v0, :cond_5f

    .line 334
    :try_start_59
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_5f

    .line 340
    :catch_5d
    move-exception v3

    goto :goto_65

    .line 337
    :cond_5f
    :goto_5f
    if-eqz v1, :cond_6a

    .line 338
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_64} :catch_5d

    goto :goto_6a

    .line 340
    :goto_65
    nop

    .line 341
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 342
    :cond_6a
    :goto_6a
    throw v2
.end method

.method static synthetic access$1000(Lcom/android/server/lights/view/MessageView$Star;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView$Star;

    .line 311
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView$Star;->mStarBitmapOri:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/lights/view/MessageView$Star;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView$Star;

    .line 311
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView$Star;->prop:[F

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/lights/view/MessageView$Star;[F)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView$Star;
    .param p1, "x1"    # [F

    .line 311
    iput-object p1, p0, Lcom/android/server/lights/view/MessageView$Star;->prop:[F

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/lights/view/MessageView$Star;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView$Star;

    .line 311
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView$Star;->mStarBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/lights/view/MessageView$Star;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView$Star;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 311
    iput-object p1, p0, Lcom/android/server/lights/view/MessageView$Star;->mStarBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/lights/view/MessageView$Star;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView$Star;

    .line 311
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView$Star;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method


# virtual methods
.method public boom()V
    .registers 22

    .line 347
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v1, v3

    const-wide v5, 0x4086800000000000L    # 720.0

    mul-double/2addr v5, v1

    double-to-float v1, v5

    .line 348
    .local v1, "initY":F
    const/high16 v2, 0x41200000    # 10.0f

    div-float v2, v1, v2

    float-to-double v5, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    sub-double/2addr v7, v3

    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    mul-double/2addr v9, v7

    add-double/2addr v5, v9

    double-to-float v2, v5

    .line 349
    .local v2, "angle":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x4062c00000000000L    # 150.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    add-double/2addr v7, v5

    double-to-float v5, v7

    .line 350
    .local v5, "dis":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v3

    add-double/2addr v6, v3

    double-to-float v6, v6

    .line 351
    .local v6, "scale":F
    const/high16 v7, 0x43480000    # 200.0f

    div-float v7, v5, v7

    float-to-double v7, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v9

    double-to-int v7, v7

    .line 353
    .local v7, "duration":I
    const/4 v8, 0x5

    new-array v9, v8, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v10, v9, v11

    const/4 v12, 0x1

    aput v1, v9, v12

    const/4 v13, 0x2

    const/high16 v14, 0x437f0000    # 255.0f

    aput v14, v9, v13

    const/4 v14, 0x3

    aput v6, v9, v14

    const/4 v15, 0x4

    aput v6, v9, v15

    .line 355
    .local v9, "start":[F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    cmpl-double v3, v16, v3

    const/4 v4, -0x1

    if-lez v3, :cond_68

    move v3, v12

    goto :goto_69

    :cond_68
    move v3, v4

    :goto_69
    int-to-double v14, v3

    float-to-double v12, v2

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v12, v12, v16

    const-wide v18, 0x4066800000000000L    # 180.0

    div-double v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v14, v12

    float-to-double v12, v5

    mul-double/2addr v14, v12

    double-to-float v3, v14

    .line 356
    .local v3, "endX":F
    float-to-double v12, v1

    float-to-double v14, v2

    mul-double v14, v14, v16

    div-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    float-to-double v10, v5

    mul-double/2addr v14, v10

    add-double/2addr v12, v14

    double-to-float v10, v12

    .line 357
    .local v10, "endY":F
    new-array v8, v8, [F

    const/4 v11, 0x0

    aput v3, v8, v11

    const/4 v11, 0x1

    aput v10, v8, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v8, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v6, v12

    const/4 v14, 0x3

    aput v13, v8, v14

    div-float v12, v6, v12

    const/4 v13, 0x4

    aput v12, v8, v13

    .line 359
    .local v8, "end":[F
    new-instance v12, Landroid/animation/FloatArrayEvaluator;

    invoke-direct {v12}, Landroid/animation/FloatArrayEvaluator;-><init>()V

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v11, v13

    const/4 v13, 0x1

    aput-object v8, v11, v13

    invoke-static {v12, v11}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/lights/view/MessageView$Star;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 360
    iget-object v11, v0, Lcom/android/server/lights/view/MessageView$Star;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v12, v7

    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 361
    iget-object v11, v0, Lcom/android/server/lights/view/MessageView$Star;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v12, Lcom/android/server/lights/interpolater/ExpoEaseOutInterpolater;

    invoke-direct {v12}, Lcom/android/server/lights/interpolater/ExpoEaseOutInterpolater;-><init>()V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 362
    iget-object v11, v0, Lcom/android/server/lights/view/MessageView$Star;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v11, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 363
    iget-object v4, v0, Lcom/android/server/lights/view/MessageView$Star;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 364
    iget-object v4, v0, Lcom/android/server/lights/view/MessageView$Star;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/server/lights/view/MessageView$Star$1;

    invoke-direct {v11, v0}, Lcom/android/server/lights/view/MessageView$Star$1;-><init>(Lcom/android/server/lights/view/MessageView$Star;)V

    invoke-virtual {v4, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 374
    iget-object v4, v0, Lcom/android/server/lights/view/MessageView$Star;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 375
    iget-object v4, v0, Lcom/android/server/lights/view/MessageView$Star;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 377
    :cond_ec
    iget-object v4, v0, Lcom/android/server/lights/view/MessageView$Star;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 378
    return-void
.end method

.method public stop()V
    .registers 2

    .line 381
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView$Star;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 382
    return-void
.end method
