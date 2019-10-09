.class Lcom/android/server/autofill/ui/FillUi$1;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/FillUi;-><init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/FillUi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/FillUi;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/autofill/ui/FillUi;

    .line 201
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$1;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .line 205
    if-eqz p2, :cond_f

    .line 206
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$1;->this$0:Lcom/android/server/autofill/ui/FillUi;

    # getter for: Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;
    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi;->access$100(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/FillUi$Callback;->startIntentSender(Landroid/content/IntentSender;)V

    .line 208
    :cond_f
    const/4 v0, 0x1

    return v0
.end method
