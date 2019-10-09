.class Lcom/android/server/wm/TalkbackWatermark;
.super Ljava/lang/Object;
.source "TalkbackWatermark.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TalkbackWatermark"


# instance fields
.field private final mDetDp:F

.field private final mDetPx:I

.field private final mDisplay:Landroid/view/Display;

.field private mDrawNeeded:Z

.field private mHasDrawn:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mPaddingDp:F

.field private final mPaddingPx:I

.field private final mString1:Ljava/lang/String;

.field private final mString2:Ljava/lang/String;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mTextSizeDp:F

.field private final mTextSizePx:I

.field private final mTitleSizeDp:F

.field private final mTitleSizePx:F

.field private final mXProportion:F

.field private final mYProportionTop:F


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;Landroid/content/Context;)V
    .registers 11
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const v0, 0x41cb999a    # 25.45f

    iput v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mTitleSizeDp:F

    .line 52
    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mTextSizeDp:F

    .line 53
    const v2, 0x41a2f5c3    # 20.37f

    iput v2, p0, Lcom/android/server/wm/TalkbackWatermark;->mDetDp:F

    .line 54
    const v3, 0x4145c28f    # 12.36f

    iput v3, p0, Lcom/android/server/wm/TalkbackWatermark;->mPaddingDp:F

    .line 59
    const v4, 0x3ecccccd    # 0.4f

    iput v4, p0, Lcom/android/server/wm/TalkbackWatermark;->mYProportionTop:F

    .line 60
    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p0, Lcom/android/server/wm/TalkbackWatermark;->mXProportion:F

    .line 62
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 63
    new-instance v5, Landroid/view/Surface;

    invoke-direct {v5}, Landroid/view/Surface;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurface:Landroid/view/Surface;

    .line 64
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/TalkbackWatermark;->mLastDW:I

    .line 65
    iput v5, p0, Lcom/android/server/wm/TalkbackWatermark;->mLastDH:I

    .line 66
    iput-boolean v5, p0, Lcom/android/server/wm/TalkbackWatermark;->mDrawNeeded:Z

    .line 67
    iput-boolean v5, p0, Lcom/android/server/wm/TalkbackWatermark;->mHasDrawn:Z

    .line 74
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x110b010c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/TalkbackWatermark;->mString1:Ljava/lang/String;

    .line 75
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x110b010d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/TalkbackWatermark;->mString2:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/TalkbackWatermark;->mDisplay:Landroid/view/Display;

    .line 79
    iget v5, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    const/high16 v6, 0x43200000    # 160.0f

    div-float/2addr v5, v6

    .line 80
    .local v5, "constNum":F
    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mTextSizePx:I

    .line 81
    mul-float/2addr v2, v5

    float-to-int v1, v2

    iput v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mDetPx:I

    .line 82
    mul-float/2addr v3, v5

    float-to-int v1, v3

    iput v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mPaddingPx:I

    .line 83
    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mTitleSizePx:F

    .line 85
    move-object v0, v4

    .line 87
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_6a
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "TalkbackWatermarkSurface"

    .line 88
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 89
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, -0x3

    .line 90
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    move-object v0, v1

    .line 92
    iget-object v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 93
    const v1, 0xf4240

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 95
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 96
    iget-object v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_9e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_6a .. :try_end_9e} :catch_9f

    .line 99
    goto :goto_b6

    .line 97
    :catch_9f
    move-exception v1

    .line 98
    .local v1, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "TalkbackWatermark"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createrSurface e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v1    # "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_b6
    iput-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 101
    return-void
.end method

.method private drawIfNeeded()V
    .registers 20

    .line 113
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/server/wm/TalkbackWatermark;->mDrawNeeded:Z

    if-eqz v0, :cond_ac

    .line 114
    iget v2, v1, Lcom/android/server/wm/TalkbackWatermark;->mLastDW:I

    .line 115
    .local v2, "dw":I
    iget v3, v1, Lcom/android/server/wm/TalkbackWatermark;->mLastDH:I

    .line 117
    .local v3, "dh":I
    new-instance v0, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v0

    .line 118
    .local v5, "dirty":Landroid/graphics/Rect;
    const/4 v0, 0x0

    move-object v6, v0

    .line 120
    .local v6, "c":Landroid/graphics/Canvas;
    :try_start_13
    iget-object v0, v1, Lcom/android/server/wm/TalkbackWatermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_19} :catch_1d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_13 .. :try_end_19} :catch_1b

    move-object v6, v0

    .line 123
    :goto_1a
    goto :goto_1f

    .line 122
    :catch_1b
    move-exception v0

    goto :goto_1f

    .line 121
    :catch_1d
    move-exception v0

    goto :goto_1a

    .line 125
    :goto_1f
    if-eqz v6, :cond_a6

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    if-ne v0, v2, :cond_a6

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    if-eq v0, v3, :cond_2e

    goto :goto_a6

    .line 130
    :cond_2e
    iput-boolean v4, v1, Lcom/android/server/wm/TalkbackWatermark;->mDrawNeeded:Z

    .line 132
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v4, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 134
    const/16 v0, 0x3c

    .line 135
    .local v0, "offset":I
    const/high16 v7, 0x3f000000    # 0.5f

    int-to-float v8, v2

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 136
    .local v7, "x":I
    const v8, 0x3ecccccd    # 0.4f

    int-to-float v9, v3

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x3c

    .line 138
    .local v8, "y":I
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 139
    .local v9, "paint":Landroid/graphics/Paint;
    iget v11, v1, Lcom/android/server/wm/TalkbackWatermark;->mTitleSizePx:F

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 140
    sget-object v11, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v11, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 141
    const v4, -0x4c4c4d

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 144
    iget-object v4, v1, Lcom/android/server/wm/TalkbackWatermark;->mString1:Ljava/lang/String;

    int-to-float v11, v7

    int-to-float v12, v8

    invoke-virtual {v6, v4, v11, v12, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    iget v4, v1, Lcom/android/server/wm/TalkbackWatermark;->mTextSizePx:I

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    new-instance v13, Landroid/text/TextPaint;

    invoke-direct {v13, v9}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 148
    .local v13, "textPaint":Landroid/text/TextPaint;
    new-instance v4, Landroid/text/StaticLayout;

    iget-object v12, v1, Lcom/android/server/wm/TalkbackWatermark;->mString2:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    iget v14, v1, Lcom/android/server/wm/TalkbackWatermark;->mPaddingPx:I

    sub-int v14, v11, v14

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v4

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 149
    .local v4, "staticLayout":Landroid/text/StaticLayout;
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 150
    int-to-float v11, v7

    iget v12, v1, Lcom/android/server/wm/TalkbackWatermark;->mDetPx:I

    add-int/2addr v12, v8

    int-to-float v12, v12

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    invoke-virtual {v4, v6}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 152
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 154
    iget-object v11, v1, Lcom/android/server/wm/TalkbackWatermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v6}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 155
    iput-boolean v10, v1, Lcom/android/server/wm/TalkbackWatermark;->mHasDrawn:Z

    .end local v0    # "offset":I
    .end local v2    # "dw":I
    .end local v3    # "dh":I
    .end local v4    # "staticLayout":Landroid/text/StaticLayout;
    .end local v5    # "dirty":Landroid/graphics/Rect;
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v7    # "x":I
    .end local v8    # "y":I
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v13    # "textPaint":Landroid/text/TextPaint;
    goto :goto_ac

    .line 126
    .restart local v2    # "dw":I
    .restart local v3    # "dh":I
    .restart local v5    # "dirty":Landroid/graphics/Rect;
    .restart local v6    # "c":Landroid/graphics/Canvas;
    :cond_a6
    :goto_a6
    iget-object v0, v1, Lcom/android/server/wm/TalkbackWatermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v6}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 127
    return-void

    .line 157
    .end local v2    # "dw":I
    .end local v3    # "dh":I
    .end local v5    # "dirty":Landroid/graphics/Rect;
    .end local v6    # "c":Landroid/graphics/Canvas;
    :cond_ac
    :goto_ac
    return-void
.end method


# virtual methods
.method positionSurface(II)V
    .registers 4
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .line 104
    iget v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mLastDW:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mLastDH:I

    if-eq v0, p2, :cond_14

    .line 105
    :cond_8
    iput p1, p0, Lcom/android/server/wm/TalkbackWatermark;->mLastDW:I

    .line 106
    iput p2, p0, Lcom/android/server/wm/TalkbackWatermark;->mLastDH:I

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mDrawNeeded:Z

    .line 110
    :cond_14
    return-void
.end method

.method setVisibility(Z)V
    .registers 3
    .param p1, "show"    # Z

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TalkbackWatermark;->setVisibility(ZZ)V

    .line 161
    return-void
.end method

.method setVisibility(ZZ)V
    .registers 4
    .param p1, "show"    # Z
    .param p2, "destroy"    # Z

    .line 163
    if-eqz p1, :cond_f

    .line 164
    invoke-direct {p0}, Lcom/android/server/wm/TalkbackWatermark;->drawIfNeeded()V

    .line 165
    iget-boolean v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mHasDrawn:Z

    if-eqz v0, :cond_2c

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_2c

    .line 169
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2c

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 171
    if-eqz p2, :cond_2c

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 175
    iput-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurface:Landroid/view/Surface;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mHasDrawn:Z

    .line 180
    :cond_2c
    :goto_2c
    return-void
.end method
