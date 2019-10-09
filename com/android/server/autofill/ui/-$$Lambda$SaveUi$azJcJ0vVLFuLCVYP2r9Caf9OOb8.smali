.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$azJcJ0vVLFuLCVYP2r9Caf9OOb8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/ui/SaveUi;

.field private final synthetic f$1:Landroid/service/autofill/SaveInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$azJcJ0vVLFuLCVYP2r9Caf9OOb8;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$azJcJ0vVLFuLCVYP2r9Caf9OOb8;->f$1:Landroid/service/autofill/SaveInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$azJcJ0vVLFuLCVYP2r9Caf9OOb8;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$azJcJ0vVLFuLCVYP2r9Caf9OOb8;->f$1:Landroid/service/autofill/SaveInfo;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->lambda$new$0(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
