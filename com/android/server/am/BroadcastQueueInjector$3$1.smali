.class Lcom/android/server/am/BroadcastQueueInjector$3$1;
.super Ljava/lang/Object;
.source "BroadcastQueueInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BroadcastQueueInjector$3;->onCallback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueueInjector$3;


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueueInjector$3;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/BroadcastQueueInjector$3;

    .line 513
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueInjector$3$1;->this$0:Lcom/android/server/am/BroadcastQueueInjector$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 516
    # getter for: Lcom/android/server/am/BroadcastQueueInjector;->sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 517
    return-void
.end method
