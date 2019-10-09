.class public Lcom/android/server/wm/utils/WmDisplayCutout;
.super Ljava/lang/Object;
.source "WmDisplayCutout.java"


# static fields
.field public static final NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;


# instance fields
.field private final mFrameSize:Landroid/util/Size;

.field private final mInner:Landroid/view/DisplayCutout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Lcom/android/server/wm/utils/WmDisplayCutout;

    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    sput-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V
    .registers 3
    .param p1, "inner"    # Landroid/view/DisplayCutout;
    .param p2, "frameSize"    # Landroid/util/Size;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    .line 41
    iput-object p2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    .line 42
    return-void
.end method

.method private static computeSafeInsets(Landroid/util/Size;Landroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .registers 7
    .param p0, "displaySize"    # Landroid/util/Size;
    .param p1, "cutout"    # Landroid/view/DisplayCutout;

    .line 102
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_36

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    .line 104
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v2, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/16 v1, 0x30

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I

    move-result v1

    .line 107
    .local v1, "topInset":I
    const/16 v3, 0x50

    invoke-static {p0, v0, v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I

    move-result v3

    .line 108
    .local v3, "bottomInset":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 109
    .end local v0    # "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v1    # "topInset":I
    .end local v3    # "bottomInset":I
    :cond_36
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_69

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    .line 111
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    .line 113
    .restart local v0    # "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I

    move-result v1

    .line 114
    .local v1, "leftInset":I
    const/4 v3, 0x5

    invoke-static {p0, v0, v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I

    move-result v3

    .line 115
    .local v3, "right":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 117
    .end local v0    # "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v1    # "leftInset":I
    .end local v3    # "right":I
    :cond_69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not implemented: display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cutout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 7
    .param p0, "inner"    # Landroid/view/DisplayCutout;
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .line 46
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-eq p0, v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->isBoundsEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1e

    .line 50
    :cond_b
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 51
    .local v0, "displaySize":Landroid/util/Size;
    invoke-static {v0, p0}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/util/Size;Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v1

    .line 52
    .local v1, "safeInsets":Landroid/graphics/Rect;
    new-instance v2, Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {p0, v1}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    return-object v2

    .line 47
    .end local v0    # "displaySize":Landroid/util/Size;
    .end local v1    # "safeInsets":Landroid/graphics/Rect;
    :cond_1e
    :goto_1e
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method private static findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I
    .registers 10
    .param p0, "display"    # Landroid/util/Size;
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;I)I"
        }
    .end annotation

    .line 123
    .local p1, "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v0, 0x0

    .line 124
    .local v0, "inset":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 125
    .local v1, "size":I
    const/4 v2, 0x0

    .line 125
    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_74

    .line 126
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 127
    .local v3, "boundingRect":Landroid/graphics/Rect;
    const/4 v4, 0x3

    if-eq p2, v4, :cond_67

    const/4 v4, 0x5

    if-eq p2, v4, :cond_53

    const/16 v4, 0x30

    if-eq p2, v4, :cond_48

    const/16 v4, 0x50

    if-ne p2, v4, :cond_30

    .line 134
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_71

    .line 135
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_71

    .line 149
    :cond_30
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown gravity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_48
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_71

    .line 130
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_71

    .line 144
    :cond_53
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_71

    .line 145
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_71

    .line 139
    :cond_67
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_71

    .line 140
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 125
    .end local v3    # "boundingRect":Landroid/graphics/Rect;
    :cond_71
    :goto_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 152
    .end local v2    # "i":I
    :cond_74
    return v0
.end method


# virtual methods
.method public calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 7
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 85
    return-object p0

    .line 87
    :cond_9
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    .line 88
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 87
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->inset(IIII)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    return-object v0
.end method

.method public computeSafeInsets(II)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 161
    instance-of v0, p1, Lcom/android/server/wm/utils/WmDisplayCutout;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 162
    return v1

    .line 164
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 165
    .local v0, "that":Lcom/android/server/wm/utils/WmDisplayCutout;
    iget-object v2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    iget-object v3, v0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    iget-object v3, v0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    .line 166
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    nop

    .line 165
    :cond_1f
    return v1
.end method

.method public getDisplayCutout()Landroid/view/DisplayCutout;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 171
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public inset(IIII)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 9
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object v0

    .line 64
    .local v0, "newInner":Landroid/view/DisplayCutout;
    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    if-ne v1, v0, :cond_b

    .line 65
    return-object p0

    .line 68
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_26

    :cond_11
    new-instance v1, Landroid/util/Size;

    iget-object v2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    .line 69
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    sub-int/2addr v2, p3

    iget-object v3, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    .line 70
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v3, p2

    sub-int/2addr v3, p4

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 72
    .local v1, "frame":Landroid/util/Size;
    :goto_26
    new-instance v2, Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-direct {v2, v0, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    return-object v2
.end method
