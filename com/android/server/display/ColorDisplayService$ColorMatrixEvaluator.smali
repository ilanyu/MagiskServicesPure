.class Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;
.super Ljava/lang/Object;
.source "ColorDisplayService.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorMatrixEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[F>;"
    }
.end annotation


# instance fields
.field private final mResultMatrix:[F


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/ColorDisplayService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/display/ColorDisplayService$1;

    .line 604
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 604
    check-cast p2, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;->evaluate(F[F[F)[F

    move-result-object p1

    return-object p1
.end method

.method public evaluate(F[F[F)[F
    .registers 8
    .param p1, "fraction"    # F
    .param p2, "startValue"    # [F
    .param p3, "endValue"    # [F

    .line 613
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 614
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    aget v2, p2, v0

    aget v3, p3, v0

    invoke-static {v2, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v0

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 616
    .end local v0    # "i":I
    :cond_15
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    return-object v0
.end method
