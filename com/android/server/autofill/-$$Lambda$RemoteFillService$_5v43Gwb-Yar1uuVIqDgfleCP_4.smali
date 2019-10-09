.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field private final synthetic f$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

.field private final synthetic f$2:Landroid/service/autofill/FillResponse;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;->f$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;->f$2:Landroid/service/autofill/FillResponse;

    iput p4, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;->f$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;->f$2:Landroid/service/autofill/FillResponse;

    iget v3, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/autofill/RemoteFillService;->lambda$dispatchOnFillRequestSuccess$0(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V

    return-void
.end method
