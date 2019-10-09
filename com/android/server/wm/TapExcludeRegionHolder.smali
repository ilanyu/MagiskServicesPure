.class Lcom/android/server/wm/TapExcludeRegionHolder;
.super Ljava/lang/Object;
.source "TapExcludeRegionHolder.java"


# instance fields
.field private mTapExcludeRects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRects:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method amendRegion(Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "boundingRegion"    # Landroid/graphics/Rect;

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1b

    .line 51
    iget-object v1, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 52
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 53
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 50
    .end local v1    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 55
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method updateRegion(IIIII)V
    .registers 9
    .param p1, "regionId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 32
    if-lez p4, :cond_22

    if-gtz p5, :cond_5

    goto :goto_22

    .line 38
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 39
    .local v0, "region":Landroid/graphics/Rect;
    if-nez v0, :cond_15

    .line 40
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 42
    :cond_15
    add-int v1, p2, p4

    add-int v2, p3, p5

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    iget-object v1, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRects:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    return-void

    .line 34
    .end local v0    # "region":Landroid/graphics/Rect;
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 35
    return-void
.end method
