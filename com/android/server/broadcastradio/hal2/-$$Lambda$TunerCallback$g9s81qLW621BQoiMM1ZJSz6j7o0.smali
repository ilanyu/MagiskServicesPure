.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$g9s81qLW621BQoiMM1ZJSz6j7o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field private final synthetic f$0:Lcom/android/server/broadcastradio/hal2/TunerCallback;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/TunerCallback;ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$g9s81qLW621BQoiMM1ZJSz6j7o0;->f$0:Lcom/android/server/broadcastradio/hal2/TunerCallback;

    iput p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$g9s81qLW621BQoiMM1ZJSz6j7o0;->f$1:I

    iput-object p3, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$g9s81qLW621BQoiMM1ZJSz6j7o0;->f$2:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$g9s81qLW621BQoiMM1ZJSz6j7o0;->f$0:Lcom/android/server/broadcastradio/hal2/TunerCallback;

    iget v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$g9s81qLW621BQoiMM1ZJSz6j7o0;->f$1:I

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$g9s81qLW621BQoiMM1ZJSz6j7o0;->f$2:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-static {v0, v1, v2}, Lcom/android/server/broadcastradio/hal2/TunerCallback;->lambda$onTuneFailed$0(Lcom/android/server/broadcastradio/hal2/TunerCallback;ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V

    return-void
.end method
