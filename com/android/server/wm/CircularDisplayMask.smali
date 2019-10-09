.class Lcom/android/server/wm/CircularDisplayMask;
.super Ljava/lang/Object;
.source "CircularDisplayMask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDimensionsUnequal:Z

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private mMaskThickness:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRotation:I

.field private mScreenOffset:I

.field private mScreenSize:Landroid/graphics/Point;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;III)V
    .registers 11
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "zOrder"    # I
    .param p3, "screenOffset"    # I
    .param p4, "maskThickness"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    .line 46
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    .line 53
    iput-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    .line 58
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 60
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    .line 61
    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 62
    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, p3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4c

    .line 63
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen dimensions of displayId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "are not equal, circularMask will not be drawn."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-boolean v3, p0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    .line 68
    :cond_4c
    const/4 v1, 0x0

    .line 70
    .local v1, "ctrl":Landroid/view/SurfaceControl;
    :try_start_4d
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v4, "CircularDisplayMask"

    .line 71
    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 72
    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v4, -0x3

    .line 73
    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    move-object v1, v2

    .line 76
    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 77
    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 78
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 79
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 80
    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_83
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4d .. :try_end_83} :catch_84

    .line 82
    goto :goto_85

    .line 81
    :catch_84
    move-exception v2

    .line 83
    :goto_85
    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 84
    iput-boolean v3, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    .line 85
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 88
    iput p3, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    .line 89
    iput p4, p0, Lcom/android/server/wm/CircularDisplayMask;->mMaskThickness:I

    .line 90
    return-void
.end method

.method private drawIfNeeded()V
    .registers 8

    .line 93
    iget-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    if-eqz v0, :cond_6c

    iget-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mVisible:Z

    if-eqz v0, :cond_6c

    iget-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    if-eqz v0, :cond_d

    goto :goto_6c

    .line 96
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    .line 98
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v1

    .line 99
    .local v0, "dirty":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 101
    .local v1, "c":Landroid/graphics/Canvas;
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_25} :catch_29
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1f .. :try_end_25} :catch_27

    move-object v1, v2

    .line 104
    :goto_26
    goto :goto_2b

    .line 103
    :catch_27
    move-exception v2

    goto :goto_2b

    .line 102
    :catch_29
    move-exception v2

    goto :goto_26

    .line 105
    :goto_2b
    if-nez v1, :cond_2e

    .line 106
    return-void

    .line 108
    :cond_2e
    iget v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_6e

    goto :goto_4f

    .line 120
    :pswitch_35
    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v4, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_4f

    .line 116
    :pswitch_3f
    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 117
    goto :goto_4f

    .line 112
    :pswitch_49
    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 113
    nop

    .line 124
    :goto_4f
    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    .line 125
    .local v2, "circleRadius":I
    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 128
    int-to-float v3, v2

    int-to-float v4, v2

    iget v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mMaskThickness:I

    sub-int v5, v2, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    iget-object v3, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 130
    return-void

    .line 94
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "circleRadius":I
    :cond_6c
    :goto_6c
    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_49
        :pswitch_49
        :pswitch_3f
        :pswitch_35
    .end packed-switch
.end method


# virtual methods
.method positionSurface(III)V
    .registers 5
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "rotation"    # I

    .line 148
    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDW:I

    if-ne v0, p1, :cond_d

    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDH:I

    if-ne v0, p2, :cond_d

    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    if-ne v0, p3, :cond_d

    .line 149
    return-void

    .line 151
    :cond_d
    iput p1, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDW:I

    .line 152
    iput p2, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDH:I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    .line 154
    iput p3, p0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    .line 155
    invoke-direct {p0}, Lcom/android/server/wm/CircularDisplayMask;->drawIfNeeded()V

    .line 156
    return-void
.end method

.method public setVisibility(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 136
    return-void

    .line 138
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/CircularDisplayMask;->mVisible:Z

    .line 139
    invoke-direct {p0}, Lcom/android/server/wm/CircularDisplayMask;->drawIfNeeded()V

    .line 140
    if-eqz p1, :cond_12

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_17

    .line 143
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 145
    :goto_17
    return-void
.end method
