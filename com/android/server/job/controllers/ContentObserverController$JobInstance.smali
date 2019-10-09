.class final Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
.super Ljava/lang/Object;
.source "ContentObserverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ContentObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JobInstance"
.end annotation


# instance fields
.field mChangedAuthorities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mChangedUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final mExecuteRunner:Ljava/lang/Runnable;

.field final mJobStatus:Lcom/android/server/job/controllers/JobStatus;

.field final mMyObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;",
            ">;"
        }
    .end annotation
.end field

.field final mTimeoutRunner:Ljava/lang/Runnable;

.field mTriggerPending:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/ContentObserverController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 15
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ContentObserverController;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 253
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    .line 254
    iput-object p2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 255
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;-><init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    .line 256
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;-><init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Ljava/lang/Runnable;

    .line 257
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v0

    .line 258
    .local v0, "uris":[Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    .line 259
    .local v1, "sourceUserId":I
    iget-object v2, p1, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 260
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 261
    .local v2, "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    if-nez v2, :cond_3d

    .line 262
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    .line 263
    iget-object v3, p1, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    :cond_3d
    if-eqz v0, :cond_f4

    .line 266
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_42
    if-ge v5, v3, :cond_f4

    aget-object v6, v0, v5

    .line 267
    .local v6, "uri":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 268
    .local v7, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    const/4 v8, 0x1

    if-nez v7, :cond_ad

    .line 269
    new-instance v9, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    iget-object v10, p1, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v11

    invoke-direct {v9, p1, v10, v6, v11}, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Landroid/os/Handler;Landroid/app/job/JobInfo$TriggerContentUri;I)V

    move-object v7, v9

    .line 270
    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {v6}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v9

    and-int/2addr v9, v8

    if-eqz v9, :cond_66

    goto :goto_67

    :cond_66
    move v8, v4

    .line 273
    .local v8, "andDescendants":Z
    :goto_67
    # getter for: Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/ContentObserverController;->access$000()Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 274
    const-string v9, "JobScheduler.ContentObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "New observer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " andDescendants="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " sourceUserId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_9f
    iget-object v9, p1, Lcom/android/server/job/controllers/ContentObserverController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 279
    invoke-virtual {v6}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v10

    .line 278
    invoke-virtual {v9, v10, v8, v7, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 284
    .end local v8    # "andDescendants":Z
    goto :goto_e6

    .line 285
    :cond_ad
    # getter for: Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/ContentObserverController;->access$000()Z

    move-result v9

    if-eqz v9, :cond_e6

    .line 286
    invoke-virtual {v6}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v9

    and-int/2addr v9, v8

    if-eqz v9, :cond_bb

    goto :goto_bc

    :cond_bb
    move v8, v4

    .line 288
    .restart local v8    # "andDescendants":Z
    :goto_bc
    const-string v9, "JobScheduler.ContentObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reusing existing observer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " andDescendants="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v8    # "andDescendants":Z
    :cond_e6
    :goto_e6
    iget-object v8, v7, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v8, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v8, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v6    # "uri":Landroid/app/job/JobInfo$TriggerContentUri;
    .end local v7    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_42

    .line 296
    :cond_f4
    return-void
.end method


# virtual methods
.method detachLocked()V
    .registers 7

    .line 338
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 339
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_69

    .line 340
    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 341
    .local v2, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 342
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_66

    .line 343
    # getter for: Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/ContentObserverController;->access$000()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 344
    const-string v3, "JobScheduler.ContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unregistering observer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v5}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_48
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v3, v3, Lcom/android/server/job/controllers/ContentObserverController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 347
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v3, v3, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUserId:I

    .line 348
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 349
    .local v3, "observerOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    if-eqz v3, :cond_66

    .line 350
    iget-object v4, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .end local v2    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v3    # "observerOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 354
    .end local v1    # "i":I
    :cond_69
    return-void
.end method

.method scheduleLocked()V
    .registers 5

    .line 316
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-nez v0, :cond_16

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    .line 318
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    :cond_16
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_33

    .line 323
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_42

    .line 325
    :cond_33
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    :goto_42
    return-void
.end method

.method trigger()V
    .registers 5

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "reportChange":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v1, v1, Lcom/android/server/job/controllers/ContentObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_6
    iget-boolean v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v2, :cond_17

    .line 302
    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/JobStatus;->setContentTriggerConstraintSatisfied(Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 303
    const/4 v0, 0x1

    .line 305
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->unscheduleLocked()V

    .line 307
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_22

    .line 310
    if-eqz v0, :cond_21

    .line 311
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v1, v1, Lcom/android/server/job/controllers/ContentObserverController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 313
    :cond_21
    return-void

    .line 307
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method

.method unscheduleLocked()V
    .registers 3

    .line 330
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v0, :cond_19

    .line 331
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    .line 335
    :cond_19
    return-void
.end method
