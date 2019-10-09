.class Lcom/android/server/autofill/ui/AutoFillUI$1;
.super Ljava/lang/Object;
.source "AutoFillUI.java"

# interfaces
.implements Lcom/android/server/autofill/ui/FillUi$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showFillUi$5(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/metrics/LogMaker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field final synthetic val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field final synthetic val$log:Landroid/metrics/LogMaker;

.field final synthetic val$response:Landroid/service/autofill/FillResponse;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/autofill/ui/AutoFillUI;

    .line 196
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$response:Landroid/service/autofill/FillResponse;

    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 256
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    # getter for: Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 257
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    # getter for: Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1, p1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->dispatchUnhandledKey(Landroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    .line 259
    :cond_13
    return-void
.end method

.method public onCanceled()V
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 221
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->access$500(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 222
    return-void
.end method

.method public onDatasetPicked(Landroid/service/autofill/Dataset;)V
    .registers 5
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;

    .line 210
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 211
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->access$500(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 212
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    # getter for: Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 213
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 214
    .local v0, "datasetIndex":I
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    # getter for: Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    invoke-static {v1}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->fill(IILandroid/service/autofill/Dataset;)V

    .line 216
    .end local v0    # "datasetIndex":I
    :cond_2f
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    invoke-virtual {v0}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    if-nez v0, :cond_e

    .line 227
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 229
    :cond_e
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    # getter for: Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;
    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$400(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 230
    return-void
.end method

.method public onResponsePicked(Landroid/service/autofill/FillResponse;)V
    .registers 7
    .param p1, "response"    # Landroid/service/autofill/FillResponse;

    .line 199
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 200
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->access$500(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 201
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    # getter for: Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 202
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    # getter for: Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    const v2, 0xffff

    .line 204
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v4

    .line 202
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;)V

    .line 206
    :cond_2e
    return-void
.end method

.method public requestHideFillUi()V
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    # getter for: Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 243
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    # getter for: Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->requestHideFillUi(Landroid/view/autofill/AutofillId;)V

    .line 245
    :cond_13
    return-void
.end method

.method public requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "windowPresenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 235
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    # getter for: Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 236
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    # getter for: Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->requestShowFillUi(Landroid/view/autofill/AutofillId;IILandroid/view/autofill/IAutofillWindowPresenter;)V

    .line 238
    :cond_13
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .registers 3
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 249
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    # getter for: Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 250
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    # getter for: Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->startIntentSender(Landroid/content/IntentSender;)V

    .line 252
    :cond_11
    return-void
.end method
