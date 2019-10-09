.class Lcom/android/server/wm/BlackFrame$BlackSurface;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BlackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlackSurface"
.end annotation


# instance fields
.field final layer:I

.field final left:I

.field final surface:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/wm/BlackFrame;

.field final top:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V
    .registers 13
    .param p1, "this$0"    # Lcom/android/server/wm/BlackFrame;
    .param p2, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "layer"    # I
    .param p4, "l"    # I
    .param p5, "t"    # I
    .param p6, "r"    # I
    .param p7, "b"    # I
    .param p8, "dc"    # Lcom/android/server/wm/DisplayContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p4, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    .line 47
    iput p5, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    .line 48
    iput p3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->layer:I

    .line 49
    sub-int v0, p6, p4

    .line 50
    .local v0, "w":I
    sub-int v1, p7, p5

    .line 52
    .local v1, "h":I
    invoke-virtual {p8}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v3, "BlackSurface"

    .line 53
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 54
    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 55
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setColorLayer(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 56
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    .line 59
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 60
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 61
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 64
    return-void
.end method


# virtual methods
.method clearMatrix(Landroid/view/SurfaceControl$Transaction;)V
    .registers 8
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 91
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 92
    return-void
.end method

.method setAlpha(Landroid/view/SurfaceControl$Transaction;F)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "alpha"    # F

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 68
    return-void
.end method

.method setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    .registers 12
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 76
    iget-object v4, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v1, 0x0

    aget v5, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v1, 0x3

    aget v6, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v1, 0x4

    aget v8, v0, v1

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 88
    return-void
.end method
