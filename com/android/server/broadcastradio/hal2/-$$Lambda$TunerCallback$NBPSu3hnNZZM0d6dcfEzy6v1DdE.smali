.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$NBPSu3hnNZZM0d6dcfEzy6v1DdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field private final synthetic f$0:Lcom/android/server/broadcastradio/hal2/TunerCallback;

.field private final synthetic f$1:Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/TunerCallback;Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$NBPSu3hnNZZM0d6dcfEzy6v1DdE;->f$0:Lcom/android/server/broadcastradio/hal2/TunerCallback;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$NBPSu3hnNZZM0d6dcfEzy6v1DdE;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$NBPSu3hnNZZM0d6dcfEzy6v1DdE;->f$0:Lcom/android/server/broadcastradio/hal2/TunerCallback;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$NBPSu3hnNZZM0d6dcfEzy6v1DdE;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/TunerCallback;->lambda$onProgramListUpdated$2(Lcom/android/server/broadcastradio/hal2/TunerCallback;Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    return-void
.end method
