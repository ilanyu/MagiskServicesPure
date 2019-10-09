.class Lcom/android/server/content/SyncStorageEngine$MyHandler;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncStorageEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 582
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    .line 583
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 584
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 588
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 589
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    # getter for: Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/content/SyncStorageEngine;->access$100(Lcom/android/server/content/SyncStorageEngine;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 590
    :try_start_c
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    # invokes: Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V
    invoke-static {v1}, Lcom/android/server/content/SyncStorageEngine;->access$200(Lcom/android/server/content/SyncStorageEngine;)V

    .line 591
    monitor-exit v0

    goto :goto_2c

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1

    .line 592
    :cond_16
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    .line 593
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    # getter for: Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/content/SyncStorageEngine;->access$100(Lcom/android/server/content/SyncStorageEngine;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 594
    :try_start_22
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    # invokes: Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    invoke-static {v1}, Lcom/android/server/content/SyncStorageEngine;->access$300(Lcom/android/server/content/SyncStorageEngine;)V

    .line 595
    monitor-exit v0

    goto :goto_2c

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v1

    .line 597
    :cond_2c
    :goto_2c
    return-void
.end method
