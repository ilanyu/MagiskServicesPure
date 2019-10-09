.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$FillUi$IWXsdxX6-XHI4qKxpJLqtc98gZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/ui/FillUi;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$IWXsdxX6-XHI4qKxpJLqtc98gZA;->f$0:Lcom/android/server/autofill/ui/FillUi;

    iput p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$IWXsdxX6-XHI4qKxpJLqtc98gZA;->f$1:I

    return-void
.end method


# virtual methods
.method public final onFilterComplete(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$IWXsdxX6-XHI4qKxpJLqtc98gZA;->f$0:Lcom/android/server/autofill/ui/FillUi;

    iget v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$IWXsdxX6-XHI4qKxpJLqtc98gZA;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/server/autofill/ui/FillUi;->lambda$applyNewFilterText$3(Lcom/android/server/autofill/ui/FillUi;II)V

    return-void
.end method
