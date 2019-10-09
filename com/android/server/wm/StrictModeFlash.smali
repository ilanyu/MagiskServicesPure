.class Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "StrictModeFlash.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mThickness:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    .line 42
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/wm/StrictModeFlash;->mThickness:I

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    const/4 v1, 0x1

    :try_start_10
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v3, "StrictModeFlash"

    .line 48
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {v2, v1, v1}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, -0x3

    .line 50
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    move-object v0, v2

    .line 52
    const v2, 0xf6950

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 54
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 55
    iget-object v2, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_3a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_10 .. :try_end_3a} :catch_3b

    .line 57
    goto :goto_3c

    .line 56
    :catch_3b
    move-exception v2

    .line 58
    :goto_3c
    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 59
    iput-boolean v1, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 60
    return-void
.end method

.method private drawIfNeeded()V
    .registers 9

    .line 63
    iget-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    if-nez v0, :cond_5

    .line 64
    return-void

    .line 66
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 67
    iget v1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 68
    .local v1, "dw":I
    iget v2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 70
    .local v2, "dh":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    .local v3, "dirty":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 73
    .local v4, "c":Landroid/graphics/Canvas;
    :try_start_12
    iget-object v5, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v5
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_18} :catch_1c
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_12 .. :try_end_18} :catch_1a

    move-object v4, v5

    .line 76
    :goto_19
    goto :goto_1e

    .line 75
    :catch_1a
    move-exception v5

    goto :goto_1e

    .line 74
    :catch_1c
    move-exception v5

    goto :goto_19

    .line 77
    :goto_1e
    if-nez v4, :cond_21

    .line 78
    return-void

    .line 82
    :cond_21
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 83
    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x14

    invoke-direct {v5, v0, v0, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 84
    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 85
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 87
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 88
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v0, v0, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 89
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 90
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 92
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 93
    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v7, v1, -0x14

    invoke-direct {v6, v7, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 94
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 95
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 97
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 98
    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v7, v2, -0x14

    invoke-direct {v6, v0, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 99
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 100
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 103
    return-void
.end method


# virtual methods
.method positionSurface(II)V
    .registers 4
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .line 120
    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    if-ne v0, p2, :cond_9

    .line 121
    return-void

    .line 123
    :cond_9
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 124
    iput p2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 127
    return-void
.end method

.method public setVisibility(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 109
    return-void

    .line 111
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/StrictModeFlash;->drawIfNeeded()V

    .line 112
    if-eqz p1, :cond_10

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_15

    .line 115
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 117
    :goto_15
    return-void
.end method
