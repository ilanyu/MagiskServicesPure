.class public abstract Lcom/android/server/wm/ConfigurationContainer;
.super Ljava/lang/Object;
.source "ConfigurationContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/ConfigurationContainer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final BOUNDS_CHANGE_NONE:I = 0x0

.field static final BOUNDS_CHANGE_POSITION:I = 0x1

.field static final BOUNDS_CHANGE_SIZE:I = 0x2


# instance fields
.field private mChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ConfigurationContainerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFullConfiguration:Landroid/content/res/Configuration;

.field private mHasOverrideConfiguration:Z

.field private mMergedOverrideConfiguration:Landroid/content/res/Configuration;

.field private mOverrideConfiguration:Landroid/content/res/Configuration;

.field private mReturnBounds:Landroid/graphics/Rect;

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 67
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 74
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 3
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "other"    # Landroid/graphics/Rect;

    .line 195
    if-eq p0, p1, :cond_1f

    if-eqz p0, :cond_12

    .line 196
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_1f

    :cond_12
    if-eqz p1, :cond_1d

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 195
    :goto_20
    return v0
.end method


# virtual methods
.method diffOverrideBounds(Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 269
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 270
    const/4 v0, 0x0

    return v0

    .line 273
    :cond_8
    const/4 v0, 0x0

    .line 275
    .local v0, "boundsChange":I
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 277
    .local v1, "existingBounds":Landroid/graphics/Rect;
    if-eqz p1, :cond_1b

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_1b

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1d

    .line 279
    :cond_1b
    or-int/lit8 v0, v0, 0x1

    .line 282
    :cond_1d
    if-eqz p1, :cond_33

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_33

    .line 283
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_35

    .line 284
    :cond_33
    or-int/lit8 v0, v0, 0x2

    .line 287
    :cond_35
    return v0
.end method

.method public dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 510
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "childPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_4a
    if-ltz v1, :cond_72

    .line 515
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    .line 516
    .local v2, "cc":Lcom/android/server/wm/ConfigurationContainer;, "TE;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 514
    .end local v2    # "cc":Lcom/android/server/wm/ConfigurationContainer;, "TE;"
    add-int/lit8 v1, v1, -0x1

    goto :goto_4a

    .line 519
    .end local v1    # "i":I
    :cond_72
    return-void
.end method

.method public equivalentOverrideBounds(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 188
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getActivityType()I
    .registers 2

    .line 360
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 3

    .line 206
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 211
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 212
    return-void
.end method

.method protected abstract getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method protected abstract getChildCount()I
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 97
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getMergedOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 147
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 522
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverrideBounds()Landroid/graphics/Rect;
    .registers 3

    .line 219
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOverrideBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 237
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 238
    return-void
.end method

.method public getOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 115
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method protected abstract getParent()Lcom/android/server/wm/ConfigurationContainer;
.end method

.method public getWindowConfiguration()Landroid/app/WindowConfiguration;
    .registers 2

    .line 291
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    return-object v0
.end method

.method public getWindowingMode()I
    .registers 2

    .line 296
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method public hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z
    .registers 7
    .param p1, "other"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 408
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 409
    .local v0, "thisType":I
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v1

    .line 411
    .local v1, "otherType":I
    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 412
    return v2

    .line 414
    :cond_c
    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v0, v3, :cond_11

    .line 416
    return v4

    .line 419
    :cond_11
    if-eqz v0, :cond_18

    if-nez v1, :cond_16

    goto :goto_18

    :cond_16
    move v2, v4

    nop

    :cond_18
    :goto_18
    return v2
.end method

.method public hasOverrideBounds()Z
    .registers 2

    .line 229
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public inFreeformWindowingMode()Z
    .registers 3

    .line 354
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public inMultiWindowMode()Z
    .registers 3

    .line 311
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 312
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 313
    .local v0, "windowingMode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public inPinnedWindowingMode()Z
    .registers 3

    .line 350
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public inSplitScreenPrimaryWindowingMode()Z
    .registers 3

    .line 335
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public inSplitScreenSecondaryWindowingMode()Z
    .registers 3

    .line 328
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 329
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 331
    .local v0, "windowingMode":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public inSplitScreenWindowingMode()Z
    .registers 3

    .line 319
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 320
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 322
    .local v0, "windowingMode":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method public isActivityTypeAssistant()Z
    .registers 3

    .line 395
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isActivityTypeHome()Z
    .registers 3

    .line 387
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isActivityTypeRecents()Z
    .registers 3

    .line 391
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isActivityTypeStandard()Z
    .registers 3

    .line 399
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public isActivityTypeStandardOrUndefined()Z
    .registers 3

    .line 403
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 404
    .local v0, "activityType":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    if-nez v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    nop

    :cond_c
    :goto_c
    return v1
.end method

.method isAlwaysOnTop()Z
    .registers 2

    .line 526
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v0

    return v0
.end method

.method public isCompatible(II)Z
    .registers 8
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 436
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 437
    .local v0, "thisActivityType":I
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    .line 438
    .local v1, "thisWindowingMode":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, p2, :cond_e

    move v4, v3

    goto :goto_f

    :cond_e
    move v4, v2

    .line 439
    .local v4, "sameActivityType":Z
    :goto_f
    if-ne v1, p1, :cond_13

    move v2, v3

    nop

    .line 441
    .local v2, "sameWindowingMode":Z
    :cond_13
    if-eqz v4, :cond_18

    if-eqz v2, :cond_18

    .line 442
    return v3

    .line 445
    :cond_18
    if-eqz p2, :cond_1c

    if-ne p2, v3, :cond_22

    .line 446
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-nez v3, :cond_23

    .line 448
    :cond_22
    return v4

    .line 452
    :cond_23
    return v2
.end method

.method public matchParentBounds()Z
    .registers 2

    .line 177
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 105
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 107
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_12
    if-ltz v0, :cond_20

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    .line 109
    .local v1, "child":Lcom/android/server/wm/ConfigurationContainer;
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 107
    .end local v1    # "child":Lcom/android/server/wm/ConfigurationContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 111
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method onMergedOverrideConfigurationChanged()V
    .registers 4

    .line 157
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    .line 158
    .local v0, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v0, :cond_17

    .line 159
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 160
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_1e

    .line 162
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 164
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_24
    if-ltz v1, :cond_30

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    .line 166
    .local v2, "child":Lcom/android/server/wm/ConfigurationContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 164
    .end local v2    # "child":Lcom/android/server/wm/ConfigurationContainer;
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 168
    .end local v1    # "i":I
    :cond_30
    return-void
.end method

.method public onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 126
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    .line 130
    .local v0, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    goto :goto_1c

    :cond_1a
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :goto_1c
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 135
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 137
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_31
    if-ltz v1, :cond_43

    .line 138
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ConfigurationContainerListener;

    iget-object v3, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Lcom/android/server/wm/ConfigurationContainerListener;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    .line 140
    .end local v1    # "i":I
    :cond_43
    return-void
.end method

.method protected onParentChanged()V
    .registers 3

    .line 471
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    .line 474
    .local v0, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v0, :cond_e

    .line 476
    iget-object v1, v0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 480
    :cond_e
    return-void
.end method

.method public registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/ConfigurationContainerListener;

    .line 456
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 457
    return-void

    .line 459
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {p1, v0}, Lcom/android/server/wm/ConfigurationContainerListener;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 461
    return-void
.end method

.method public setActivityType(I)V
    .registers 6
    .param p1, "activityType"    # I

    .line 365
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 366
    .local v0, "currentActivityType":I
    if-ne v0, p1, :cond_7

    .line 367
    return-void

    .line 369
    :cond_7
    if-eqz v0, :cond_59

    .line 373
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t change activity type once set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string/jumbo v1, "persist.sys.miui_optimization"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_59

    .line 376
    :cond_36
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t change activity type once set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_59
    :goto_59
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 382
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 383
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 384
    return-void
.end method

.method public setBounds(IIII)I
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 264
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 249
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->diffOverrideBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 251
    .local v0, "boundsChange":I
    if-nez v0, :cond_7

    .line 252
    return v0

    .line 256
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 257
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 258
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 260
    return v0
.end method

.method public setWindowingMode(I)V
    .registers 4
    .param p1, "windowingMode"    # I

    .line 301
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 304
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 2

    .line 346
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode()Z

    move-result v0

    return v0
.end method

.method public unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/ConfigurationContainerListener;

    .line 464
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "trim"    # Z

    .line 494
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 495
    .local v0, "token":J
    if-eqz p4, :cond_a

    iget-boolean v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    if-eqz v2, :cond_14

    .line 496
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Configuration;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 498
    :cond_14
    if-nez p4, :cond_2a

    .line 499
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Configuration;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 500
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Configuration;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 502
    :cond_2a
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 503
    return-void
.end method
