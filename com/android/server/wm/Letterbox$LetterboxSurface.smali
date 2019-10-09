.class Lcom/android/server/wm/Letterbox$LetterboxSurface;
.super Ljava/lang/Object;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Letterbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LetterboxSurface"
.end annotation


# instance fields
.field private final mLayoutFrame:Landroid/graphics/Rect;

.field private mSurface:Landroid/view/SurfaceControl;

.field private final mSurfaceFrame:Landroid/graphics/Rect;

.field private mSurfaceShown:Z

.field private final mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/Letterbox;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V
    .registers 3
    .param p2, "type"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 143
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrame:Landroid/graphics/Rect;

    .line 145
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceShown:Z

    .line 148
    iput-object p2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mType:Ljava/lang/String;

    .line 149
    return-void
.end method

.method private createSurface()V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    # getter for: Lcom/android/server/wm/Letterbox;->mFactory:Ljava/util/function/Supplier;
    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->access$000(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Letterbox - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 162
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setColorLayer(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_46

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setColor([F)V

    .line 165
    return-void

    nop

    :array_46
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 192
    return-void

    .line 194
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_21

    .line 197
    invoke-direct {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->createSurface()V

    .line 199
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceShown:Z

    goto :goto_56

    .line 204
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_56

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceShown:Z

    .line 209
    :cond_56
    :goto_56
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 172
    :cond_c
    return-void
.end method

.method public getHeight()I
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method hideLetterboxSurface(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceShown:Z

    if-eqz v0, :cond_13

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceShown:Z

    .line 220
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 222
    :cond_13
    return-void
.end method

.method public isOverlappingWith(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 183
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getHeight()I

    move-result v0

    if-gtz v0, :cond_d

    goto :goto_14

    .line 186
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrame:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 184
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public layout(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_19

    .line 155
    return-void

    .line 157
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 158
    return-void
.end method

.method public needsApplySurfaceChanges()Z
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
