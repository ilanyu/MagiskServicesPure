.class Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;
.super Landroid/service/autofill/ISaveCallback$Stub;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;-><init>(Landroid/service/autofill/SaveRequest;Lcom/android/server/autofill/RemoteFillService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    .line 662
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-direct {p0}, Landroid/service/autofill/ISaveCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 676
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->finish()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 678
    :cond_9
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 679
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_16

    .line 680
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    # invokes: Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/autofill/RemoteFillService;->access$1600(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    .line 683
    :cond_16
    return-void
.end method

.method public onSuccess(Landroid/content/IntentSender;)V
    .registers 4
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 665
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->finish()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 667
    :cond_9
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 668
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_16

    .line 669
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    # invokes: Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/autofill/RemoteFillService;->access$1500(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V

    .line 672
    :cond_16
    return-void
.end method
