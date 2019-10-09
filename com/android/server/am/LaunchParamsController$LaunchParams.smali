.class Lcom/android/server/am/LaunchParamsController$LaunchParams;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LaunchParamsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchParams"
.end annotation


# instance fields
.field final mBounds:Landroid/graphics/Rect;

.field mPreferredDisplayId:I

.field mWindowingMode:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 202
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 203
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_37

    .line 205
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 207
    .local v2, "that":Lcom/android/server/am/LaunchParamsController$LaunchParams;
    iget v3, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    iget v4, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-eq v3, v4, :cond_1c

    return v1

    .line 208
    :cond_1c
    iget v3, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget v4, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eq v3, v4, :cond_23

    return v1

    .line 209
    :cond_23
    iget-object v3, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_30

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v1, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_36

    :cond_30
    iget-object v3, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-nez v3, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    return v0

    .line 203
    .end local v2    # "that":Lcom/android/server/am/LaunchParamsController$LaunchParams;
    :cond_37
    :goto_37
    return v1
.end method

.method hasPreferredDisplay()Z
    .registers 3

    .line 197
    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method hasWindowingMode()Z
    .registers 2

    .line 193
    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 214
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 215
    .local v0, "result":I
    :goto_c
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    add-int/2addr v2, v3

    .line 216
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    add-int/2addr v1, v0

    .line 217
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method isEmpty()Z
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method reset()V
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 177
    return-void
.end method

.method set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V
    .registers 4
    .param p1, "params"    # Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 181
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 182
    iget v0, p1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 183
    iget v0, p1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 184
    return-void
.end method
