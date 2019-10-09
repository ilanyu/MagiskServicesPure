.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$AnnouncementAggregator$93ommYMMUp8HMTemNRAZV3ajfR0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field private final synthetic f$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$AnnouncementAggregator$93ommYMMUp8HMTemNRAZV3ajfR0;->f$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$AnnouncementAggregator$93ommYMMUp8HMTemNRAZV3ajfR0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$AnnouncementAggregator$93ommYMMUp8HMTemNRAZV3ajfR0;->f$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$AnnouncementAggregator$93ommYMMUp8HMTemNRAZV3ajfR0;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->lambda$onListUpdated$0(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Ljava/util/List;)V

    return-void
.end method
