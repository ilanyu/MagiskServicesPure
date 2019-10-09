.class Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;
.super Ljava/lang/Object;
.source "MultiWindowAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiWindowAnimSurface"
.end annotation


# static fields
.field static final FREEZE_LAYER:I = 0x1e8481


# instance fields
.field mRect:Landroid/graphics/Rect;

.field mRotation:I

.field mSurface:Landroid/view/SurfaceControl;

.field mTmpFloats:[F

.field mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;IIIIII)V
    .registers 16
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "layerStack"    # I
    .param p7, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 163
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 164
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    .line 165
    sub-int v0, p4, p2

    .line 166
    .local v0, "w":I
    sub-int v1, p5, p3

    .line 167
    .local v1, "h":I
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 168
    iput p7, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRotation:I

    .line 169
    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2, p1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v3, "MultiWindowAnimSurface"

    .line 170
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 171
    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 172
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 173
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 176
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2}, Landroid/view/Surface;-><init>()V

    .line 177
    .local v2, "sur":Landroid/view/Surface;
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 178
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 179
    invoke-virtual {v2}, Landroid/view/Surface;->destroy()V

    .line 180
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, p6}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 181
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    const v4, 0x1e8481

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 183
    iget v3, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRotation:I

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_a2

    goto :goto_a0

    .line 197
    :pswitch_70
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v7, v1

    invoke-virtual {v3, v7, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 198
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v6, v5, v4, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_a0

    .line 193
    :pswitch_7c
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v0

    int-to-float v7, v1

    invoke-virtual {v3, v5, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 194
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4, v6, v6, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 195
    goto :goto_a0

    .line 189
    :pswitch_89
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v7, v0

    invoke-virtual {v3, v6, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 190
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v6, v4, v5, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 191
    goto :goto_a0

    .line 185
    :pswitch_95
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v6, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 186
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v5, v6, v6, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 187
    nop

    .line 202
    :goto_a0
    return-void

    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_95
        :pswitch_89
        :pswitch_7c
        :pswitch_70
    .end packed-switch
.end method


# virtual methods
.method kill()V
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 245
    :cond_c
    return-void
.end method

.method setAnimationTransform(Landroid/view/animation/Transformation;)V
    .registers 12
    .param p1, "transformation"    # Landroid/view/animation/Transformation;

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 207
    .local v0, "left":F
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 208
    .local v1, "top":F
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 209
    .local v2, "width":F
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 210
    .local v3, "height":F
    iget v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRotation:I

    packed-switch v4, :pswitch_data_96

    goto :goto_5c

    .line 223
    :pswitch_27
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 224
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v0

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5c

    .line 219
    :pswitch_36
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 220
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v2, v0

    sub-float v6, v3, v1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 221
    goto :goto_5c

    .line 215
    :pswitch_47
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 216
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v2, v1

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 217
    goto :goto_5c

    .line 212
    :pswitch_56
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 213
    nop

    .line 227
    :goto_5c
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 228
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 229
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 231
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 232
    return-void

    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_56
        :pswitch_47
        :pswitch_36
        :pswitch_27
    .end packed-switch
.end method

.method show()V
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 238
    :cond_9
    return-void
.end method
