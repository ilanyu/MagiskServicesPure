.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$4QBYui9TTe72lpu-ZEbezxJSKDg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field private final synthetic f$0:Lcom/android/server/broadcastradio/hal2/TunerCallback;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/TunerCallback;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$4QBYui9TTe72lpu-ZEbezxJSKDg;->f$0:Lcom/android/server/broadcastradio/hal2/TunerCallback;

    iput-boolean p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$4QBYui9TTe72lpu-ZEbezxJSKDg;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$4QBYui9TTe72lpu-ZEbezxJSKDg;->f$0:Lcom/android/server/broadcastradio/hal2/TunerCallback;

    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$4QBYui9TTe72lpu-ZEbezxJSKDg;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/TunerCallback;->lambda$onAntennaStateChange$3(Lcom/android/server/broadcastradio/hal2/TunerCallback;Z)V

    return-void
.end method
