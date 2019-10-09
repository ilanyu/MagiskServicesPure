.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$mmncPOeo4VmHBIRo77qp7XrwQeA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field private final synthetic f$0:Lcom/android/server/broadcastradio/hal2/TunerSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$mmncPOeo4VmHBIRo77qp7XrwQeA;->f$0:Lcom/android/server/broadcastradio/hal2/TunerSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$mmncPOeo4VmHBIRo77qp7XrwQeA;->f$0:Lcom/android/server/broadcastradio/hal2/TunerSession;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->lambda$startBackgroundScan$1(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    return-void
.end method
