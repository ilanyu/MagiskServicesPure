.class Lcom/android/server/am/PendingIntentRecordInjector$1;
.super Landroid/os/Handler;
.source "PendingIntentRecordInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecordInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Looper;

    .line 45
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_14

    .line 49
    :cond_6
    # getter for: Lcom/android/server/am/PendingIntentRecordInjector;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/am/PendingIntentRecordInjector;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 50
    :try_start_b
    # getter for: Lcom/android/server/am/PendingIntentRecordInjector;->sPendingPackages:Landroid/util/ArraySet;
    invoke-static {}, Lcom/android/server/am/PendingIntentRecordInjector;->access$100()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 51
    monitor-exit v0

    .line 52
    nop

    .line 57
    :goto_14
    return-void

    .line 51
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v1
.end method
