.class public Lcom/android/server/lights/view/MessageView;
.super Landroid/view/View;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/view/MessageView$Star;,
        Lcom/android/server/lights/view/MessageView$PictureData;,
        Lcom/android/server/lights/view/MessageView$LineData;,
        Lcom/android/server/lights/view/MessageView$WaveConfig;
    }
.end annotation


# static fields
.field private static final LEFT_PENDDING:F = 708.0f

.field private static final RIGHT_PENDDING:F = 118.0f

.field public static final STAR_MAX:I = 0x64

.field public static final WAVE_LINE_NUM:I = 0x9

.field public static final WAVE_LINE_RANGE:I = 0x8

.field public static final WAVE_THICK:I = 0x2


# instance fields
.field private mAlphaTarX:F

.field private mCtrlTarX:F

.field private mDataList:Lcom/android/server/lights/view/MessageView$LineData;

.field private mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

.field private mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaint:Landroid/graphics/Paint;

.field private mSpringAnimation:Lmiui/animation/physics/SpringAnimation;

.field private mStarArr:[Lcom/android/server/lights/view/MessageView$Star;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/lights/view/MessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/lights/view/MessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/lights/view/MessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    new-instance v0, Lcom/android/server/lights/view/MessageView$PictureData;

    invoke-direct {v0, p0}, Lcom/android/server/lights/view/MessageView$PictureData;-><init>(Lcom/android/server/lights/view/MessageView;)V

    iput-object v0, p0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    .line 50
    new-instance v0, Lcom/android/server/lights/view/MessageView$PictureData;

    invoke-direct {v0, p0}, Lcom/android/server/lights/view/MessageView$PictureData;-><init>(Lcom/android/server/lights/view/MessageView;)V

    iput-object v0, p0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    .line 52
    new-instance v0, Lcom/android/server/lights/view/MessageView$LineData;

    invoke-direct {v0, p0}, Lcom/android/server/lights/view/MessageView$LineData;-><init>(Lcom/android/server/lights/view/MessageView;)V

    iput-object v0, p0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    .line 55
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/android/server/lights/view/MessageView$Star;

    iput-object v0, p0, Lcom/android/server/lights/view/MessageView;->mStarArr:[Lcom/android/server/lights/view/MessageView$Star;

    .line 75
    invoke-direct {p0}, Lcom/android/server/lights/view/MessageView;->init()V

    .line 76
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/lights/view/MessageView;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView;

    .line 36
    iget v0, p0, Lcom/android/server/lights/view/MessageView;->mCtrlTarX:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/lights/view/MessageView;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView;
    .param p1, "x1"    # F

    .line 36
    iput p1, p0, Lcom/android/server/lights/view/MessageView;->mCtrlTarX:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/lights/view/MessageView;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView;

    .line 36
    iget v0, p0, Lcom/android/server/lights/view/MessageView;->mAlphaTarX:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/lights/view/MessageView;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView;
    .param p1, "x1"    # F

    .line 36
    iput p1, p0, Lcom/android/server/lights/view/MessageView;->mAlphaTarX:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/lights/view/MessageView;)Lcom/android/server/lights/view/MessageView$PictureData;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView;

    .line 36
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/lights/view/MessageView;)Lcom/android/server/lights/view/MessageView$PictureData;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView;

    .line 36
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/lights/view/MessageView;)[Lcom/android/server/lights/view/MessageView$Star;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/view/MessageView;

    .line 36
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView;->mStarArr:[Lcom/android/server/lights/view/MessageView$Star;

    return-object v0
.end method

.method private init()V
    .registers 12

    .line 80
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/android/server/lights/view/MessageView;->setBackgroundColor(I)V

    .line 81
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView;->mLinearGradient:Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_38

    .line 82
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x450ca000    # 2250.0f

    const/4 v3, 0x3

    new-array v8, v3, [I

    const-string v3, "#ff6e02"

    .line 83
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

    iput-object v0, p0, Lcom/android/server/lights/view/MessageView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 87
    :cond_38
    move v0, v1

    .local v0, "i":I
    :goto_39
    const/16 v3, 0x9

    const/4 v4, -0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v0, v3, :cond_72

    .line 88
    iget-object v3, p0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v3, v3, Lcom/android/server/lights/view/MessageView$LineData;->mLeftPath:Ljava/util/List;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v3, p0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v3, v3, Lcom/android/server/lights/view/MessageView$LineData;->mRightPath:Ljava/util/List;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 92
    .local v3, "topPaint":Landroid/graphics/Paint;
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v4, p0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v4, v4, Lcom/android/server/lights/view/MessageView$LineData;->mPaint:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v3    # "topPaint":Landroid/graphics/Paint;
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 98
    .end local v0    # "i":I
    :cond_72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/lights/view/MessageView;->mPaint:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "inLightHigh":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 105
    .local v2, "inLightBlue":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 107
    .local v3, "inStar":Ljava/io/InputStream;
    :try_start_8d
    invoke-virtual {p0}, Lcom/android/server/lights/view/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110200c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    .line 108
    invoke-virtual {p0}, Lcom/android/server/lights/view/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110200c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 109
    invoke-virtual {p0}, Lcom/android/server/lights/view/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11020147

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 110
    iget-object v4, p0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    # setter for: Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/android/server/lights/view/MessageView$PictureData;->access$002(Lcom/android/server/lights/view/MessageView$PictureData;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 111
    iget-object v4, p0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    # setter for: Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/android/server/lights/view/MessageView$PictureData;->access$002(Lcom/android/server/lights/view/MessageView$PictureData;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 113
    iget-object v4, p0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Lcom/android/server/lights/view/MessageView$PictureData;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v4, v5}, Lcom/android/server/lights/view/MessageView$PictureData;->access$102(Lcom/android/server/lights/view/MessageView$PictureData;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 114
    iget-object v4, p0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Lcom/android/server/lights/view/MessageView$PictureData;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v4, v5}, Lcom/android/server/lights/view/MessageView$PictureData;->access$102(Lcom/android/server/lights/view/MessageView$PictureData;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 115
    iget-object v4, p0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v4}, Lcom/android/server/lights/view/MessageView$PictureData;->access$100(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Matrix;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 116
    iget-object v4, p0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v4}, Lcom/android/server/lights/view/MessageView$PictureData;->access$100(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V
    :try_end_eb
    .catchall {:try_start_8d .. :try_end_eb} :catchall_11f

    .line 120
    if-eqz v0, :cond_f3

    .line 121
    :try_start_ed
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_f3

    .line 131
    :catch_f1
    move-exception v4

    goto :goto_fe

    .line 124
    :cond_f3
    :goto_f3
    if-eqz v2, :cond_f8

    .line 125
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 128
    :cond_f8
    if-eqz v3, :cond_103

    .line 129
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_fd} :catch_f1

    goto :goto_103

    .line 131
    :goto_fe
    nop

    .line 132
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_104

    .line 133
    :cond_103
    :goto_103
    nop

    .line 136
    :goto_104
    nop

    .local v1, "i":I
    :goto_105
    const/16 v4, 0x64

    if-ge v1, v4, :cond_119

    .line 137
    iget-object v4, p0, Lcom/android/server/lights/view/MessageView;->mStarArr:[Lcom/android/server/lights/view/MessageView$Star;

    new-instance v5, Lcom/android/server/lights/view/MessageView$Star;

    invoke-virtual {p0}, Lcom/android/server/lights/view/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/lights/view/MessageView$Star;-><init>(Lcom/android/server/lights/view/MessageView;Landroid/content/Context;)V

    aput-object v5, v4, v1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_105

    .line 139
    .end local v1    # "i":I
    :cond_119
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/server/lights/view/MessageView;->setVisibility(I)V

    .line 140
    return-void

    .line 119
    :catchall_11f
    move-exception v1

    .line 120
    if-eqz v0, :cond_128

    .line 121
    :try_start_122
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_128

    .line 131
    :catch_126
    move-exception v4

    goto :goto_133

    .line 124
    :cond_128
    :goto_128
    if-eqz v2, :cond_12d

    .line 125
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 128
    :cond_12d
    if-eqz v3, :cond_138

    .line 129
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_132} :catch_126

    goto :goto_138

    .line 131
    :goto_133
    nop

    .line 132
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    nop

    .line 133
    :cond_138
    :goto_138
    throw v1
.end method


# virtual methods
.method public isAnimationRunning()Z
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView;->mSpringAnimation:Lmiui/animation/physics/SpringAnimation;

    if-eqz v0, :cond_b

    .line 264
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView;->mSpringAnimation:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    return v0

    .line 266
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 144
    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/lights/view/MessageView;->getWidth()I

    move-result v2

    .line 146
    .local v2, "width":I
    const/4 v3, 0x0

    .line 147
    .local v3, "index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a
    const/high16 v6, 0x44310000    # 708.0f

    const/16 v7, 0x9

    const/high16 v8, 0x42ec0000    # 118.0f

    if-ge v5, v7, :cond_59

    .line 148
    iget-object v7, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v7, v7, Lcom/android/server/lights/view/MessageView$LineData;->mLeftPath:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 149
    iget-object v7, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v7, v7, Lcom/android/server/lights/view/MessageView$LineData;->mLeftPath:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v9, v9, Lcom/android/server/lights/view/MessageView$LineData;->mConfig:Lcom/android/server/lights/view/MessageView$WaveConfig;

    iget v9, v9, Lcom/android/server/lights/view/MessageView$WaveConfig;->y:I

    int-to-float v9, v9

    invoke-virtual {v7, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 151
    iget-object v6, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v6, v6, Lcom/android/server/lights/view/MessageView$LineData;->mRightPath:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 152
    iget-object v6, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v6, v6, Lcom/android/server/lights/view/MessageView$LineData;->mRightPath:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    int-to-float v7, v2

    sub-float/2addr v7, v8

    iget-object v8, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v8, v8, Lcom/android/server/lights/view/MessageView$LineData;->mConfig:Lcom/android/server/lights/view/MessageView$WaveConfig;

    iget v8, v8, Lcom/android/server/lights/view/MessageView$WaveConfig;->y:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 147
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 156
    .end local v5    # "i":I
    :cond_59
    :goto_59
    iget-object v5, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v5, v5, Lcom/android/server/lights/view/MessageView$LineData;->mConfig:Lcom/android/server/lights/view/MessageView$WaveConfig;

    iget v5, v5, Lcom/android/server/lights/view/MessageView$WaveConfig;->waveWidth:I

    if-gt v3, v5, :cond_119

    .line 157
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_62
    if-ge v5, v7, :cond_115

    .line 158
    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v9, v9, Lcom/android/server/lights/view/MessageView$LineData;->mConfig:Lcom/android/server/lights/view/MessageView$WaveConfig;

    iget v9, v9, Lcom/android/server/lights/view/MessageView$WaveConfig;->waveHeight:I

    const/16 v10, 0x8

    mul-int/2addr v10, v5

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v10, v10, Lcom/android/server/lights/view/MessageView$LineData;->mConfig:Lcom/android/server/lights/view/MessageView$WaveConfig;

    iget v10, v10, Lcom/android/server/lights/view/MessageView$WaveConfig;->waveHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 159
    .local v9, "waveRate":F
    iget v10, v0, Lcom/android/server/lights/view/MessageView;->mAlphaTarX:F

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v11

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    float-to-double v10, v10

    const-wide v12, 0x3fd3333333333333L    # 0.3

    sub-double/2addr v10, v12

    double-to-float v10, v10

    .line 160
    .local v10, "waveAlpha":F
    const/high16 v11, 0x42b40000    # 90.0f

    int-to-float v12, v3

    iget-object v13, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v13, v13, Lcom/android/server/lights/view/MessageView$LineData;->mConfig:Lcom/android/server/lights/view/MessageView$WaveConfig;

    iget v13, v13, Lcom/android/server/lights/view/MessageView$WaveConfig;->waveCenter:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget-object v13, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v13, v13, Lcom/android/server/lights/view/MessageView$LineData;->mConfig:Lcom/android/server/lights/view/MessageView$WaveConfig;

    iget v13, v13, Lcom/android/server/lights/view/MessageView$WaveConfig;->waveWidth:I

    int-to-float v13, v13

    const/high16 v14, 0x43b40000    # 360.0f

    div-float/2addr v13, v14

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-double v11, v11

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v11, v13

    const-wide v13, 0x4066800000000000L    # 180.0

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    iget-object v13, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v13, v13, Lcom/android/server/lights/view/MessageView$LineData;->mConfig:Lcom/android/server/lights/view/MessageView$WaveConfig;

    iget v13, v13, Lcom/android/server/lights/view/MessageView$WaveConfig;->waveHeight:I

    int-to-float v13, v13

    mul-float/2addr v11, v13

    mul-float/2addr v11, v9

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v11, v13

    .line 163
    .local v11, "endX":F
    iget-object v13, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v13, v13, Lcom/android/server/lights/view/MessageView$LineData;->mLeftPath:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Path;

    add-float v14, v11, v6

    iget-object v15, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v15, v15, Lcom/android/server/lights/view/MessageView$LineData;->mConfig:Lcom/android/server/lights/view/MessageView$WaveConfig;

    iget v15, v15, Lcom/android/server/lights/view/MessageView$WaveConfig;->y:I

    add-int/2addr v15, v3

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 164
    iget-object v13, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v13, v13, Lcom/android/server/lights/view/MessageView$LineData;->mRightPath:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Path;

    int-to-float v14, v2

    sub-float/2addr v14, v11

    sub-float/2addr v14, v8

    iget-object v15, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v15, v15, Lcom/android/server/lights/view/MessageView$LineData;->mConfig:Lcom/android/server/lights/view/MessageView$WaveConfig;

    iget v15, v15, Lcom/android/server/lights/view/MessageView$WaveConfig;->y:I

    add-int/2addr v15, v3

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 165
    const/4 v13, 0x0

    cmpg-float v13, v10, v13

    if-gez v13, :cond_fa

    .line 166
    const/4 v10, 0x0

    goto :goto_100

    .line 167
    :cond_fa
    cmpl-float v12, v10, v12

    if-lez v12, :cond_100

    .line 168
    const/high16 v10, 0x3f800000    # 1.0f

    .line 170
    :cond_100
    :goto_100
    iget-object v12, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v12, v12, Lcom/android/server/lights/view/MessageView$LineData;->mPaint:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Paint;

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float/2addr v13, v10

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 157
    .end local v9    # "waveRate":F
    .end local v10    # "waveAlpha":F
    .end local v11    # "endX":F
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_62

    .line 173
    .end local v5    # "i":I
    :cond_115
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_59

    .line 176
    :cond_119
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_11a
    if-ge v5, v7, :cond_14d

    .line 177
    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v9, v9, Lcom/android/server/lights/view/MessageView$LineData;->mLeftPath:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v10, v10, Lcom/android/server/lights/view/MessageView$LineData;->mPaint:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 178
    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v9, v9, Lcom/android/server/lights/view/MessageView$LineData;->mRightPath:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/server/lights/view/MessageView;->mDataList:Lcom/android/server/lights/view/MessageView$LineData;

    iget-object v10, v10, Lcom/android/server/lights/view/MessageView$LineData;->mPaint:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 176
    add-int/lit8 v5, v5, 0x1

    goto :goto_11a

    .line 181
    .end local v5    # "i":I
    :cond_14d
    iget-object v5, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v5}, Lcom/android/server/lights/view/MessageView$PictureData;->access$100(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    iget-wide v9, v7, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleX:D

    double-to-float v7, v9

    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    iget-wide v9, v9, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleY:D

    double-to-float v9, v9

    invoke-virtual {v5, v7, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 182
    iget-object v5, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/server/lights/view/MessageView$PictureData;->access$000(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v5, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    .line 183
    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/server/lights/view/MessageView$PictureData;->access$000(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iget-object v5, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/server/lights/view/MessageView$PictureData;->access$000(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    iget-object v5, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v5}, Lcom/android/server/lights/view/MessageView$PictureData;->access$100(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Matrix;

    move-result-object v14

    const/4 v15, 0x1

    .line 182
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 184
    .local v5, "bitmapHigh":Landroid/graphics/Bitmap;
    iget-object v7, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v7}, Lcom/android/server/lights/view/MessageView$PictureData;->access$100(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Matrix;

    move-result-object v7

    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    iget-wide v9, v9, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleX:D

    double-to-float v9, v9

    iget-object v10, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    iget-wide v10, v10, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleY:D

    double-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 186
    iget-object v7, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/server/lights/view/MessageView$PictureData;->access$000(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v7, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/server/lights/view/MessageView$PictureData;->access$000(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iget-object v7, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    .line 187
    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/server/lights/view/MessageView$PictureData;->access$000(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    iget-object v7, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v7}, Lcom/android/server/lights/view/MessageView$PictureData;->access$100(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Matrix;

    move-result-object v14

    .line 186
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 188
    .local v7, "bitmapBlue":Landroid/graphics/Bitmap;
    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    iget-wide v9, v9, Lcom/android/server/lights/view/MessageView$PictureData;->mAlpha:D

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v9, v11

    const-wide/16 v13, 0x0

    if-lez v9, :cond_1d1

    .line 189
    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    iput-wide v11, v9, Lcom/android/server/lights/view/MessageView$PictureData;->mAlpha:D

    goto :goto_1dd

    .line 190
    :cond_1d1
    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    iget-wide v9, v9, Lcom/android/server/lights/view/MessageView$PictureData;->mAlpha:D

    cmpg-double v9, v9, v13

    if-gez v9, :cond_1dd

    .line 191
    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    iput-wide v13, v9, Lcom/android/server/lights/view/MessageView$PictureData;->mAlpha:D

    .line 193
    :cond_1dd
    :goto_1dd
    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mPaint:Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    move-object/from16 v17, v7

    iget-wide v6, v10, Lcom/android/server/lights/view/MessageView$PictureData;->mAlpha:D

    .end local v7    # "bitmapBlue":Landroid/graphics/Bitmap;
    .local v17, "bitmapBlue":Landroid/graphics/Bitmap;
    const-wide v18, 0x406fe00000000000L    # 255.0

    mul-double v6, v6, v18

    double-to-int v6, v6

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/lights/view/MessageView;->getHeight()I

    move-result v6

    int-to-double v6, v6

    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/android/server/lights/view/MessageView$PictureData;->access$000(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-double v9, v9

    iget-object v15, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    iget-wide v13, v15, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleY:D

    mul-double/2addr v9, v13

    sub-double/2addr v6, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v9

    double-to-int v6, v6

    .line 195
    .local v6, "top":I
    iget-object v7, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/server/lights/view/MessageView$PictureData;->access$000(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-double v13, v7

    iget-object v7, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    iget-wide v11, v7, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleX:D

    mul-double/2addr v13, v11

    div-double/2addr v13, v9

    const-wide v11, 0x4086200000000000L    # 708.0

    sub-double v13, v11, v13

    double-to-int v7, v13

    .line 196
    .local v7, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/lights/view/MessageView;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v8

    float-to-double v13, v13

    iget-object v15, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v15}, Lcom/android/server/lights/view/MessageView$PictureData;->access$000(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-double v11, v15

    iget-object v15, v0, Lcom/android/server/lights/view/MessageView;->mLightHigh:Lcom/android/server/lights/view/MessageView$PictureData;

    move-object/from16 v20, v5

    iget-wide v4, v15, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleX:D

    .end local v5    # "bitmapHigh":Landroid/graphics/Bitmap;
    .local v20, "bitmapHigh":Landroid/graphics/Bitmap;
    mul-double/2addr v11, v4

    div-double/2addr v11, v9

    sub-double/2addr v13, v11

    double-to-int v4, v13

    .line 197
    .local v4, "leftLeft":I
    int-to-float v5, v7

    int-to-float v11, v6

    iget-object v12, v0, Lcom/android/server/lights/view/MessageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v13, v20

    invoke-virtual {v1, v13, v5, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 198
    .end local v20    # "bitmapHigh":Landroid/graphics/Bitmap;
    .local v13, "bitmapHigh":Landroid/graphics/Bitmap;
    int-to-float v5, v4

    int-to-float v11, v6

    iget-object v12, v0, Lcom/android/server/lights/view/MessageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v5, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 199
    iget-object v5, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    iget-wide v11, v5, Lcom/android/server/lights/view/MessageView$PictureData;->mAlpha:D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v11, v14

    if-lez v5, :cond_25e

    .line 200
    iget-object v5, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    iput-wide v14, v5, Lcom/android/server/lights/view/MessageView$PictureData;->mAlpha:D

    goto :goto_26c

    .line 201
    :cond_25e
    iget-object v5, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    iget-wide v11, v5, Lcom/android/server/lights/view/MessageView$PictureData;->mAlpha:D

    const-wide/16 v14, 0x0

    cmpg-double v5, v11, v14

    if-gez v5, :cond_26c

    .line 202
    iget-object v5, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    iput-wide v14, v5, Lcom/android/server/lights/view/MessageView$PictureData;->mAlpha:D

    .line 204
    :cond_26c
    :goto_26c
    iget-object v5, v0, Lcom/android/server/lights/view/MessageView;->mPaint:Landroid/graphics/Paint;

    iget-object v11, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    iget-wide v11, v11, Lcom/android/server/lights/view/MessageView$PictureData;->mAlpha:D

    mul-double v11, v11, v18

    double-to-int v11, v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/lights/view/MessageView;->getHeight()I

    move-result v5

    int-to-double v11, v5

    iget-object v5, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/server/lights/view/MessageView$PictureData;->access$000(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v14, v5

    iget-object v5, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    iget-wide v8, v5, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleY:D

    mul-double/2addr v14, v8

    sub-double/2addr v11, v14

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v8

    double-to-int v5, v11

    .line 206
    .end local v6    # "top":I
    .local v5, "top":I
    iget-object v6, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/android/server/lights/view/MessageView$PictureData;->access$000(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v10, v6

    iget-object v6, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    iget-wide v14, v6, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleX:D

    mul-double/2addr v10, v14

    div-double/2addr v10, v8

    const-wide v8, 0x4086200000000000L    # 708.0

    sub-double v11, v8, v10

    double-to-int v6, v11

    .line 207
    .end local v7    # "left":I
    .local v6, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/lights/view/MessageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42ec0000    # 118.0f

    sub-float/2addr v7, v8

    float-to-double v7, v7

    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    # getter for: Lcom/android/server/lights/view/MessageView$PictureData;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/android/server/lights/view/MessageView$PictureData;->access$000(Lcom/android/server/lights/view/MessageView$PictureData;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-double v9, v9

    iget-object v11, v0, Lcom/android/server/lights/view/MessageView;->mLightBlue:Lcom/android/server/lights/view/MessageView$PictureData;

    iget-wide v11, v11, Lcom/android/server/lights/view/MessageView$PictureData;->mScaleX:D

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    sub-double/2addr v7, v9

    double-to-int v4, v7

    .line 208
    int-to-float v7, v6

    int-to-float v8, v5

    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, v17

    invoke-virtual {v1, v10, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 209
    .end local v17    # "bitmapBlue":Landroid/graphics/Bitmap;
    .local v10, "bitmapBlue":Landroid/graphics/Bitmap;
    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, v0, Lcom/android/server/lights/view/MessageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 211
    iget-object v7, v0, Lcom/android/server/lights/view/MessageView;->mStarArr:[Lcom/android/server/lights/view/MessageView$Star;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2dd
    if-ge v9, v8, :cond_345

    aget-object v11, v7, v9

    .line 212
    .local v11, "star":Lcom/android/server/lights/view/MessageView$Star;
    iget-object v12, v0, Lcom/android/server/lights/view/MessageView;->mPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/server/lights/view/MessageView$Star;->prop:[F
    invoke-static {v11}, Lcom/android/server/lights/view/MessageView$Star;->access$200(Lcom/android/server/lights/view/MessageView$Star;)[F

    move-result-object v14

    const/4 v15, 0x2

    aget v14, v14, v15

    float-to-int v14, v14

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 213
    # getter for: Lcom/android/server/lights/view/MessageView$Star;->mStarBitmap:Landroid/graphics/Bitmap;
    invoke-static {v11}, Lcom/android/server/lights/view/MessageView$Star;->access$300(Lcom/android/server/lights/view/MessageView$Star;)Landroid/graphics/Bitmap;

    move-result-object v12

    # getter for: Lcom/android/server/lights/view/MessageView$Star;->prop:[F
    invoke-static {v11}, Lcom/android/server/lights/view/MessageView$Star;->access$200(Lcom/android/server/lights/view/MessageView$Star;)[F

    move-result-object v14

    const/16 v17, 0x0

    aget v14, v14, v17

    const/high16 v16, 0x44310000    # 708.0f

    add-float v14, v14, v16

    # getter for: Lcom/android/server/lights/view/MessageView$Star;->prop:[F
    invoke-static {v11}, Lcom/android/server/lights/view/MessageView$Star;->access$200(Lcom/android/server/lights/view/MessageView$Star;)[F

    move-result-object v17

    const/16 v18, 0x1

    aget v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/lights/view/MessageView;->getHeight()I

    move-result v19

    move/from16 v21, v2

    div-int/lit8 v2, v19, 0x2

    .end local v2    # "width":I
    .local v21, "width":I
    int-to-float v2, v2

    add-float v2, v17, v2

    iget-object v15, v0, Lcom/android/server/lights/view/MessageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v14, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 214
    # getter for: Lcom/android/server/lights/view/MessageView$Star;->mStarBitmap:Landroid/graphics/Bitmap;
    invoke-static {v11}, Lcom/android/server/lights/view/MessageView$Star;->access$300(Lcom/android/server/lights/view/MessageView$Star;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/lights/view/MessageView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v14, 0x42ec0000    # 118.0f

    sub-float/2addr v12, v14

    # getter for: Lcom/android/server/lights/view/MessageView$Star;->prop:[F
    invoke-static {v11}, Lcom/android/server/lights/view/MessageView$Star;->access$200(Lcom/android/server/lights/view/MessageView$Star;)[F

    move-result-object v15

    const/16 v17, 0x0

    aget v15, v15, v17

    sub-float/2addr v12, v15

    # getter for: Lcom/android/server/lights/view/MessageView$Star;->prop:[F
    invoke-static {v11}, Lcom/android/server/lights/view/MessageView$Star;->access$200(Lcom/android/server/lights/view/MessageView$Star;)[F

    move-result-object v15

    aget v15, v15, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/lights/view/MessageView;->getHeight()I

    move-result v18

    const/16 v19, 0x2

    div-int/lit8 v14, v18, 0x2

    int-to-float v14, v14

    add-float/2addr v15, v14

    iget-object v14, v0, Lcom/android/server/lights/view/MessageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v15, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 211
    .end local v11    # "star":Lcom/android/server/lights/view/MessageView$Star;
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v21

    goto :goto_2dd

    .line 217
    .end local v21    # "width":I
    .restart local v2    # "width":I
    :cond_345
    move/from16 v21, v2

    .end local v2    # "width":I
    .restart local v21    # "width":I
    return-void
.end method

.method public startAnimation()V
    .registers 7

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/lights/view/MessageView;->setVisibility(I)V

    .line 221
    new-instance v1, Lmiui/animation/physics/SpringForce;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiui/animation/physics/SpringForce;-><init>(F)V

    .line 222
    .local v1, "springForce":Lmiui/animation/physics/SpringForce;
    const v3, 0x3f7ae148    # 0.98f

    invoke-virtual {v1, v3}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    .line 223
    const v3, 0x4142e148    # 12.18f

    invoke-virtual {v1, v3}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    .line 224
    new-instance v3, Lmiui/animation/property/FloatValueHolder;

    invoke-direct {v3}, Lmiui/animation/property/FloatValueHolder;-><init>()V

    .line 225
    .local v3, "valueHolder":Lmiui/animation/property/FloatValueHolder;
    new-instance v4, Lmiui/animation/physics/SpringAnimation;

    invoke-direct {v4, v3}, Lmiui/animation/physics/SpringAnimation;-><init>(Lmiui/animation/property/FloatValueHolder;)V

    const/high16 v5, 0x44fa0000    # 2000.0f

    invoke-virtual {v4, v5}, Lmiui/animation/physics/SpringAnimation;->setStartVelocity(F)Lmiui/animation/physics/DynamicAnimation;

    move-result-object v4

    check-cast v4, Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v4, v2}, Lmiui/animation/physics/SpringAnimation;->setStartValue(F)Lmiui/animation/physics/DynamicAnimation;

    move-result-object v2

    check-cast v2, Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v2, v1}, Lmiui/animation/physics/SpringAnimation;->setSpring(Lmiui/animation/physics/SpringForce;)Lmiui/animation/physics/SpringAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/lights/view/MessageView;->mSpringAnimation:Lmiui/animation/physics/SpringAnimation;

    .line 226
    iget-object v2, p0, Lcom/android/server/lights/view/MessageView;->mSpringAnimation:Lmiui/animation/physics/SpringAnimation;

    new-instance v4, Lcom/android/server/lights/view/MessageView$1;

    invoke-direct {v4, p0}, Lcom/android/server/lights/view/MessageView$1;-><init>(Lcom/android/server/lights/view/MessageView;)V

    invoke-virtual {v2, v4}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    .line 244
    iget-object v2, p0, Lcom/android/server/lights/view/MessageView;->mSpringAnimation:Lmiui/animation/physics/SpringAnimation;

    new-instance v4, Lcom/android/server/lights/view/MessageView$2;

    invoke-direct {v4, p0}, Lcom/android/server/lights/view/MessageView$2;-><init>(Lcom/android/server/lights/view/MessageView;)V

    invoke-virtual {v2, v4}, Lmiui/animation/physics/SpringAnimation;->addEndListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiui/animation/physics/DynamicAnimation;

    .line 255
    iget-object v2, p0, Lcom/android/server/lights/view/MessageView;->mStarArr:[Lcom/android/server/lights/view/MessageView$Star;

    array-length v4, v2

    :goto_4b
    if-ge v0, v4, :cond_55

    aget-object v5, v2, v0

    .line 256
    .local v5, "star":Lcom/android/server/lights/view/MessageView$Star;
    invoke-virtual {v5}, Lcom/android/server/lights/view/MessageView$Star;->boom()V

    .line 255
    .end local v5    # "star":Lcom/android/server/lights/view/MessageView$Star;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 259
    :cond_55
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView;->mSpringAnimation:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    .line 260
    return-void
.end method

.method public stopAnimation()V
    .registers 5

    .line 271
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView;->mStarArr:[Lcom/android/server/lights/view/MessageView$Star;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 272
    .local v3, "star":Lcom/android/server/lights/view/MessageView$Star;
    if-eqz v3, :cond_d

    .line 273
    invoke-virtual {v3}, Lcom/android/server/lights/view/MessageView$Star;->stop()V

    .line 271
    .end local v3    # "star":Lcom/android/server/lights/view/MessageView$Star;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 276
    :cond_10
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView;->mSpringAnimation:Lmiui/animation/physics/SpringAnimation;

    if-eqz v0, :cond_19

    .line 277
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView;->mSpringAnimation:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->skipToEnd()V

    .line 279
    :cond_19
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/lights/view/MessageView;->setVisibility(I)V

    .line 280
    return-void
.end method
