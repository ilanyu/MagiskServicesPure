.class public Lcom/android/server/wm/BlackFrame;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BlackFrame$BlackSurface;
    }
.end annotation


# instance fields
.field final mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

.field final mForceDefaultOrientation:Z

.field final mInnerRect:Landroid/graphics/Rect;

.field final mOuterRect:Landroid/graphics/Rect;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;Z)V
    .registers 24
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "outer"    # Landroid/graphics/Rect;
    .param p3, "inner"    # Landroid/graphics/Rect;
    .param p4, "layer"    # I
    .param p5, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p6, "forceDefaultOrientation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 98
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wm/BlackFrame$BlackSurface;

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    .line 119
    const/4 v13, 0x0

    .line 121
    .local v13, "success":Z
    move/from16 v14, p6

    iput-boolean v14, v10, Lcom/android/server/wm/BlackFrame;->mForceDefaultOrientation:Z

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    .line 128
    :try_start_2e
    iget v0, v11, Landroid/graphics/Rect;->top:I

    iget v1, v12, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_4f

    .line 129
    iget-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v15, 0x0

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v11, Landroid/graphics/Rect;->left:I

    iget v6, v11, Landroid/graphics/Rect;->top:I

    iget v7, v12, Landroid/graphics/Rect;->right:I

    iget v8, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v1, v16

    move-object v2, v10

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v16, v0, v15

    .line 132
    :cond_4f
    iget v0, v11, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_70

    .line 133
    iget-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v15, 0x1

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v11, Landroid/graphics/Rect;->left:I

    iget v6, v12, Landroid/graphics/Rect;->top:I

    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, v16

    move-object v2, v10

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v16, v0, v15

    .line 136
    :cond_70
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    iget v1, v12, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_91

    .line 137
    iget-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v15, 0x2

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v12, Landroid/graphics/Rect;->left:I

    iget v6, v12, Landroid/graphics/Rect;->bottom:I

    iget v7, v11, Landroid/graphics/Rect;->right:I

    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, v16

    move-object v2, v10

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v16, v0, v15

    .line 140
    :cond_91
    iget v0, v11, Landroid/graphics/Rect;->right:I

    iget v1, v12, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_b2

    .line 141
    iget-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v15, 0x3

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v12, Landroid/graphics/Rect;->right:I

    iget v6, v11, Landroid/graphics/Rect;->top:I

    iget v7, v11, Landroid/graphics/Rect;->right:I

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, v16

    move-object v2, v10

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v16, v0, v15
    :try_end_b2
    .catchall {:try_start_2e .. :try_end_b2} :catchall_b9

    .line 144
    :cond_b2
    const/4 v0, 0x1

    .line 146
    .end local v13    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_b8

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 150
    :cond_b8
    return-void

    .line 146
    .end local v0    # "success":Z
    .restart local v13    # "success":Z
    :catchall_b9
    move-exception v0

    if-nez v13, :cond_bf

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    :cond_bf
    throw v0
.end method


# virtual methods
.method public clearMatrix(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 193
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_13

    .line 194
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/wm/BlackFrame$BlackSurface;->clearMatrix(Landroid/view/SurfaceControl$Transaction;)V

    .line 192
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method public hide(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    if-eqz v0, :cond_1c

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_19

    .line 169
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 167
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 173
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public kill()V
    .registers 4

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    if-eqz v0, :cond_21

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 155
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1e

    .line 158
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    .line 159
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 154
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 163
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 104
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Outer: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 105
    const-string v0, " / Inner: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 106
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_50

    .line 108
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    .line 109
    .local v1, "bs":Lcom/android/server/wm/BlackFrame$BlackSurface;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 110
    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 111
    const-string v2, " left="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 112
    const-string v2, " top="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 107
    .end local v1    # "bs":Lcom/android/server/wm/BlackFrame$BlackSurface;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 114
    .end local v0    # "i":I
    :cond_50
    return-void
.end method

.method public setAlpha(Landroid/view/SurfaceControl$Transaction;F)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "alpha"    # F

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 177
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_13

    .line 178
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setAlpha(Landroid/view/SurfaceControl$Transaction;F)V

    .line 176
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method public setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_13

    .line 186
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 184
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    .end local v0    # "i":I
    :cond_16
    return-void
.end method
