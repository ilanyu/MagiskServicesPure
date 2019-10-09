.class Lcom/android/server/net/NetworkStatsService$HandlerCallback;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandlerCallback"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/net/NetworkStatsService;

    .line 1670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1671
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    .line 1672
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1676
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_1e

    .line 1691
    const/4 v0, 0x0

    return v0

    .line 1687
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;)V

    .line 1688
    return v1

    .line 1683
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/net/NetworkStatsService;->updateIfaces([Landroid/net/Network;)V
    invoke-static {v0, v2}, Lcom/android/server/net/NetworkStatsService;->access$2000(Lcom/android/server/net/NetworkStatsService;[Landroid/net/Network;)V

    .line 1684
    return v1

    .line 1678
    :pswitch_15
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1679
    .local v0, "flags":I
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    invoke-static {v2, v0}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;I)V

    .line 1680
    return v1

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method
