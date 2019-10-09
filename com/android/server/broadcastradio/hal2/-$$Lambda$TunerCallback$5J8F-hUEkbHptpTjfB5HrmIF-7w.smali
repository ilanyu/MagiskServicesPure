.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$5J8F-hUEkbHptpTjfB5HrmIF-7w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field private final synthetic f$0:Lcom/android/server/broadcastradio/hal2/TunerCallback;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/TunerCallback;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$5J8F-hUEkbHptpTjfB5HrmIF-7w;->f$0:Lcom/android/server/broadcastradio/hal2/TunerCallback;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$5J8F-hUEkbHptpTjfB5HrmIF-7w;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$5J8F-hUEkbHptpTjfB5HrmIF-7w;->f$0:Lcom/android/server/broadcastradio/hal2/TunerCallback;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$5J8F-hUEkbHptpTjfB5HrmIF-7w;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/TunerCallback;->lambda$onParametersUpdated$4(Lcom/android/server/broadcastradio/hal2/TunerCallback;Ljava/util/ArrayList;)V

    return-void
.end method
