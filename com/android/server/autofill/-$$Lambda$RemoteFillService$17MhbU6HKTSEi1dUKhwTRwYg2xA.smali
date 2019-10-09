.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17MhbU6HKTSEi1dUKhwTRwYg2xA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field private final synthetic f$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

.field private final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17MhbU6HKTSEi1dUKhwTRwYg2xA;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17MhbU6HKTSEi1dUKhwTRwYg2xA;->f$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17MhbU6HKTSEi1dUKhwTRwYg2xA;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17MhbU6HKTSEi1dUKhwTRwYg2xA;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17MhbU6HKTSEi1dUKhwTRwYg2xA;->f$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17MhbU6HKTSEi1dUKhwTRwYg2xA;->f$2:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/server/autofill/RemoteFillService;->lambda$dispatchOnFillRequestFailure$1(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    return-void
.end method
