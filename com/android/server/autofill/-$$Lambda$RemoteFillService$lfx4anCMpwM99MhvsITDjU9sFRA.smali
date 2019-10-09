.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$lfx4anCMpwM99MhvsITDjU9sFRA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/os/ICancellationSignal;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ICancellationSignal;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$lfx4anCMpwM99MhvsITDjU9sFRA;->f$0:Landroid/os/ICancellationSignal;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$lfx4anCMpwM99MhvsITDjU9sFRA;->f$0:Landroid/os/ICancellationSignal;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->lambda$dispatchOnFillTimeout$3(Landroid/os/ICancellationSignal;)V

    return-void
.end method
