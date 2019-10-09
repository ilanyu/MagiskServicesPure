.class public Lcom/android/server/lights/view/MusicView;
.super Landroid/view/View;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/view/MusicView$LineData;,
        Lcom/android/server/lights/view/MusicView$WaveConfig;
    }
.end annotation


# static fields
.field private static final LEFT_LINE_WIDTH:F = 708.0f

.field private static final RIGHT_LINE_WIDTH:F = 118.0f

.field public static final WAVE_LINE_NUM:I = 0x1c

.field public static final WAVE_LINE_RANGE:I = 0xc

.field public static final WAVE_THICK:I = 0x4


# instance fields
.field private beatTar:I

.field private colrArray:[[I

.field private ctrlBall:Landroid/graphics/Point;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentColor:I

.field private mCurrentColorArr:[I

.field private mDataList:Lcom/android/server/lights/view/MusicView$LineData;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private moveTar:I

.field private xAnimator:Landroid/animation/ValueAnimator;

.field private yAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/lights/view/MusicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/lights/view/MusicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Lcom/android/server/lights/view/MusicView$LineData;

    invoke-direct {v0, p0}, Lcom/android/server/lights/view/MusicView$LineData;-><init>(Lcom/android/server/lights/view/MusicView;)V

    iput-object v0, p0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    const-string v3, "#ff6e02"

    .line 44
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "#ffff00"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "#ff6e02"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x2

    aput v3, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    const-string v3, "#6b25c3"

    .line 45
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    const-string v3, "#00ffd8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v5

    const-string v3, "#6b25c3"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const-string v3, "#088b4c"

    .line 46
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    const-string v3, "#deff00"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v5

    const-string v3, "#088b4c"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [I

    const-string v3, "#004eff"

    .line 47
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    const-string v3, "#00f6ff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v5

    const-string v3, "#004eff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    aput-object v2, v0, v1

    new-array v2, v1, [I

    const-string v3, "#d37e05"

    .line 48
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    const-string v3, "#ff00ba"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v5

    const-string v3, "#d37e05"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    const-string v3, "#4306cf"

    .line 49
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    const-string v3, "#d800ff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v5

    const-string v3, "#4306cf"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    const/4 v3, 0x5

    aput-object v2, v0, v3

    iput-object v0, p0, Lcom/android/server/lights/view/MusicView;->colrArray:[[I

    .line 52
    iput v4, p0, Lcom/android/server/lights/view/MusicView;->mCurrentColor:I

    .line 53
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/lights/view/MusicView;->mCurrentColorArr:[I

    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/lights/view/MusicView;->ctrlBall:Landroid/graphics/Point;

    .line 69
    invoke-virtual {p0}, Lcom/android/server/lights/view/MusicView;->init()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/view/MusicView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MusicView;

    .line 26
    iget v0, p0, Lcom/android/server/lights/view/MusicView;->moveTar:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/lights/view/MusicView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MusicView;
    .param p1, "x1"    # I

    .line 26
    iput p1, p0, Lcom/android/server/lights/view/MusicView;->moveTar:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/lights/view/MusicView;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MusicView;

    .line 26
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->yAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/lights/view/MusicView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MusicView;

    .line 26
    iget v0, p0, Lcom/android/server/lights/view/MusicView;->beatTar:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/lights/view/MusicView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MusicView;
    .param p1, "x1"    # I

    .line 26
    iput p1, p0, Lcom/android/server/lights/view/MusicView;->beatTar:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/lights/view/MusicView;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MusicView;

    .line 26
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->ctrlBall:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/lights/view/MusicView;)Lcom/android/server/lights/view/MusicView$LineData;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MusicView;

    .line 26
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/lights/view/MusicView;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MusicView;

    .line 26
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->xAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/lights/view/MusicView;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MusicView;

    .line 26
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->mColorAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/lights/view/MusicView;[I)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MusicView;
    .param p1, "x1"    # [I

    .line 26
    iput-object p1, p0, Lcom/android/server/lights/view/MusicView;->mCurrentColorArr:[I

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/lights/view/MusicView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MusicView;

    .line 26
    iget v0, p0, Lcom/android/server/lights/view/MusicView;->mCurrentColor:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/lights/view/MusicView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MusicView;
    .param p1, "x1"    # I

    .line 26
    iput p1, p0, Lcom/android/server/lights/view/MusicView;->mCurrentColor:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/lights/view/MusicView;)[[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MusicView;

    .line 26
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->colrArray:[[I

    return-object v0
.end method


# virtual methods
.method public init()V
    .registers 12

    .line 74
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/android/server/lights/view/MusicView;->setBackgroundColor(I)V

    .line 76
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->mLinearGradient:Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_38

    .line 77
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x450ca000    # 2250.0f

    const/4 v3, 0x3

    new-array v8, v3, [I

    const-string v3, "#ff6e02"

    .line 78
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v8, v1

    const-string v3, "#ffff00"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v8, v2

    const/4 v3, 0x2

    const-string v9, "#ff6e02"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v3

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/server/lights/view/MusicView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 83
    :cond_38
    nop

    .local v1, "i":I
    :goto_39
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    const/16 v1, 0x1c

    const/high16 v3, 0x40800000    # 4.0f

    if-ge v0, v1, :cond_a5

    .line 84
    iget-object v1, p0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v1, v1, Lcom/android/server/lights/view/MusicView$LineData;->mLeftTopPath:Ljava/util/List;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v1, v1, Lcom/android/server/lights/view/MusicView$LineData;->mLeftBottomPath:Ljava/util/List;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v1, v1, Lcom/android/server/lights/view/MusicView$LineData;->mRightTopPath:Ljava/util/List;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v1, v1, Lcom/android/server/lights/view/MusicView$LineData;->mRightBottomPath:Ljava/util/List;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 90
    .local v1, "topPaint":Landroid/graphics/Paint;
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    iget-object v4, p0, Lcom/android/server/lights/view/MusicView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 93
    iget-object v4, p0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mTopPaint:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 96
    .local v4, "bottomPaint":Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-object v3, p0, Lcom/android/server/lights/view/MusicView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 99
    iget-object v3, p0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v3, v3, Lcom/android/server/lights/view/MusicView$LineData;->mBottomPaint:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v1    # "topPaint":Landroid/graphics/Paint;
    .end local v4    # "bottomPaint":Landroid/graphics/Paint;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_39

    .line 102
    .end local v1    # "i":I
    :cond_a5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/lights/view/MusicView;->mLinePaint:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/lights/view/MusicView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 106
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/lights/view/MusicView;->setVisibility(I)V

    .line 108
    return-void
.end method

.method public isAnimationRunning()Z
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->xAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    .line 287
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->xAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0

    .line 289
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 114
    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/lights/view/MusicView;->getWidth()I

    move-result v8

    .line 115
    .local v8, "width":I
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v14, v0, Lcom/android/server/lights/view/MusicView;->mCurrentColorArr:[I

    sget-object v16, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x450ca000    # 2250.0f

    const/4 v15, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/android/server/lights/view/MusicView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    const/16 v4, 0x1c

    const/high16 v9, 0x42ec0000    # 118.0f

    const/high16 v5, 0x44310000    # 708.0f

    if-ge v3, v4, :cond_c1

    .line 120
    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mLeftTopPath:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 121
    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mLeftTopPath:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v6, v6, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v6, v6, Lcom/android/server/lights/view/MusicView$WaveConfig;->x:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget-object v10, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v10, v10, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v10, v10, Lcom/android/server/lights/view/MusicView$WaveConfig;->y:I

    int-to-float v10, v10

    invoke-virtual {v4, v6, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 123
    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mLeftBottomPath:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 124
    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mLeftBottomPath:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v6, v6, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v6, v6, Lcom/android/server/lights/view/MusicView$WaveConfig;->x:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget-object v5, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v5, v5, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v5, v5, Lcom/android/server/lights/view/MusicView$WaveConfig;->y:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 127
    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mRightTopPath:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 128
    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mRightTopPath:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    int-to-float v5, v8

    sub-float/2addr v5, v9

    iget-object v6, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v6, v6, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v6, v6, Lcom/android/server/lights/view/MusicView$WaveConfig;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 130
    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mRightBottomPath:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 131
    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mRightBottomPath:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    int-to-float v5, v8

    sub-float/2addr v5, v9

    iget-object v6, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v6, v6, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v6, v6, Lcom/android/server/lights/view/MusicView$WaveConfig;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1d

    .line 136
    .end local v3    # "i":I
    :cond_c1
    :goto_c1
    iget-object v3, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v3, v3, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v3, v3, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveWidth:I

    const/high16 v11, 0x40000000    # 2.0f

    const-wide v12, 0x4066800000000000L    # 180.0

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    const/high16 v16, 0x43b40000    # 360.0f

    const/high16 v17, 0x42b40000    # 90.0f

    const/high16 v18, 0x41000000    # 8.0f

    const/16 v19, 0xc

    const/high16 v20, 0x3f800000    # 1.0f

    if-gt v1, v3, :cond_1a5

    .line 137
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_e0
    if-ge v3, v4, :cond_19b

    .line 138
    iget-object v2, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v2, v2, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v2, v2, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveHeight:I

    mul-int v22, v19, v3

    sub-int v2, v2, v22

    int-to-float v2, v2

    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v4, v4, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 139
    .local v2, "waveRate":F
    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v4, v4, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    mul-float v4, v4, v18

    iget-object v6, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v6, v6, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v6, v6, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveWidth:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    sub-float v4, v20, v4

    .line 140
    .local v4, "waveAlpha":F
    int-to-float v6, v1

    iget-object v10, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v10, v10, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v10, v10, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveCenter:I

    int-to-float v10, v10

    sub-float/2addr v6, v10

    iget-object v10, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v10, v10, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v10, v10, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveWidth:I

    int-to-float v10, v10

    div-float v10, v10, v16

    div-float/2addr v6, v10

    add-float v6, v17, v6

    float-to-double v9, v6

    mul-double/2addr v9, v14

    div-double/2addr v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v6, v9

    add-float v6, v20, v6

    iget-object v9, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v9, v9, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v9, v9, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveHeight:I

    int-to-float v9, v9

    mul-float/2addr v6, v9

    mul-float/2addr v6, v2

    div-float/2addr v6, v11

    .line 143
    .local v6, "endX":F
    iget-object v9, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v9, v9, Lcom/android/server/lights/view/MusicView$LineData;->mLeftTopPath:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Path;

    add-float v10, v6, v5

    iget-object v5, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v5, v5, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v5, v5, Lcom/android/server/lights/view/MusicView$WaveConfig;->y:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {v9, v10, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    iget-object v5, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v5, v5, Lcom/android/server/lights/view/MusicView$LineData;->mRightTopPath:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    int-to-float v9, v8

    const/high16 v10, 0x42ec0000    # 118.0f

    sub-float/2addr v9, v10

    sub-float/2addr v9, v6

    iget-object v10, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v10, v10, Lcom/android/server/lights/view/MusicView$LineData;->mTopConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v10, v10, Lcom/android/server/lights/view/MusicView$WaveConfig;->y:I

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    const/4 v5, 0x0

    cmpg-float v9, v4, v5

    if-gez v9, :cond_16a

    .line 146
    const/4 v4, 0x0

    goto :goto_170

    .line 147
    :cond_16a
    cmpl-float v5, v4, v20

    if-lez v5, :cond_170

    .line 148
    const/high16 v4, 0x3f800000    # 1.0f

    .line 150
    :cond_170
    :goto_170
    iget-object v5, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v5, v5, Lcom/android/server/lights/view/MusicView$LineData;->mTopPaint:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Paint;

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v10, v4, v9

    float-to-int v9, v10

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    iget-object v5, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v5, v5, Lcom/android/server/lights/view/MusicView$LineData;->mTopPaint:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/android/server/lights/view/MusicView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 137
    .end local v2    # "waveRate":F
    .end local v4    # "waveAlpha":F
    .end local v6    # "endX":F
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x1c

    const/high16 v5, 0x44310000    # 708.0f

    const/high16 v9, 0x42ec0000    # 118.0f

    goto/16 :goto_e0

    .line 154
    .end local v3    # "i":I
    :cond_19b
    add-int/lit8 v1, v1, 0x1

    .line 136
    const/16 v4, 0x1c

    const/high16 v5, 0x44310000    # 708.0f

    const/high16 v9, 0x42ec0000    # 118.0f

    goto/16 :goto_c1

    .line 157
    :cond_1a5
    const/4 v1, 0x0

    .line 158
    move v9, v1

    .end local v1    # "index":I
    .local v9, "index":I
    :goto_1a7
    iget-object v1, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v1, v1, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v1, v1, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveWidth:I

    if-gt v9, v1, :cond_26e

    .line 159
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b0
    const/16 v2, 0x1c

    if-ge v1, v2, :cond_268

    .line 160
    iget-object v2, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v2, v2, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v2, v2, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveHeight:I

    mul-int v3, v19, v1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v3, v3, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v3, v3, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 161
    .local v2, "waveRate1":F
    iget-object v3, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v3, v3, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v3, v3, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    mul-float v3, v3, v18

    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v4, v4, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v20, v3

    .line 162
    .local v3, "waveAlpha":F
    int-to-float v4, v9

    iget-object v5, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v5, v5, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v5, v5, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveCenter:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v5, v5, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v5, v5, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveWidth:I

    int-to-float v5, v5

    div-float v5, v5, v16

    div-float/2addr v4, v5

    add-float v4, v17, v4

    float-to-double v4, v4

    mul-double/2addr v4, v14

    div-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float v4, v20, v4

    iget-object v5, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v5, v5, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v5, v5, Lcom/android/server/lights/view/MusicView$WaveConfig;->waveHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    div-float/2addr v4, v11

    .line 164
    .local v4, "endX1":F
    iget-object v5, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v5, v5, Lcom/android/server/lights/view/MusicView$LineData;->mLeftBottomPath:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    const/high16 v6, 0x44310000    # 708.0f

    add-float v10, v4, v6

    iget-object v6, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v6, v6, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v6, v6, Lcom/android/server/lights/view/MusicView$WaveConfig;->y:I

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v5, v10, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 165
    iget-object v5, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v5, v5, Lcom/android/server/lights/view/MusicView$LineData;->mRightBottomPath:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    int-to-float v6, v8

    const/high16 v10, 0x42ec0000    # 118.0f

    sub-float/2addr v6, v10

    sub-float/2addr v6, v4

    iget-object v10, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v10, v10, Lcom/android/server/lights/view/MusicView$LineData;->mBottomConfig:Lcom/android/server/lights/view/MusicView$WaveConfig;

    iget v10, v10, Lcom/android/server/lights/view/MusicView$WaveConfig;->y:I

    add-int/2addr v10, v9

    int-to-float v10, v10

    invoke-virtual {v5, v6, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 166
    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    if-gez v6, :cond_23d

    .line 167
    const/4 v3, 0x0

    goto :goto_243

    .line 168
    :cond_23d
    cmpl-float v6, v3, v20

    if-lez v6, :cond_243

    .line 169
    const/high16 v3, 0x3f800000    # 1.0f

    .line 171
    :cond_243
    :goto_243
    iget-object v6, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v6, v6, Lcom/android/server/lights/view/MusicView$LineData;->mBottomPaint:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Paint;

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float v5, v3, v10

    float-to-int v5, v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 172
    iget-object v5, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v5, v5, Lcom/android/server/lights/view/MusicView$LineData;->mBottomPaint:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/android/server/lights/view/MusicView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 159
    .end local v2    # "waveRate1":F
    .end local v3    # "waveAlpha":F
    .end local v4    # "endX1":F
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1b0

    .line 174
    .end local v1    # "i":I
    :cond_268
    const/high16 v10, 0x437f0000    # 255.0f

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1a7

    .line 177
    :cond_26e
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_270
    move/from16 v1, v21

    .end local v21    # "i":I
    .restart local v1    # "i":I
    const/16 v2, 0x1c

    if-ge v1, v2, :cond_2d5

    .line 178
    iget-object v3, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v3, v3, Lcom/android/server/lights/view/MusicView$LineData;->mLeftTopPath:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mTopPaint:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 179
    iget-object v3, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v3, v3, Lcom/android/server/lights/view/MusicView$LineData;->mRightTopPath:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mTopPaint:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 180
    iget-object v3, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v3, v3, Lcom/android/server/lights/view/MusicView$LineData;->mLeftBottomPath:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mBottomPaint:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 181
    iget-object v3, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v3, v3, Lcom/android/server/lights/view/MusicView$LineData;->mRightBottomPath:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/server/lights/view/MusicView;->mDataList:Lcom/android/server/lights/view/MusicView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MusicView$LineData;->mBottomPaint:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 177
    add-int/lit8 v21, v1, 0x1

    .end local v1    # "i":I
    .restart local v21    # "i":I
    goto :goto_270

    .line 183
    .end local v21    # "i":I
    :cond_2d5
    iget-object v1, v0, Lcom/android/server/lights/view/MusicView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x44310000    # 708.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    iget-object v1, v0, Lcom/android/server/lights/view/MusicView;->mLinePaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/android/server/lights/view/MusicView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 185
    const/high16 v2, 0x43b10000    # 354.0f

    const/4 v3, 0x0

    const/high16 v4, 0x43b10000    # 354.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/lights/view/MusicView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/server/lights/view/MusicView;->mLinePaint:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    iget-object v1, v0, Lcom/android/server/lights/view/MusicView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42ec0000    # 118.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/lights/view/MusicView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x426c0000    # 59.0f

    sub-float v2, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/lights/view/MusicView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x426c0000    # 59.0f

    sub-float v4, v1, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/lights/view/MusicView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/server/lights/view/MusicView;->mLinePaint:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 189
    return-void
.end method

.method public startAnimation()V
    .registers 10

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/lights/view/MusicView;->setVisibility(I)V

    .line 193
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/lights/view/MusicView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 194
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/16 v3, 0x4b0

    aput v3, v2, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/lights/view/MusicView;->yAnimator:Landroid/animation/ValueAnimator;

    .line 195
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->yAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 196
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->yAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/server/lights/interpolater/SineEaseInOutInterpolater;

    invoke-direct {v3}, Lcom/android/server/lights/interpolater/SineEaseInOutInterpolater;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 197
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->yAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 198
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->yAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 199
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->yAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/server/lights/view/MusicView$1;

    invoke-direct {v5, p0}, Lcom/android/server/lights/view/MusicView$1;-><init>(Lcom/android/server/lights/view/MusicView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 205
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->yAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/server/lights/view/MusicView$2;

    invoke-direct {v5, p0}, Lcom/android/server/lights/view/MusicView$2;-><init>(Lcom/android/server/lights/view/MusicView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    new-array v2, v1, [I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v7, 0x406e000000000000L    # 240.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4054000000000000L    # 80.0

    add-double/2addr v5, v7

    double-to-int v5, v5

    const/16 v6, 0x7d4

    rsub-int v5, v5, 0x7d4

    aput v5, v2, v0

    aput v6, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/lights/view/MusicView;->xAnimator:Landroid/animation/ValueAnimator;

    .line 214
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->xAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 215
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->xAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/server/lights/interpolater/LinearInterpolater;

    invoke-direct {v5}, Lcom/android/server/lights/interpolater/LinearInterpolater;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 216
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->xAnimator:Landroid/animation/ValueAnimator;

    const/16 v5, 0x28

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 217
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->xAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 218
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->xAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/server/lights/view/MusicView$3;

    invoke-direct {v5, p0}, Lcom/android/server/lights/view/MusicView$3;-><init>(Lcom/android/server/lights/view/MusicView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->xAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/server/lights/view/MusicView$4;

    invoke-direct {v5, p0}, Lcom/android/server/lights/view/MusicView$4;-><init>(Lcom/android/server/lights/view/MusicView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    new-instance v2, Lcom/android/server/lights/evaluator/ArgbArrayEvaluator;

    invoke-direct {v2}, Lcom/android/server/lights/evaluator/ArgbArrayEvaluator;-><init>()V

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/lights/view/MusicView;->colrArray:[[I

    iget v7, p0, Lcom/android/server/lights/view/MusicView;->mCurrentColor:I

    aget-object v6, v6, v7

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/android/server/lights/view/MusicView;->colrArray:[[I

    iget v7, p0, Lcom/android/server/lights/view/MusicView;->mCurrentColor:I

    add-int/2addr v7, v4

    rem-int/lit8 v7, v7, 0x6

    aget-object v6, v6, v7

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/lights/view/MusicView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 255
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 256
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/server/lights/interpolater/SineEaseInOutInterpolater;

    invoke-direct {v5}, Lcom/android/server/lights/interpolater/SineEaseInOutInterpolater;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 258
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 259
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/server/lights/view/MusicView$5;

    invoke-direct {v3, p0}, Lcom/android/server/lights/view/MusicView$5;-><init>(Lcom/android/server/lights/view/MusicView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 266
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/server/lights/view/MusicView$6;

    invoke-direct {v3, p0}, Lcom/android/server/lights/view/MusicView$6;-><init>(Lcom/android/server/lights/view/MusicView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    iget-object v2, p0, Lcom/android/server/lights/view/MusicView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/server/lights/view/MusicView;->xAnimator:Landroid/animation/ValueAnimator;

    aput-object v5, v3, v0

    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->yAnimator:Landroid/animation/ValueAnimator;

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->mColorAnimator:Landroid/animation/ValueAnimator;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 277
    return-void
.end method

.method public stopAnimation()V
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->xAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 281
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView;->xAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 283
    :cond_9
    return-void
.end method
