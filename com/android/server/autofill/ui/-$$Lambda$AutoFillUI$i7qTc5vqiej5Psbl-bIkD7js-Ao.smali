.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$i7qTc5vqiej5Psbl-bIkD7js-Ao;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field private final synthetic f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$i7qTc5vqiej5Psbl-bIkD7js-Ao;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$i7qTc5vqiej5Psbl-bIkD7js-Ao;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$i7qTc5vqiej5Psbl-bIkD7js-Ao;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$i7qTc5vqiej5Psbl-bIkD7js-Ao;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$clearCallback$1(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method
