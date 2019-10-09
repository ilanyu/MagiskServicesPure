.class Lcom/android/server/autofill/ui/SaveUi$1;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "SaveUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/SaveUi;->applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/SaveUi;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/SaveUi;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/autofill/ui/SaveUi;

    .line 294
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    iput p2, p0, Lcom/android/server/autofill/ui/SaveUi$1;->val$type:I

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 298
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    iget v1, p0, Lcom/android/server/autofill/ui/SaveUi$1;->val$type:I

    .line 299
    const/16 v2, 0x46c

    # invokes: Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;
    invoke-static {v0, v2, v1}, Lcom/android/server/autofill/ui/SaveUi;->access$000(Lcom/android/server/autofill/ui/SaveUi;II)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 303
    .local v0, "log":Landroid/metrics/LogMaker;
    # invokes: Lcom/android/server/autofill/ui/SaveUi;->isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    invoke-static {p2, p3}, Lcom/android/server/autofill/ui/SaveUi;->access$100(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v1

    .line 304
    .local v1, "isValid":Z
    const/4 v2, 0x0

    if-nez v1, :cond_1e

    .line 305
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 306
    iget-object v3, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    # getter for: Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;
    invoke-static {v3}, Lcom/android/server/autofill/ui/SaveUi;->access$200(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 307
    return v2

    .line 309
    :cond_1e
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_29

    const-string v3, "AutofillSaveUi"

    const-string v4, "Intercepting custom description intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_29
    iget-object v3, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    # getter for: Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;
    invoke-static {v3}, Lcom/android/server/autofill/ui/SaveUi;->access$300(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/server/autofill/ui/PendingUi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v3

    .line 311
    .local v3, "token":Landroid/os/IBinder;
    const-string v4, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p3, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 313
    :try_start_38
    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    # getter for: Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;
    invoke-static {v4}, Lcom/android/server/autofill/ui/SaveUi;->access$300(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/server/autofill/ui/PendingUi;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/autofill/ui/PendingUi;->client:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-interface {v4, v5, p3}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 315
    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    # getter for: Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;
    invoke-static {v4}, Lcom/android/server/autofill/ui/SaveUi;->access$300(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/server/autofill/ui/PendingUi;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    .line 316
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_6b

    const-string v4, "AutofillSaveUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hiding UI until restored with token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_6b
    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v4}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    .line 318
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 319
    iget-object v5, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    # getter for: Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;
    invoke-static {v5}, Lcom/android/server/autofill/ui/SaveUi;->access$200(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_7d} :catch_7e

    .line 320
    return v4

    .line 321
    :catch_7e
    move-exception v4

    .line 322
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "AutofillSaveUi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error triggering pending intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 324
    iget-object v5, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    # getter for: Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;
    invoke-static {v5}, Lcom/android/server/autofill/ui/SaveUi;->access$200(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 325
    return v2
.end method
