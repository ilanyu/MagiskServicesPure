.class final Lcom/android/server/AppOpsService$UidState;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidState"
.end annotation


# instance fields
.field public foregroundOps:Landroid/util/SparseBooleanArray;

.field public hasForegroundWatchers:Z

.field public opModes:Landroid/util/SparseIntArray;

.field public pendingState:I

.field public pendingStateCommitTime:J

.field public pkgOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsService$Ops;",
            ">;"
        }
    .end annotation
.end field

.field public startNesting:I

.field public state:I

.field public final uid:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/AppOpsService$UidState;->state:I

    .line 364
    iput v0, p0, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    .line 376
    iput p1, p0, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 377
    return-void
.end method

.method private evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .registers 9
    .param p1, "op"    # I
    .param p3, "which"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    .line 399
    .local p2, "watchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 400
    .local v0, "curValue":Z
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 401
    .local v1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-eqz v1, :cond_28

    .line 402
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "cbi":I
    :goto_13
    if-nez v0, :cond_28

    if-ltz v2, :cond_28

    .line 403
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ModeCallback;

    iget v4, v4, Lcom/android/server/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_25

    .line 405
    iput-boolean v3, p0, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 406
    const/4 v0, 0x1

    .line 402
    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 410
    .end local v2    # "cbi":I
    :cond_28
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 411
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 381
    iput-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 382
    return-void
.end method

.method public evalForegroundOps(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;)V"
        }
    .end annotation

    .line 414
    .local p1, "watchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;>;"
    const/4 v0, 0x0

    .line 415
    .local v0, "which":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 416
    iget-object v1, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    if-eqz v1, :cond_2f

    .line 417
    iget-object v1, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_2f

    .line 418
    iget-object v3, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, v2, :cond_2c

    .line 419
    if-nez v0, :cond_23

    .line 420
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v3

    .line 422
    :cond_23
    iget-object v3, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3, p1, v0}, Lcom/android/server/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 417
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 426
    .end local v1    # "i":I
    :cond_2f
    iget-object v1, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_6c

    .line 427
    iget-object v1, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_3b
    if-ltz v1, :cond_6c

    .line 428
    iget-object v3, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    .line 429
    .local v3, "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual {v3}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_4b
    if-ltz v4, :cond_69

    .line 430
    invoke-virtual {v3, v4}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Op;

    iget v5, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v5, v2, :cond_66

    .line 431
    if-nez v0, :cond_5f

    .line 432
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v5

    .line 434
    :cond_5f
    invoke-virtual {v3, v4}, Lcom/android/server/AppOpsService$Ops;->keyAt(I)I

    move-result v5

    invoke-direct {p0, v5, p1, v0}, Lcom/android/server/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 429
    :cond_66
    add-int/lit8 v4, v4, -0x1

    goto :goto_4b

    .line 427
    .end local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v4    # "j":I
    :cond_69
    add-int/lit8 v1, v1, -0x1

    goto :goto_3b

    .line 439
    .end local v1    # "i":I
    :cond_6c
    iput-object v0, p0, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    .line 440
    return-void
.end method

.method evalMode(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 390
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 391
    iget v0, p0, Lcom/android/server/AppOpsService$UidState;->state:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_a

    .line 392
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    .line 391
    :goto_b
    return v0

    .line 394
    :cond_c
    return p1
.end method

.method public isDefault()Z
    .registers 2

    .line 385
    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_c
    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 386
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gtz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 385
    :goto_1c
    return v0
.end method
