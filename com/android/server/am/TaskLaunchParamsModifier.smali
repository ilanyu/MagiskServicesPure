.class Lcom/android/server/am/TaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "TaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# static fields
.field private static final ALLOW_RESTART:Z = true

.field private static final BOUNDS_CONFLICT_MIN_DISTANCE:I = 0x4

.field private static final MARGIN_SIZE_DENOMINATOR:I = 0x4

.field private static final MINIMAL_STEP:I = 0x1

.field private static final SHIFT_POLICY_DIAGONAL_DOWN:I = 0x1

.field private static final SHIFT_POLICY_HORIZONTAL_LEFT:I = 0x3

.field private static final SHIFT_POLICY_HORIZONTAL_RIGHT:I = 0x2

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final WINDOW_SIZE_DENOMINATOR:I = 0x2


# instance fields
.field private final mAvailableRect:Landroid/graphics/Rect;

.field private final mTmpOriginal:Landroid/graphics/Rect;

.field private final mTmpProposal:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    return-void
.end method

.method private static boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z
    .registers 7
    .param p0, "proposal"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    .line 289
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_3c

    .line 290
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 291
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v3

    if-nez v3, :cond_39

    .line 292
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 293
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_38

    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 294
    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 295
    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 296
    :cond_38
    return v1

    .line 289
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "bounds":Landroid/graphics/Rect;
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 300
    .end local v0    # "i":I
    :cond_3c
    const/4 v0, 0x0

    return v0
.end method

.method private static final closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .line 314
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_19

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 315
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 314
    :goto_1a
    return v0
.end method

.method private static final closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .line 304
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_19

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 305
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 304
    :goto_1a
    return v0
.end method

.method private static final closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .line 319
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_19

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 320
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 319
    :goto_1a
    return v0
.end method

.method private static final closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .line 309
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_19

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 310
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 309
    :goto_1a
    return v0
.end method

.method private getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p2, "availableRect"    # Landroid/graphics/Rect;

    .line 174
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformHeight(Landroid/graphics/Rect;)I

    move-result v0

    .line 175
    .local v0, "height":I
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v1, :cond_a

    .line 176
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 178
    :cond_a
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1a

    .line 179
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 181
    :cond_1a
    return v0
.end method

.method private getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p2, "availableRect"    # Landroid/graphics/Rect;

    .line 163
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformWidth(Landroid/graphics/Rect;)I

    move-result v0

    .line 164
    .local v0, "width":I
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-lez v1, :cond_a

    .line 165
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 167
    :cond_a
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1a

    .line 168
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 170
    :cond_1a
    return v0
.end method

.method static getFreeformHeight(Landroid/graphics/Rect;)I
    .registers 2
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static getFreeformStartLeft(Landroid/graphics/Rect;)I
    .registers 3
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 132
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method static getFreeformStartTop(Landroid/graphics/Rect;)I
    .registers 3
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 137
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method static getFreeformWidth(Landroid/graphics/Rect;)I
    .registers 2
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 142
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static getHorizontalStep(Landroid/graphics/Rect;)I
    .registers 3
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static getVerticalStep(Landroid/graphics/Rect;)I
    .registers 3
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 157
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V
    .registers 13
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "proposal"    # Landroid/graphics/Rect;
    .param p4, "allowRestart"    # Z
    .param p5, "shiftPolicy"    # I
    .param p6, "result"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "ZI",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 228
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "restarted":Z
    :cond_6
    invoke-static {p3, p1}, Lcom/android/server/am/TaskLaunchParamsModifier;->boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 233
    invoke-direct {p0, p3, p2, p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftStartingPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 234
    invoke-direct {p0, p3, p2, p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftedTooFar(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 237
    if-nez p4, :cond_1d

    .line 238
    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 239
    goto :goto_4b

    .line 243
    :cond_1d
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 244
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 245
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    .line 243
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 246
    const/4 v0, 0x1

    .line 248
    :cond_33
    if-eqz v0, :cond_6

    iget v1, p3, Landroid/graphics/Rect;->left:I

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartLeft(Landroid/graphics/Rect;)I

    move-result v2

    if-gt v1, v2, :cond_45

    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 249
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartTop(Landroid/graphics/Rect;)I

    move-result v2

    if-le v1, v2, :cond_6

    .line 253
    :cond_45
    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 254
    nop

    .line 257
    :cond_4b
    :goto_4b
    invoke-virtual {p6, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 258
    return-void
.end method

.method private positionBottomLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 16
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "result"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object v7, p0

    move-object v8, p2

    .line 186
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 188
    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 190
    return-void
.end method

.method private positionBottomRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 16
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "result"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object v7, p0

    move-object v8, p2

    .line 194
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 196
    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 198
    return-void
.end method

.method private positionCenter(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 17
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "result"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object v7, p0

    .line 218
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartLeft(Landroid/graphics/Rect;)I

    move-result v8

    .line 219
    .local v8, "defaultFreeformLeft":I
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartTop(Landroid/graphics/Rect;)I

    move-result v9

    .line 220
    .local v9, "defaultFreeformTop":I
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    add-int v1, v8, p3

    add-int v2, v9, p4

    invoke-virtual {v0, v8, v9, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 222
    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 224
    return-void
.end method

.method private positionTopLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 16
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "result"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object v7, p0

    move-object v8, p2

    .line 202
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget v4, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 206
    return-void
.end method

.method private positionTopRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 16
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "result"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object v7, p0

    move-object v8, p2

    .line 210
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 212
    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 214
    return-void
.end method

.method private shiftStartingPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 8
    .param p1, "posposal"    # Landroid/graphics/Rect;
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "shiftPolicy"    # I

    .line 272
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getHorizontalStep(Landroid/graphics/Rect;)I

    move-result v0

    .line 273
    .local v0, "defaultFreeformStepHorizontal":I
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getVerticalStep(Landroid/graphics/Rect;)I

    move-result v1

    .line 275
    .local v1, "defaultFreeformStepVertical":I
    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_1a

    .line 283
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_19

    .line 277
    :pswitch_10
    neg-int v3, v0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 278
    goto :goto_19

    .line 280
    :pswitch_15
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 281
    nop

    .line 286
    :goto_19
    return-void

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_15
        :pswitch_10
    .end packed-switch
.end method

.method private shiftedTooFar(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 8
    .param p1, "start"    # Landroid/graphics/Rect;
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "shiftPolicy"    # I

    .line 261
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_28

    .line 267
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_25

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_24

    goto :goto_25

    .line 263
    :pswitch_12
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1a

    move v0, v1

    nop

    :cond_1a
    return v0

    .line 265
    :pswitch_1b
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_23

    move v0, v1

    nop

    :cond_23
    return v0

    .line 267
    :cond_24
    goto :goto_26

    :cond_25
    :goto_25
    move v0, v1

    :goto_26
    return v0

    nop

    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .registers 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "currentParams"    # Lcom/android/server/am/LaunchParamsController$LaunchParams;
    .param p7, "outParams"    # Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 86
    const/4 v0, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_34

    .line 90
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 92
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 94
    iget-object v2, p7, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 125
    .local v2, "resultBounds":Landroid/graphics/Rect;
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 127
    const/4 v0, 0x2

    return v0

    .line 87
    .end local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v2    # "resultBounds":Landroid/graphics/Rect;
    :cond_34
    :goto_34
    return v0
.end method
