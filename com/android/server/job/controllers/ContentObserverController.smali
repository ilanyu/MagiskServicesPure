.class public final Lcom/android/server/job/controllers/ContentObserverController;
.super Lcom/android/server/job/controllers/StateController;
.source "ContentObserverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ContentObserverController$JobInstance;,
        Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;,
        Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_URIS_REPORTED:I = 0x32

.field private static final TAG:Ljava/lang/String; = "JobScheduler.ContentObserver"

.field private static final URIS_URGENT_THRESHOLD:I = 0x28


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            "Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTrackedTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const-string v0, "JobScheduler.ContentObserver"

    const/4 v1, 0x3

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 61
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/MiuiFgThread;->get()Lcom/android/server/MiuiFgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MiuiFgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 37
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 450
    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 451
    .local v3, "token":J
    const-wide v5, 0x10b00000004L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 453
    .local v5, "mToken":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_14
    iget-object v9, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    const-wide v10, 0x10b00000001L

    const-wide v12, 0x10500000002L

    if-ge v8, v9, :cond_4f

    .line 454
    iget-object v9, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 455
    .local v9, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {v2, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_35

    .line 456
    goto :goto_4c

    .line 458
    :cond_35
    const-wide v14, 0x20b00000001L

    .line 459
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 460
    .local v14, "jsToken":J
    invoke-virtual {v9, v1, v10, v11}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 462
    nop

    .line 463
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    .line 462
    invoke-virtual {v1, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 464
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 453
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v14    # "jsToken":J
    :goto_4c
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 467
    .end local v8    # "i":I
    :cond_4f
    iget-object v8, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 468
    .local v8, "n":I
    const/4 v9, 0x0

    .local v9, "userIdx":I
    :goto_56
    if-ge v9, v8, :cond_200

    .line 469
    nop

    .line 470
    const-wide v14, 0x20b00000002L

    move/from16 v16, v8

    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 471
    .end local v8    # "n":I
    .local v7, "oToken":J
    .local v16, "n":I
    iget-object v10, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 473
    .local v10, "userId":I
    const-wide v12, 0x10500000001L

    invoke-virtual {v1, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 475
    iget-object v11, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 476
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    .line 477
    .local v11, "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 478
    .local v12, "numbOfObserversPerUser":I
    const/4 v13, 0x0

    .local v13, "observerIdx":I
    :goto_7f
    if-ge v13, v12, :cond_1d9

    .line 479
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 480
    .local v14, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v15

    .line 481
    .local v15, "m":I
    const/16 v17, 0x0

    .line 482
    .local v17, "shouldDump":Z
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_93
    move/from16 v19, v18

    .end local v18    # "j":I
    .local v19, "j":I
    move/from16 v0, v19

    if-ge v0, v15, :cond_b9

    .line 483
    .end local v19    # "j":I
    .local v0, "j":I
    move/from16 v20, v10

    iget-object v10, v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    .end local v10    # "userId":I
    .local v20, "userId":I
    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 484
    .local v10, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    move/from16 v21, v12

    iget-object v12, v10, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .end local v12    # "numbOfObserversPerUser":I
    .local v21, "numbOfObserversPerUser":I
    invoke-interface {v2, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b0

    .line 485
    const/16 v17, 0x1

    .line 486
    goto :goto_bd

    .line 482
    .end local v10    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :cond_b0
    add-int/lit8 v18, v0, 0x1

    .end local v0    # "j":I
    .restart local v18    # "j":I
    move/from16 v10, v20

    move/from16 v12, v21

    move-object/from16 v0, p0

    goto :goto_93

    .line 489
    .end local v18    # "j":I
    .end local v20    # "userId":I
    .end local v21    # "numbOfObserversPerUser":I
    .local v10, "userId":I
    .restart local v12    # "numbOfObserversPerUser":I
    :cond_b9
    move/from16 v20, v10

    move/from16 v21, v12

    .end local v10    # "userId":I
    .end local v12    # "numbOfObserversPerUser":I
    .restart local v20    # "userId":I
    .restart local v21    # "numbOfObserversPerUser":I
    :goto_bd
    if-nez v17, :cond_ca

    .line 490
    nop

    .line 478
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move-wide/from16 v29, v7

    move-object/from16 v26, v11

    goto/16 :goto_1c0

    .line 492
    :cond_ca
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 495
    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .local v4, "tToken":J
    .local v22, "token":J
    .local v24, "mToken":J
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 496
    .local v0, "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {v0}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 497
    .local v6, "u":Landroid/net/Uri;
    if-eqz v6, :cond_ef

    .line 498
    const-wide v2, 0x10900000001L

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 500
    :cond_ef
    invoke-virtual {v0}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v2

    move-object/from16 v26, v11

    const-wide v10, 0x10500000002L

    invoke-virtual {v1, v10, v11, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 502
    .end local v11    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .local v26, "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_fe
    if-ge v2, v15, :cond_1b5

    .line 503
    const-wide v10, 0x20b00000003L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 504
    .local v10, "jToken":J
    iget-object v3, v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 506
    .local v3, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v27, v14

    move/from16 v28, v15

    const-wide v14, 0x10b00000001L

    invoke-virtual {v12, v1, v14, v15}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 507
    .end local v14    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v15    # "m":I
    .local v27, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .local v28, "m":I
    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 508
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v12

    .line 507
    const-wide v14, 0x10500000002L

    invoke-virtual {v1, v14, v15, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 510
    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v12, :cond_139

    .line 511
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 512
    nop

    .line 502
    move-wide/from16 v29, v7

    goto/16 :goto_1ab

    .line 514
    :cond_139
    iget-boolean v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v12, :cond_15e

    .line 515
    const-wide v14, 0x10300000003L

    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 516
    move-object/from16 v31, v6

    move-wide/from16 v29, v7

    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v6

    .line 515
    .end local v6    # "u":Landroid/net/Uri;
    .end local v7    # "oToken":J
    .local v29, "oToken":J
    .local v31, "u":Landroid/net/Uri;
    invoke-virtual {v1, v14, v15, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 517
    const-wide v6, 0x10300000004L

    iget-object v8, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 518
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v14

    .line 517
    invoke-virtual {v1, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_162

    .line 520
    .end local v29    # "oToken":J
    .end local v31    # "u":Landroid/net/Uri;
    .restart local v6    # "u":Landroid/net/Uri;
    .restart local v7    # "oToken":J
    :cond_15e
    move-object/from16 v31, v6

    move-wide/from16 v29, v7

    .end local v6    # "u":Landroid/net/Uri;
    .end local v7    # "oToken":J
    .restart local v29    # "oToken":J
    .restart local v31    # "u":Landroid/net/Uri;
    :goto_162
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_163
    iget-object v7, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_17e

    .line 521
    const-wide v7, 0x20900000005L

    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 522
    invoke-virtual {v12, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 521
    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 520
    add-int/lit8 v6, v6, 0x1

    goto :goto_163

    .line 524
    .end local v6    # "k":I
    :cond_17e
    iget-object v6, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-eqz v6, :cond_1a6

    .line 525
    const/4 v6, 0x0

    .restart local v6    # "k":I
    :goto_183
    iget-object v7, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_1a6

    .line 526
    iget-object v7, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 527
    .end local v31    # "u":Landroid/net/Uri;
    .local v7, "u":Landroid/net/Uri;
    if-eqz v7, :cond_1a1

    .line 528
    const-wide v14, 0x20900000006L

    .line 529
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 528
    invoke-virtual {v1, v14, v15, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 525
    :cond_1a1
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v31, v7

    goto :goto_183

    .line 534
    .end local v6    # "k":I
    .end local v7    # "u":Landroid/net/Uri;
    .restart local v31    # "u":Landroid/net/Uri;
    :cond_1a6
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 502
    .end local v3    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    .end local v10    # "jToken":J
    move-object/from16 v6, v31

    .end local v31    # "u":Landroid/net/Uri;
    .local v6, "u":Landroid/net/Uri;
    :goto_1ab
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v14, v27

    move/from16 v15, v28

    move-wide/from16 v7, v29

    goto/16 :goto_fe

    .line 537
    .end local v2    # "j":I
    .end local v27    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v28    # "m":I
    .end local v29    # "oToken":J
    .local v7, "oToken":J
    .restart local v14    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .restart local v15    # "m":I
    :cond_1b5
    move-object/from16 v31, v6

    move-wide/from16 v29, v7

    move-object/from16 v27, v14

    move/from16 v28, v15

    .end local v6    # "u":Landroid/net/Uri;
    .end local v7    # "oToken":J
    .end local v14    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v15    # "m":I
    .restart local v27    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .restart local v28    # "m":I
    .restart local v29    # "oToken":J
    .restart local v31    # "u":Landroid/net/Uri;
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 478
    .end local v0    # "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    .end local v4    # "tToken":J
    .end local v17    # "shouldDump":Z
    .end local v27    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v28    # "m":I
    .end local v31    # "u":Landroid/net/Uri;
    :goto_1c0
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v20

    move/from16 v12, v21

    move-wide/from16 v3, v22

    move-wide/from16 v5, v24

    move-object/from16 v11, v26

    move-wide/from16 v7, v29

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    const-wide v14, 0x20b00000002L

    goto/16 :goto_7f

    .line 540
    .end local v13    # "observerIdx":I
    .end local v20    # "userId":I
    .end local v21    # "numbOfObserversPerUser":I
    .end local v22    # "token":J
    .end local v24    # "mToken":J
    .end local v26    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .end local v29    # "oToken":J
    .local v3, "token":J
    .restart local v5    # "mToken":J
    .restart local v7    # "oToken":J
    .local v10, "userId":I
    .restart local v11    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .restart local v12    # "numbOfObserversPerUser":I
    :cond_1d9
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move-wide/from16 v29, v7

    move/from16 v20, v10

    move-object/from16 v26, v11

    move/from16 v21, v12

    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .end local v7    # "oToken":J
    .end local v10    # "userId":I
    .end local v11    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .end local v12    # "numbOfObserversPerUser":I
    .restart local v20    # "userId":I
    .restart local v21    # "numbOfObserversPerUser":I
    .restart local v22    # "token":J
    .restart local v24    # "mToken":J
    .restart local v26    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .restart local v29    # "oToken":J
    move-wide/from16 v2, v29

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 468
    .end local v20    # "userId":I
    .end local v21    # "numbOfObserversPerUser":I
    .end local v26    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .end local v29    # "oToken":J
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v16

    move-wide/from16 v3, v22

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    const-wide v10, 0x10b00000001L

    const-wide v12, 0x10500000002L

    goto/16 :goto_56

    .line 543
    .end local v9    # "userIdx":I
    .end local v16    # "n":I
    .end local v22    # "token":J
    .end local v24    # "mToken":J
    .restart local v3    # "token":J
    .restart local v5    # "mToken":J
    .restart local v8    # "n":I
    :cond_200
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move/from16 v16, v8

    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .end local v8    # "n":I
    .restart local v16    # "n":I
    .restart local v22    # "token":J
    .restart local v24    # "mToken":J
    move-wide/from16 v2, v24

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 544
    .end local v24    # "mToken":J
    .local v2, "mToken":J
    move-wide/from16 v4, v22

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 545
    .end local v22    # "token":J
    .local v4, "token":J
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 20
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 360
    move-object/from16 v2, p2

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    iget-object v5, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_38

    .line 361
    iget-object v5, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 362
    .local v5, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {v2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 363
    goto :goto_35

    .line 365
    :cond_1e
    const-string v6, "#"

    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v5, v1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 367
    const-string v6, " from "

    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-static {v1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 360
    .end local v5    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 371
    .end local v4    # "i":I
    :cond_38
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 373
    iget-object v4, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 374
    .local v4, "N":I
    if-lez v4, :cond_173

    .line 375
    const-string v5, "Observers:"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 377
    const/4 v5, 0x0

    .local v5, "userIdx":I
    :goto_4c
    if-ge v5, v4, :cond_170

    .line 378
    iget-object v6, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 379
    .local v6, "userId":I
    iget-object v7, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 380
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 381
    .local v7, "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 382
    .local v8, "numbOfObserversPerUser":I
    const/4 v9, 0x0

    .local v9, "observerIdx":I
    :goto_61
    if-ge v9, v8, :cond_16a

    .line 383
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 384
    .local v10, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    iget-object v11, v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 385
    .local v11, "M":I
    const/4 v12, 0x0

    .line 386
    .local v12, "shouldDump":Z
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_71
    if-ge v13, v11, :cond_88

    .line 387
    iget-object v14, v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 388
    .local v14, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {v2, v15}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_85

    .line 389
    const/4 v12, 0x1

    .line 390
    goto :goto_88

    .line 386
    .end local v14    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :cond_85
    add-int/lit8 v13, v13, 0x1

    goto :goto_71

    .line 393
    .end local v13    # "j":I
    :cond_88
    :goto_88
    if-nez v12, :cond_8c

    .line 394
    goto/16 :goto_164

    .line 396
    :cond_8c
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 397
    .local v13, "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 398
    const-string v14, " 0x"

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 400
    const-string v14, " ("

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 401
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 402
    const-string v14, "):"

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 404
    const-string v14, "Jobs:"

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 406
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_c6
    if-ge v14, v11, :cond_15e

    .line 407
    iget-object v15, v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 408
    .local v15, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    const-string v3, "#"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 409
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3, v1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 410
    const-string v3, " from "

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 411
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-static {v1, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 412
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v3, :cond_155

    .line 413
    const-string v3, ":"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 415
    iget-boolean v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v3, :cond_117

    .line 416
    const-string v3, "Trigger pending: update="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 417
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 418
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    .line 417
    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 419
    const-string v2, ", max="

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 420
    iget-object v2, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 421
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v2

    .line 420
    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 424
    :cond_117
    const-string v2, "Changed Authorities:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 425
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_11d
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_133

    .line 426
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_11d

    .line 428
    .end local v2    # "k":I
    :cond_133
    iget-object v2, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-eqz v2, :cond_151

    .line 429
    const-string v2, "          Changed URIs:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 430
    const/4 v2, 0x0

    .restart local v2    # "k":I
    :goto_13d
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_151

    .line 431
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_13d

    .line 434
    .end local v2    # "k":I
    :cond_151
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_158

    .line 436
    :cond_155
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 406
    .end local v15    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :goto_158
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_c6

    .line 439
    .end local v14    # "j":I
    :cond_15e
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 440
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 382
    .end local v10    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v11    # "M":I
    .end local v12    # "shouldDump":Z
    .end local v13    # "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    :goto_164
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_61

    .line 377
    .end local v6    # "userId":I
    .end local v7    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .end local v8    # "numbOfObserversPerUser":I
    .end local v9    # "observerIdx":I
    :cond_16a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_4c

    .line 443
    .end local v5    # "userIdx":I
    :cond_170
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 445
    :cond_173
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 78
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a3

    .line 79
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-nez v0, :cond_12

    .line 80
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-direct {v0, p0, p1}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 82
    :cond_12
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 83
    const-string v0, "JobScheduler.ContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking content-trigger job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2c
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 86
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 87
    const/4 v0, 0x0

    .line 90
    .local v0, "havePendingUris":Z
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v2, :cond_3d

    .line 91
    const/4 v0, 0x1

    .line 95
    :cond_3d
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v2, :cond_9c

    .line 96
    const/4 v0, 0x1

    .line 97
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v2, :cond_51

    .line 98
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 101
    :cond_51
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 102
    .local v3, "auth":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v4, v4, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v3    # "auth":Ljava/lang/String;
    goto :goto_57

    .line 104
    :cond_6b
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v2, :cond_98

    .line 105
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-nez v2, :cond_7e

    .line 106
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 108
    :cond_7e
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 109
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v4, v4, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v3    # "uri":Landroid/net/Uri;
    goto :goto_84

    .line 112
    :cond_98
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 113
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 115
    :cond_9c
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 116
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 117
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setContentTriggerConstraintSatisfied(Z)Z

    .line 119
    .end local v0    # "havePendingUris":Z
    :cond_a3
    if-eqz p2, :cond_b0

    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_b0

    .line 121
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    .line 122
    iput-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 124
    :cond_b0
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 7
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 142
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 143
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_4d

    .line 145
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->unscheduleLocked()V

    .line 146
    const/4 v0, 0x0

    if-eqz p2, :cond_46

    .line 147
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v1, :cond_4d

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v1, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v1, :cond_4d

    .line 154
    iget-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-nez v1, :cond_2d

    .line 155
    new-instance v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-direct {v1, p0, p2}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    iput-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 157
    :cond_2d
    iget-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    iput-object v2, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 159
    iget-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    iput-object v2, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 161
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object v0, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 162
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object v0, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    goto :goto_4d

    .line 170
    :cond_46
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    .line 171
    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 174
    :cond_4d
    :goto_4d
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    if-eqz v0, :cond_67

    .line 175
    const-string v0, "JobScheduler.ContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No longer tracking job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_67
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 128
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 129
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_1f

    .line 130
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 131
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 133
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 134
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 137
    :cond_1f
    return-void
.end method

.method public rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "newJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .line 182
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 183
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 187
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 188
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 190
    :cond_14
    return-void
.end method
