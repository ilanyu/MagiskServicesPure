.class public Lcom/android/server/lights/evaluator/ArgbArrayEvaluator;
.super Ljava/lang/Object;
.source "ArgbArrayEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[I>;"
    }
.end annotation


# instance fields
.field mArgbEvaluator:Landroid/animation/ArgbEvaluator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/evaluator/ArgbArrayEvaluator;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 6
    check-cast p2, [I

    check-cast p3, [I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/lights/evaluator/ArgbArrayEvaluator;->evaluate(F[I[I)[I

    move-result-object p1

    return-object p1
.end method

.method public evaluate(F[I[I)[I
    .registers 9
    .param p1, "fraction"    # F
    .param p2, "startValue"    # [I
    .param p3, "endValue"    # [I

    .line 12
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_29

    .line 13
    array-length v0, p2

    new-array v0, v0, [I

    .line 14
    .local v0, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p2

    if-ge v1, v2, :cond_28

    .line 15
    iget-object v2, p0, Lcom/android/server/lights/evaluator/ArgbArrayEvaluator;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    aget v3, p2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget v4, p3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 14
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 17
    .end local v1    # "i":I
    :cond_28
    return-object v0

    .line 12
    .end local v0    # "values":[I
    :cond_29
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
