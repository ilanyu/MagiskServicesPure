.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$1GkjuS_pAduq4UeRzcVLneyJbGM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$1GkjuS_pAduq4UeRzcVLneyJbGM;->f$0:Lcom/android/server/wm/DisplayContent;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$1GkjuS_pAduq4UeRzcVLneyJbGM;->f$1:I

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$1GkjuS_pAduq4UeRzcVLneyJbGM;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$1GkjuS_pAduq4UeRzcVLneyJbGM;->f$0:Lcom/android/server/wm/DisplayContent;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$1GkjuS_pAduq4UeRzcVLneyJbGM;->f$1:I

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$1GkjuS_pAduq4UeRzcVLneyJbGM;->f$2:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/DisplayContent;->lambda$updateRotationUnchecked$10(Lcom/android/server/wm/DisplayContent;IILcom/android/server/wm/WindowState;)V

    return-void
.end method
