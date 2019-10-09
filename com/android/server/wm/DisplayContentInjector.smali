.class public Lcom/android/server/wm/DisplayContentInjector;
.super Ljava/lang/Object;
.source "DisplayContentInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFullScreenIndex(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/WindowList;I)I
    .registers 8
    .param p0, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "targetPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/TaskStack;",
            "Lcom/android/server/wm/WindowList<",
            "Lcom/android/server/wm/TaskStack;",
            ">;I)I"
        }
    .end annotation

    .line 7
    .local p1, "children":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    .line 9
    .local v2, "tStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2b

    .line 10
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_2b

    .line 11
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 p2, v0, -0x1

    .line 12
    goto :goto_2c

    .line 14
    .end local v2    # "tStack":Lcom/android/server/wm/TaskStack;
    :cond_2b
    goto :goto_b

    .line 16
    :cond_2c
    :goto_2c
    return p2
.end method

.method static getFullScreenIndex(ZLcom/android/server/wm/TaskStack;Lcom/android/server/wm/WindowList;IZ)I
    .registers 9
    .param p0, "toTop"    # Z
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "targetPosition"    # I
    .param p4, "adding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/server/wm/TaskStack;",
            "Lcom/android/server/wm/WindowList<",
            "Lcom/android/server/wm/TaskStack;",
            ">;IZ)I"
        }
    .end annotation

    .line 21
    .local p2, "children":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/TaskStack;>;"
    if-eqz p0, :cond_31

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 22
    invoke-virtual {p2}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 23
    .local v1, "tStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_30

    .line 24
    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 25
    .local v0, "topChildPosition":I
    if-eqz p4, :cond_28

    move v2, v0

    goto :goto_2e

    :cond_28
    if-lez v0, :cond_2d

    add-int/lit8 v2, v0, -0x1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    move p3, v2

    .line 26
    goto :goto_31

    .line 28
    .end local v0    # "topChildPosition":I
    .end local v1    # "tStack":Lcom/android/server/wm/TaskStack;
    :cond_30
    goto :goto_d

    .line 30
    :cond_31
    :goto_31
    return p3
.end method
