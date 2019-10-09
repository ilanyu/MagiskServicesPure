.class Lcom/android/server/content/SyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation


# static fields
.field private static final MESSAGE_ACCOUNTS_UPDATED:I = 0x9

.field private static final MESSAGE_CANCEL:I = 0x6

.field static final MESSAGE_JOBSERVICE_OBJECT:I = 0x7

.field private static final MESSAGE_MONITOR_SYNC:I = 0x8

.field private static final MESSAGE_RELEASE_MESSAGES_FROM_QUEUE:I = 0x2

.field static final MESSAGE_REMOVE_PERIODIC_SYNC:I = 0xe

.field static final MESSAGE_SCHEDULE_SYNC:I = 0xc

.field private static final MESSAGE_SERVICE_CONNECTED:I = 0x4

.field private static final MESSAGE_SERVICE_DISCONNECTED:I = 0x5

.field static final MESSAGE_START_SYNC:I = 0xa

.field static final MESSAGE_STOP_SYNC:I = 0xb

.field private static final MESSAGE_SYNC_FINISHED:I = 0x1

.field static final MESSAGE_UPDATE_PERIODIC_SYNC:I = 0xd


# instance fields
.field public final mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

.field private mUnreadyQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3021
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3022
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2941
    new-instance v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$1;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 2942
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    .line 2944
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    .line 3023
    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/content/SyncManager$SyncHandler;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;

    .line 2920
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method private cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 11
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 3738
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3740
    .local v0, "activeSyncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncManager$ActiveSyncContext;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3741
    .local v2, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-eqz v2, :cond_45

    .line 3742
    iget-object v3, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3744
    .local v3, "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 3745
    goto :goto_d

    .line 3747
    :cond_26
    const/4 v4, 0x0

    if-eqz p2, :cond_34

    iget-object v5, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v5, v5, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 3748
    invoke-static {v5, p2, v4}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v5

    if-nez v5, :cond_34

    .line 3751
    goto :goto_d

    .line 3753
    :cond_34
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;
    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v6, v6, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v5, v6, v4, p3}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3755
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3757
    .end local v2    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v3    # "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_45
    goto :goto_d

    .line 3758
    :cond_46
    return-void
.end method

.method private closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 6
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3907
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->close()V

    .line 3908
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3909
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->removeActiveSync(Landroid/content/SyncInfo;I)V

    .line 3912
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3913
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removing all MESSAGE_MONITOR_SYNC & MESSAGE_SYNC_EXPIRED for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3914
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3913
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    :cond_3f
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3918
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "closeActiveSyncContext: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3919
    return-void
.end method

.method private computeSyncOpState(Lcom/android/server/content/SyncOperation;)I
    .registers 12
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .line 3593
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 3595
    .local v0, "isLoggable":Z
    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3598
    .local v2, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v3

    .line 3599
    .local v3, "accounts":[Landroid/accounts/AccountAndUser;
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    # invokes: Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    invoke-static {v4, v3, v5, v6}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_26

    .line 3600
    if-eqz v0, :cond_25

    .line 3601
    const-string v1, "SyncManager"

    const-string v4, "    Dropping sync operation: account doesn\'t exist."

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    :cond_25
    return v5

    .line 3606
    :cond_26
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v8, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v8, v5}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v4

    .line 3607
    .local v4, "state":I
    const/4 v6, 0x3

    if-ne v4, v6, :cond_3f

    .line 3608
    if-eqz v0, :cond_3e

    .line 3609
    const-string v5, "SyncManager"

    const-string v6, "    Dropping sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    :cond_3e
    return v1

    .line 3614
    :cond_3f
    if-nez v4, :cond_4b

    .line 3615
    if-eqz v0, :cond_4a

    .line 3616
    const-string v1, "SyncManager"

    const-string v6, "    Dropping sync operation: isSyncable == NOT_SYNCABLE"

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    :cond_4a
    return v5

    .line 3621
    :cond_4b
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iget v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v6}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3622
    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iget-object v7, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v9, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v9}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    move v1, v5

    goto :goto_6f

    :cond_6e
    move v1, v6

    .line 3629
    .local v1, "syncEnabled":Z
    :goto_6f
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isIgnoreSettings()Z

    move-result v7

    if-nez v7, :cond_7a

    if-gez v4, :cond_78

    goto :goto_7a

    :cond_78
    move v7, v6

    goto :goto_7b

    :cond_7a
    :goto_7a
    move v7, v5

    .line 3632
    .local v7, "ignoreSystemConfiguration":Z
    :goto_7b
    if-nez v1, :cond_89

    if-nez v7, :cond_89

    .line 3633
    if-eqz v0, :cond_88

    .line 3634
    const-string v6, "SyncManager"

    const-string v8, "    Dropping sync operation: disallowed by settings/network."

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    :cond_88
    return v5

    .line 3638
    :cond_89
    return v6
.end method

.method private deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Ljava/lang/String;)V
    .registers 6
    .param p1, "asc"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "why"    # Ljava/lang/String;

    .line 3263
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3264
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3265
    const-wide/16 v1, 0x2710

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 3266
    return-void
.end method

.method private deferStoppedSyncH(Lcom/android/server/content/SyncOperation;J)V
    .registers 6
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "delay"    # J

    .line 3252
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_e

    .line 3253
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object v1

    # invokes: Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    invoke-static {v0, v1, p2, p3}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    goto :goto_13

    .line 3255
    :cond_e
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 3257
    :goto_13
    return-void
.end method

.method private deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V
    .registers 10
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "delay"    # J
    .param p4, "why"    # Ljava/lang/String;

    .line 3236
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "deferSyncH() "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v2, :cond_17

    const-string/jumbo v2, "periodic "

    goto :goto_19

    :cond_17
    const-string v2, ""

    :goto_19
    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v4, "sync.  op="

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v4, " delay="

    aput-object v4, v1, v2

    const/4 v2, 0x5

    .line 3237
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, " why="

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object p4, v1, v2

    .line 3236
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3238
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v0

    iget v1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v1, v3, p4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3239
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_55

    .line 3240
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object v1

    # invokes: Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    invoke-static {v0, v1, p2, p3}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    goto :goto_61

    .line 3245
    :cond_55
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string v1, "deferSyncH()"

    # invokes: Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3246
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 3248
    :goto_61
    return-void
.end method

.method private dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z
    .registers 19
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    move-object/from16 v0, p0

    .line 3642
    move-object/from16 v7, p1

    const-string v1, "SyncManager"

    const/4 v8, 0x2

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 3643
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSyncOperation: we are going to sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "num active syncs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3646
    .local v2, "syncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string v3, "SyncManager"

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    .end local v2    # "syncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    goto :goto_4a

    .line 3649
    :cond_60
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 3650
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 3652
    .local v1, "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    if-eqz v1, :cond_7b

    .line 3653
    iget-object v2, v7, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v3, v7, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 3654
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3653
    invoke-virtual {v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportExemptedSyncStart(Ljava/lang/String;I)V

    .line 3661
    .end local v1    # "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    :cond_7b
    iget-object v9, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3662
    .local v9, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v1, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3663
    invoke-static {v1, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v10

    .line 3665
    .local v10, "syncAdapterType":Landroid/content/SyncAdapterType;
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v2, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v10, v2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v11

    .line 3666
    .local v11, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v11, :cond_cb

    .line 3667
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "dispatchSyncOperation() failed: no sync adapter info for "

    aput-object v3, v2, v13

    aput-object v10, v2, v12

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3669
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find a sync adapter for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", removing settings for it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/server/content/SyncStorageEngine;->removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3672
    return v13

    .line 3674
    :cond_cb
    iget v14, v11, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 3675
    .local v14, "targetUid":I
    iget-object v15, v11, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 3676
    .local v15, "targetComponent":Landroid/content/ComponentName;
    new-instance v16, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3677
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J

    move-result-wide v4

    move-object/from16 v1, v16

    move-object v3, v7

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncManager$ActiveSyncContext;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V

    .line 3678
    .local v1, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string v2, "SyncManager"

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 3679
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchSyncOperation: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    :cond_fc
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/content/SyncStorageEngine;->addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    .line 3683
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3686
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->access$3200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3688
    iget v2, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v15, v2}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->bindToSyncAdapter(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_147

    .line 3689
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "dispatchSyncOperation() failed: bind failed. target: "

    aput-object v4, v3, v13

    aput-object v15, v3, v12

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3691
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind attempt failed - target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3693
    return v13

    .line 3696
    :cond_147
    return v12
.end method

.method private findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .registers 6
    .param p1, "jobId"    # I

    .line 3366
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3367
    .local v1, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3368
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v2, :cond_1d

    iget v3, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v3, p1, :cond_1d

    .line 3369
    return-object v1

    .line 3371
    .end local v1    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1d
    goto :goto_8

    .line 3372
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .registers 7
    .param p1, "operation"    # Lcom/android/server/content/SyncOperation;

    .line 3219
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v0

    .line 3220
    .local v0, "wakeLockKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 3221
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-nez v1, :cond_33

    .line 3222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*sync*/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3223
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3300(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 3224
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3225
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3227
    .end local v2    # "name":Ljava/lang/String;
    :cond_33
    return-object v1
.end method

.method private handleSyncMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 3059
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 3062
    .local v0, "isLoggable":Z
    :try_start_7
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->readDataConnectionState()Z
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Z

    move-result v3

    # setter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->access$502(Lcom/android/server/content/SyncManager;Z)Z

    .line 3063
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_27a

    :pswitch_1b
    goto/16 :goto_26c

    .line 3106
    :pswitch_1d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 3107
    .local v1, "args":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3108
    goto/16 :goto_26c

    .line 3100
    .end local v1    # "args":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;>;"
    :pswitch_32
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    .line 3102
    .local v1, "data":Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
    iget-object v3, v1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-wide v4, v1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->pollFrequency:J

    iget-wide v6, v1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->flex:J

    iget-object v8, v1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->extras:Landroid/os/Bundle;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/content/SyncManager$SyncHandler;->updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 3104
    goto/16 :goto_26c

    .line 3065
    .end local v1    # "data":Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
    :pswitch_44
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    .line 3067
    .local v1, "syncPayload":Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->syncOperation:Lcom/android/server/content/SyncOperation;

    .line 3068
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-wide v4, v1, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->minDelayMillis:J

    # invokes: Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    invoke-static {v3, v2, v4, v5}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 3069
    goto/16 :goto_26c

    .line 3077
    .end local v1    # "syncPayload":Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :pswitch_53
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 3078
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v0, :cond_60

    .line 3079
    const-string v2, "SyncManager"

    const-string v4, "Stop sync received."

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    :cond_60
    iget v2, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-result-object v2

    .line 3082
    .local v2, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-eqz v2, :cond_26c

    .line 3083
    invoke-direct {p0, v3, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3084
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_71

    move v3, v5

    goto :goto_72

    :cond_71
    move v3, v6

    .line 3085
    .local v3, "reschedule":Z
    :goto_72
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_77

    goto :goto_78

    :cond_77
    move v5, v6

    :goto_78
    move v4, v5

    .line 3086
    .local v4, "applyBackoff":Z
    if-eqz v0, :cond_99

    .line 3087
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping sync. Reschedule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "Backoff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    :cond_99
    if-eqz v4, :cond_a2

    .line 3091
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v6, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    # invokes: Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    invoke-static {v5, v6}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3093
    :cond_a2
    if-eqz v3, :cond_a9

    .line 3094
    const-wide/16 v5, 0x0

    invoke-direct {p0, v1, v5, v6}, Lcom/android/server/content/SyncManager$SyncHandler;->deferStoppedSyncH(Lcom/android/server/content/SyncOperation;J)V

    .line 3096
    .end local v3    # "reschedule":Z
    .end local v4    # "applyBackoff":Z
    :cond_a9
    goto/16 :goto_26c

    .line 3072
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    .end local v2    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :pswitch_ab
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 3073
    .restart local v1    # "op":Lcom/android/server/content/SyncOperation;
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->startSyncH(Lcom/android/server/content/SyncOperation;)V

    .line 3074
    goto/16 :goto_26c

    .line 3191
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :pswitch_b4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3192
    .local v1, "monitoredSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string v2, "SyncManager"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 3193
    const-string v2, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSyncHandlerMessage: MESSAGE_MONITOR_SYNC: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v7, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    :cond_da
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 3198
    const-string v2, "SyncManager"

    const-string v4, "Detected sync making no progress for %s. cancelling."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v4, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v5, "no network activity"

    invoke-virtual {v2, v4, v6, v5}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3204
    invoke-direct {p0, v3, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto/16 :goto_26c

    .line 3208
    :cond_104
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->access$3200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3208
    .end local v1    # "monitoredSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    goto/16 :goto_26c

    .line 3111
    :pswitch_10b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3112
    .local v1, "endpoint":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v2

    .line 3113
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "SyncManager"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_139

    .line 3114
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSyncHandlerMessage: MESSAGE_CANCEL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " bundle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    :cond_139
    const-string v3, "MESSAGE_CANCEL"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3118
    goto/16 :goto_26c

    .line 3155
    .end local v1    # "endpoint":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v2    # "extras":Landroid/os/Bundle;
    :pswitch_140
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    iget-object v2, v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3157
    .local v2, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string v3, "SyncManager"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_164

    .line 3158
    const-string v3, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    :cond_164
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    invoke-static {v3, v2}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v3
    :try_end_16a
    .catchall {:try_start_7 .. :try_end_16a} :catchall_273

    if-eqz v3, :cond_26c

    .line 3166
    :try_start_16c
    iget-object v3, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v3, :cond_19e

    .line 3167
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v3

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Calling cancelSync for SERVICE_DISCONNECTED "

    aput-object v8, v7, v6

    aput-object v2, v7, v5

    const-string v8, " adapter="

    aput-object v8, v7, v1

    iget-object v8, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v8, v7, v4

    invoke-virtual {v3, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3170
    iget-object v3, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v3, v2}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V

    .line 3171
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v7, "Canceled"

    aput-object v7, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_19e
    .catch Landroid/os/RemoteException; {:try_start_16c .. :try_end_19e} :catch_19f
    .catchall {:try_start_16c .. :try_end_19e} :catchall_273

    .line 3176
    :cond_19e
    goto :goto_1b5

    .line 3173
    :catch_19f
    move-exception v3

    .line 3174
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1a0
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "RemoteException "

    aput-object v7, v1, v6

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    invoke-virtual {v4, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3180
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1b5
    new-instance v1, Landroid/content/SyncResult;

    invoke-direct {v1}, Landroid/content/SyncResult;-><init>()V

    .line 3181
    .local v1, "syncResult":Landroid/content/SyncResult;
    iget-object v3, v1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    iput-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    .line 3182
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v4, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v5, "service disconnected"

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3185
    invoke-direct {p0, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3186
    .end local v1    # "syncResult":Landroid/content/SyncResult;
    goto/16 :goto_26c

    .line 3140
    .end local v2    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :pswitch_1d8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    .line 3141
    .local v2, "msgData":Lcom/android/server/content/SyncManager$ServiceConnectionData;
    const-string v3, "SyncManager"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1fc

    .line 3142
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    :cond_1fc
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    # invokes: Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    invoke-static {v1, v3}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v1

    if-eqz v1, :cond_26c

    .line 3147
    iget-object v1, v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v3, v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;->adapter:Landroid/os/IBinder;

    invoke-direct {p0, v1, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    goto :goto_26c

    .line 3121
    .end local v2    # "msgData":Lcom/android/server/content/SyncManager$ServiceConnectionData;
    :pswitch_20e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    .line 3123
    .local v1, "payload":Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    # invokes: Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v2

    if-nez v2, :cond_235

    .line 3124
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSyncHandlerMessage: dropping since the sync is no longer active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    goto :goto_26c

    .line 3129
    :cond_235
    if-eqz v0, :cond_252

    .line 3130
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncFinished"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v4, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :cond_252
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v3, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v4, "sync finished"

    invoke-virtual {v2, v3, v6, v4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3135
    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->syncResult:Landroid/content/SyncResult;

    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    :try_end_26b
    .catchall {:try_start_1a0 .. :try_end_26b} :catchall_273

    .line 3137
    nop

    .line 3214
    .end local v1    # "payload":Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;
    :cond_26c
    :goto_26c
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 3215
    nop

    .line 3216
    return-void

    .line 3214
    :catchall_273
    move-exception v1

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    throw v1

    :pswitch_data_27a
    .packed-switch 0x1
        :pswitch_20e
        :pswitch_1b
        :pswitch_1b
        :pswitch_1d8
        :pswitch_140
        :pswitch_10b
        :pswitch_1b
        :pswitch_b4
        :pswitch_1b
        :pswitch_ab
        :pswitch_53
        :pswitch_44
        :pswitch_32
        :pswitch_1d
    .end packed-switch
.end method

.method private installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V
    .registers 22
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "numDeletes"    # J
    .param p5, "userId"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 3952
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$4700(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v2

    if-nez v2, :cond_d

    return-void

    .line 3954
    :cond_d
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 3956
    .local v2, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v2, :cond_1f

    .line 3957
    return-void

    .line 3959
    :cond_1f
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 3961
    .local v4, "authorityName":Ljava/lang/CharSequence;
    new-instance v5, Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/content/SyncActivityTooManyDeletes;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3962
    .local v5, "clickIntent":Landroid/content/Intent;
    const-string v6, "account"

    move-object/from16 v7, p1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3963
    const-string v6, "authority"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3964
    const-string/jumbo v6, "provider"

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3965
    const-string/jumbo v6, "numDeletes"

    move-wide/from16 v14, p3

    invoke-virtual {v5, v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3967
    invoke-direct {v0, v5}, Lcom/android/server/content/SyncManager$SyncHandler;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_66

    .line 3968
    const-string v3, "SyncManager"

    const-string v6, "No activity found to handle too many deletes."

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    return-void

    .line 3972
    :cond_66
    new-instance v6, Landroid/os/UserHandle;

    move/from16 v13, p5

    invoke-direct {v6, v13}, Landroid/os/UserHandle;-><init>(I)V

    .line 3973
    .local v6, "user":Landroid/os/UserHandle;
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3974
    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/high16 v11, 0x10000000

    const/4 v12, 0x0

    move-object v10, v5

    move-object v13, v6

    invoke-static/range {v8 .. v13}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 3977
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104018c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 3980
    .local v9, "tooManyDeletesDescFormat":Ljava/lang/CharSequence;
    iget-object v10, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    invoke-static {v10, v6}, Lcom/android/server/content/SyncManager;->access$4800(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    .line 3981
    .local v10, "contextForUser":Landroid/content/Context;
    new-instance v11, Landroid/app/Notification$Builder;

    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    invoke-direct {v11, v10, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v12, 0x10807bb

    .line 3983
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3984
    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v12

    const v13, 0x104018a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 3985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    const v12, 0x106016f

    .line 3986
    invoke-virtual {v10, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const v12, 0x104018b

    .line 3988
    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 3991
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3990
    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3992
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3993
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 3994
    .local v3, "notification":Landroid/app/Notification;
    iget v11, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v3, Landroid/app/Notification;->flags:I

    .line 3995
    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v11}, Lcom/android/server/content/SyncManager;->access$4700(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v11

    .line 3996
    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->hashCode()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v13

    xor-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x12

    .line 3995
    invoke-virtual {v11, v12, v13, v3, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 3999
    return-void
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 4008
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4009
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 4010
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 4011
    .local v3, "listSize":I
    move v4, v1

    .local v4, "i":I
    :goto_14
    if-ge v4, v3, :cond_2a

    .line 4012
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 4013
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_27

    .line 4015
    return v7

    .line 4011
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 4019
    .end local v4    # "i":I
    :cond_2a
    return v1
.end method

.method private isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .registers 25
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3566
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 3567
    # invokes: Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J
    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->access$4200(Lcom/android/server/content/SyncManager;I)J

    move-result-wide v2

    .line 3568
    .local v2, "bytesTransferredCurrent":J
    iget-wide v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    sub-long v4, v2, v4

    .line 3571
    .local v4, "deltaBytesTransferred":J
    const-string v6, "SyncManager"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 3573
    move-wide v10, v4

    .line 3574
    .local v10, "remainder":J
    const-wide/32 v12, 0x100000

    div-long v14, v10, v12

    .line 3575
    .local v14, "mb":J
    rem-long/2addr v10, v12

    .line 3576
    const-wide/16 v12, 0x400

    div-long v7, v10, v12

    .line 3577
    .local v7, "kb":J
    rem-long/2addr v10, v12

    .line 3578
    move-wide v12, v10

    .line 3579
    .local v12, "b":J
    const-string v6, "SyncManager"

    const-string v9, "Time since last update: %ds. Delta transferred: %dMBs,%dKBs,%dBs"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 3581
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-wide/from16 v21, v2

    iget-wide v2, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    .end local v2    # "bytesTransferredCurrent":J
    .local v21, "bytesTransferredCurrent":J
    sub-long v19, v19, v2

    const-wide/16 v2, 0x3e8

    div-long v2, v19, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3583
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v18, 0x1

    aput-object v2, v1, v18

    const/4 v2, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v1, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v16, 0x3

    aput-object v2, v1, v16

    .line 3579
    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "kb":J
    .end local v10    # "remainder":J
    .end local v12    # "b":J
    .end local v14    # "mb":J
    goto :goto_66

    .line 3586
    .end local v21    # "bytesTransferredCurrent":J
    .restart local v2    # "bytesTransferredCurrent":J
    :cond_61
    move-wide/from16 v21, v2

    const/4 v3, 0x0

    const/16 v18, 0x1

    .end local v2    # "bytesTransferredCurrent":J
    .restart local v21    # "bytesTransferredCurrent":J
    :goto_66
    const-wide/16 v1, 0xa

    cmp-long v1, v4, v1

    if-gtz v1, :cond_6d

    goto :goto_6f

    :cond_6d
    move/from16 v18, v3

    :goto_6f
    return v18
.end method

.method public static synthetic lambda$updateOrAddPeriodicSyncH$0(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 16
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pollFrequency"    # J
    .param p4, "flex"    # J
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "result"    # Landroid/os/Bundle;

    .line 3517
    if-eqz p7, :cond_13

    const-string v0, "booleanResult"

    .line 3518
    invoke-virtual {p7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3519
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 3521
    :cond_13
    return-void
.end method

.method private maybeUpdateSyncPeriodH(Lcom/android/server/content/SyncOperation;JJ)V
    .registers 14
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "pollFrequencyMillis"    # J
    .param p4, "flexMillis"    # J

    .line 3440
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_c

    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    cmp-long v0, p4, v0

    if-eqz v0, :cond_4e

    .line 3442
    :cond_c
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3443
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updating period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " and flex to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    :cond_3c
    new-instance v0, Lcom/android/server/content/SyncOperation;

    move-object v2, v0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;JJ)V

    .line 3448
    .local v0, "newOp":Lcom/android/server/content/SyncOperation;
    iget v1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    iput v1, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 3449
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    invoke-static {v1, v0}, Lcom/android/server/content/SyncManager;->access$3900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3451
    .end local v0    # "newOp":Lcom/android/server/content/SyncOperation;
    :cond_4e
    return-void
.end method

.method private removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 3555
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->verifyJobScheduler()V
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)V

    .line 3556
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 3557
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 3558
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v3, :cond_33

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v4, 0x1

    .line 3559
    invoke-static {v3, p2, v4}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 3560
    invoke-direct {p0, v2, p3}, Lcom/android/server/content/SyncManager$SyncHandler;->removePeriodicSyncInternalH(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3562
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_33
    goto :goto_f

    .line 3563
    :cond_34
    return-void
.end method

.method private removePeriodicSyncInternalH(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .registers 11
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "why"    # Ljava/lang/String;

    .line 3539
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 3540
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 3541
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget v3, v2, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-eq v3, v4, :cond_22

    iget v3, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v3, v4, :cond_56

    .line 3542
    :cond_22
    iget v3, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-direct {p0, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    .line 3543
    .local v3, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const/4 v4, 0x0

    if-eqz v3, :cond_3d

    .line 3544
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;
    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v5

    iget v6, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v7, "removePeriodicSyncInternalH"

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3546
    const/4 v5, 0x0

    invoke-direct {p0, v5, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3548
    :cond_3d
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "removePeriodicSyncInternalH-canceling: "

    aput-object v7, v6, v4

    const/4 v4, 0x1

    aput-object v2, v6, v4

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3549
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    invoke-static {v4, v2, p2}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3551
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    .end local v3    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_56
    goto :goto_a

    .line 3552
    :cond_57
    return-void
.end method

.method private reschedulePeriodicSyncH(Lcom/android/server/content/SyncOperation;)V
    .registers 7
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .line 3765
    const/4 v0, 0x0

    .line 3766
    .local v0, "periodicSync":Lcom/android/server/content/SyncOperation;
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v1}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v1

    .line 3767
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 3768
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_23

    invoke-virtual {p1, v3}, Lcom/android/server/content/SyncOperation;->matchesPeriodicOperation(Lcom/android/server/content/SyncOperation;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 3769
    move-object v0, v3

    .line 3770
    goto :goto_24

    .line 3772
    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    :cond_23
    goto :goto_b

    .line 3773
    :cond_24
    :goto_24
    if-nez v0, :cond_27

    .line 3774
    return-void

    .line 3776
    :cond_27
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    invoke-static {v2, v0}, Lcom/android/server/content/SyncManager;->access$3900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3777
    return-void
.end method

.method private runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V
    .registers 12
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncAdapter"    # Landroid/os/IBinder;

    .line 3701
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3703
    .local v0, "syncOperation":Lcom/android/server/content/SyncOperation;
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_5
    iput-boolean v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 3704
    invoke-interface {p2, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3706
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v4

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sync start: account="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, " authority="

    aput-object v6, v5, v3

    iget-object v6, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v6, 0x3

    const-string v7, " reason="

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x0

    iget v8, v0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 3708
    invoke-static {v7, v8}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, " extras="

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 3709
    invoke-static {v7}, Lcom/android/server/content/SyncOperation;->extrasToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, " adapter="

    aput-object v7, v5, v6

    const/16 v6, 0x8

    iget-object v7, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v7, v5, v6

    .line 3706
    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3712
    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    move-result-object v4

    iput-object v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 3713
    iget-object v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    iget-object v5, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v7, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 3714
    invoke-interface {v4, p1, v5, v6, v7}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 3717
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "Sync is running now..."

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_84} :catch_b5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_84} :catch_85

    goto :goto_e2

    .line 3724
    :catch_85
    move-exception v4

    .line 3725
    .local v4, "exc":Ljava/lang/RuntimeException;
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "Sync failed with RuntimeException: "

    aput-object v6, v1, v2

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v5, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3726
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3727
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught RuntimeException while starting the sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "exc":Ljava/lang/RuntimeException;
    goto :goto_e3

    .line 3718
    :catch_b5
    move-exception v4

    .line 3719
    .local v4, "remoteExc":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "Sync failed with RemoteException: "

    aput-object v6, v1, v2

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v5, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3720
    const-string v1, "SyncManager"

    const-string/jumbo v2, "maybeStartNextSync: caught a RemoteException, rescheduling"

    invoke-static {v1, v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3721
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3722
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    # invokes: Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3723
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    invoke-static {v1, v0}, Lcom/android/server/content/SyncManager;->access$3900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3728
    .end local v4    # "remoteExc":Landroid/os/RemoteException;
    :goto_e2
    nop

    .line 3729
    :goto_e3
    return-void
.end method

.method private runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 36
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 3781
    move-object/from16 v13, p2

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    .line 3783
    .local v14, "isLoggable":Z
    iget-object v15, v13, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3784
    .local v15, "syncOperation":Lcom/android/server/content/SyncOperation;
    iget-object v10, v15, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3786
    .local v10, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-boolean v0, v13, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 3787
    iget-object v0, v13, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v0}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v13, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3788
    iput-boolean v2, v13, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 3790
    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v13, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v16, v3, v5

    .line 3795
    .local v16, "elapsedTime":J
    iget-object v0, v11, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "runSyncFinishedOrCanceledH() op="

    aput-object v5, v4, v2

    const/4 v5, 0x1

    aput-object v15, v4, v5

    const-string v6, " result="

    aput-object v6, v4, v1

    const/4 v6, 0x3

    aput-object v12, v4, v6

    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3797
    if-eqz v12, :cond_f9

    .line 3798
    if-eqz v14, :cond_67

    .line 3799
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runSyncFinishedOrCanceled [finished]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", result "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    :cond_67
    invoke-direct {v11, v13}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3809
    iget-boolean v0, v15, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_76

    .line 3810
    iget-object v0, v11, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v1, "runSyncFinishedOrCanceledH()-finished"

    # invokes: Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    invoke-static {v0, v15, v1}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3813
    :cond_76
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    move-result v0

    if-nez v0, :cond_95

    .line 3814
    const-string/jumbo v0, "success"

    .line 3816
    .local v0, "historyMessage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3817
    .local v1, "downstreamActivity":I
    const/4 v2, 0x0

    .line 3818
    .local v2, "upstreamActivity":I
    iget-object v3, v11, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v15, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v5, "sync success"

    # invokes: Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/content/SyncManager;->access$4300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 3823
    invoke-virtual {v15}, Lcom/android/server/content/SyncOperation;->isDerivedFromFailedPeriodicSync()Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 3824
    invoke-direct {v11, v15}, Lcom/android/server/content/SyncManager$SyncHandler;->reschedulePeriodicSyncH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_ef

    .line 3827
    .end local v0    # "historyMessage":Ljava/lang/String;
    .end local v1    # "downstreamActivity":I
    .end local v2    # "upstreamActivity":I
    :cond_95
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed sync operation "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    iget v0, v15, Lcom/android/server/content/SyncOperation;->retries:I

    add-int/2addr v0, v5

    iput v0, v15, Lcom/android/server/content/SyncOperation;->retries:I

    .line 3830
    iget v0, v15, Lcom/android/server/content/SyncOperation;->retries:I

    iget-object v1, v11, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$4400(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManagerConstants;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/content/SyncManagerConstants;->getMaxRetriesWithAppStandbyExemption()I

    move-result v1

    if-le v0, v1, :cond_c8

    .line 3831
    iput v2, v15, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 3835
    :cond_c8
    iget-object v0, v11, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v15, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    # invokes: Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3836
    iget-boolean v0, v15, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_d9

    .line 3838
    iget-object v0, v11, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    invoke-static {v0, v12, v15}, Lcom/android/server/content/SyncManager;->access$4500(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    goto :goto_e4

    .line 3841
    :cond_d9
    iget-object v0, v11, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v15}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 3844
    :goto_e4
    nop

    .line 3845
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->syncResultToErrorNumber(Landroid/content/SyncResult;)I

    move-result v0

    .line 3844
    invoke-static {v0}, Landroid/content/ContentResolver;->syncErrorToString(I)Ljava/lang/String;

    move-result-object v0

    .line 3847
    .restart local v0    # "historyMessage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3848
    .restart local v1    # "downstreamActivity":I
    nop

    .line 3850
    .restart local v2    # "upstreamActivity":I
    :cond_ef
    :goto_ef
    iget-object v3, v11, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v15, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-wide v5, v12, Landroid/content/SyncResult;->delayUntil:J

    # invokes: Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/content/SyncManager;->access$4600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    goto :goto_16d

    .line 3852
    .end local v0    # "historyMessage":Ljava/lang/String;
    .end local v1    # "downstreamActivity":I
    .end local v2    # "upstreamActivity":I
    :cond_f9
    if-eqz v14, :cond_112

    .line 3853
    const-string v0, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "runSyncFinishedOrCanceled [canceled]: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    :cond_112
    iget-boolean v0, v15, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_11e

    .line 3857
    iget-object v0, v11, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v4, "runSyncFinishedOrCanceledH()-canceled"

    # invokes: Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    invoke-static {v0, v15, v4}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3860
    :cond_11e
    iget-object v0, v13, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v0, :cond_166

    .line 3862
    :try_start_122
    iget-object v0, v11, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Calling cancelSync for runSyncFinishedOrCanceled "

    aput-object v4, v3, v2

    aput-object v13, v3, v5

    const-string v4, "  adapter="

    aput-object v4, v3, v1

    iget-object v4, v13, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v4, v3, v6

    invoke-virtual {v0, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3864
    iget-object v0, v13, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v0, v13}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V

    .line 3865
    iget-object v0, v11, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "Canceled"

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_14f
    .catch Landroid/os/RemoteException; {:try_start_122 .. :try_end_14f} :catch_150

    .line 3869
    goto :goto_166

    .line 3866
    :catch_150
    move-exception v0

    .line 3867
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, v11, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "RemoteException "

    aput-object v4, v1, v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v3, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3871
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_166
    :goto_166
    const-string v0, "canceled"

    .line 3872
    .local v0, "historyMessage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3873
    .restart local v1    # "downstreamActivity":I
    const/4 v2, 0x0

    .line 3876
    .restart local v2    # "upstreamActivity":I
    invoke-direct {v11, v13}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3882
    .end local v1    # "downstreamActivity":I
    .end local v2    # "upstreamActivity":I
    .local v18, "upstreamActivity":I
    .local v19, "downstreamActivity":I
    :goto_16d
    move/from16 v19, v1

    move/from16 v18, v2

    iget-wide v2, v13, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    move-object v1, v11

    move-object v4, v15

    move-object v5, v0

    move/from16 v6, v18

    move/from16 v7, v19

    move-wide/from16 v8, v16

    move-object v13, v10

    move-object v10, v12

    .end local v10    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .local v13, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/content/SyncManager$SyncHandler;->stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJLandroid/content/SyncResult;)V

    .line 3885
    if-eqz v12, :cond_196

    iget-boolean v1, v12, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v1, :cond_196

    .line 3886
    iget-object v2, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v1, v12, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v1, Landroid/content/SyncStats;->numDeletes:J

    iget v6, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move-object v1, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncManager$SyncHandler;->installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V

    goto :goto_1b9

    .line 3890
    :cond_196
    iget-object v1, v11, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$4700(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 3891
    invoke-virtual {v2}, Landroid/accounts/Account;->hashCode()I

    move-result v2

    iget-object v3, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    new-instance v4, Landroid/os/UserHandle;

    iget v5, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 3890
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3895
    :goto_1b9
    if-eqz v12, :cond_1f9

    iget-boolean v1, v12, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v1, :cond_1f9

    .line 3896
    iget-object v1, v11, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    new-instance v2, Lcom/android/server/content/SyncOperation;

    iget-object v3, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v4, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v5, v15, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v6, v15, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v7, v15, Lcom/android/server/content/SyncOperation;->reason:I

    iget v8, v15, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v9, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v31, v0

    iget-boolean v0, v15, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .end local v0    # "historyMessage":Ljava/lang/String;
    .local v31, "historyMessage":Ljava/lang/String;
    iget v11, v15, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move/from16 v29, v0

    move/from16 v30, v11

    invoke-direct/range {v20 .. v30}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    # invokes: Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$3900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    goto :goto_1fb

    .line 3904
    .end local v31    # "historyMessage":Ljava/lang/String;
    .restart local v0    # "historyMessage":Ljava/lang/String;
    :cond_1f9
    move-object/from16 v31, v0

    .line 3904
    .end local v0    # "historyMessage":Ljava/lang/String;
    .restart local v31    # "historyMessage":Ljava/lang/String;
    :goto_1fb
    return-void
.end method

.method private startSyncH(Lcom/android/server/content/SyncOperation;)V
    .registers 13
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .line 3275
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 3276
    .local v0, "isLoggable":Z
    if-eqz v0, :cond_12

    const-string v2, "SyncManager"

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    :cond_12
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/content/SyncStorageEngine;->setClockValid()V

    .line 3282
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v2

    iget v3, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncJobService;->markSyncStarted(I)V

    .line 3284
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mStorageIsLow:Z
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$000(Lcom/android/server/content/SyncManager;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 3285
    const-wide/32 v1, 0x36ee80

    const-string/jumbo v3, "storage low"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 3286
    return-void

    .line 3291
    :cond_38
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1, v2}, Lcom/android/server/content/SyncManagerInjector;->getSyncDelayedH(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncManager;)J

    move-result-wide v2

    .line 3292
    .local v2, "injectorDelay":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_6e

    .line 3293
    const-string v4, "SyncManager"

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 3294
    const-string v1, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync is delayed by injector for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    :cond_68
    const-string v1, "injector delay"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 3297
    return-void

    .line 3301
    :cond_6e
    iget-boolean v1, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    const/4 v6, 0x0

    if-eqz v1, :cond_db

    .line 3304
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v1}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v1

    .line 3305
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncOperation;

    .line 3306
    .local v8, "syncOperation":Lcom/android/server/content/SyncOperation;
    iget v9, v8, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v10, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v9, v10, :cond_9e

    .line 3307
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v4

    iget v5, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v7, "periodic sync, pending"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3309
    return-void

    .line 3311
    .end local v8    # "syncOperation":Lcom/android/server/content/SyncOperation;
    :cond_9e
    goto :goto_7d

    .line 3314
    :cond_9f
    iget-object v7, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v7, v7, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_cb

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3315
    .local v8, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v9, v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v9, v9, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v10, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v9, v10, :cond_ca

    .line 3316
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v4

    iget v5, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v7, "periodic sync, already running"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3318
    return-void

    .line 3320
    .end local v8    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_ca
    goto :goto_a7

    .line 3322
    :cond_cb
    iget-object v7, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v8, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    # invokes: Lcom/android/server/content/SyncManager;->isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    invoke-static {v7, v8}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v7

    if-eqz v7, :cond_db

    .line 3323
    const-string v6, "backing off"

    invoke-direct {p0, p1, v4, v5, v6}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 3324
    return-void

    .line 3329
    .end local v1    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    :cond_db
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_138

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3330
    .local v4, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v5, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncOperation;->isConflict(Lcom/android/server/content/SyncOperation;)Z

    move-result v5

    if-eqz v5, :cond_137

    .line 3333
    iget-object v1, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->findPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->findPriority()I

    move-result v5

    if-lt v1, v5, :cond_127

    .line 3334
    if-eqz v0, :cond_11f

    .line 3335
    const-string v1, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rescheduling sync due to conflict "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    :cond_11f
    const-wide/16 v5, 0x2710

    const-string v1, "delay on conflict"

    invoke-direct {p0, p1, v5, v6, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 3338
    return-void

    .line 3340
    :cond_127
    if-eqz v0, :cond_130

    .line 3341
    const-string v1, "SyncManager"

    const-string v5, "Pushing back running sync due to a higher priority sync"

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    :cond_130
    const-string/jumbo v1, "preempted"

    invoke-direct {p0, v4, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Ljava/lang/String;)V

    .line 3344
    goto :goto_138

    .line 3347
    .end local v4    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_137
    goto :goto_e3

    .line 3349
    :cond_138
    :goto_138
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->computeSyncOpState(Lcom/android/server/content/SyncOperation;)I

    move-result v1

    .line 3350
    .local v1, "syncOpState":I
    packed-switch v1, :pswitch_data_17a

    .line 3358
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z

    move-result v4

    if-nez v4, :cond_170

    .line 3359
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v4

    iget v5, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string v7, "dispatchSyncOperation() failed"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    goto :goto_170

    .line 3353
    :pswitch_153
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v4

    iget v5, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid op state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3355
    return-void

    .line 3362
    :cond_170
    :goto_170
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v5, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    # invokes: Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    invoke-static {v4, v5}, Lcom/android/server/content/SyncManager;->access$3500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3363
    return-void

    nop

    nop

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_153
        :pswitch_153
    .end packed-switch
.end method

.method private syncResultToErrorNumber(Landroid/content/SyncResult;)I
    .registers 6
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .line 3931
    iget-boolean v0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_6

    .line 3932
    const/4 v0, 0x1

    return v0

    .line 3933
    :cond_6
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    .line 3934
    const/4 v0, 0x2

    return v0

    .line 3935
    :cond_12
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 3936
    const/4 v0, 0x3

    return v0

    .line 3937
    :cond_1c
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    .line 3938
    const/4 v0, 0x4

    return v0

    .line 3939
    :cond_26
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_30

    .line 3940
    const/4 v0, 0x5

    return v0

    .line 3941
    :cond_30
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_36

    .line 3942
    const/4 v0, 0x6

    return v0

    .line 3943
    :cond_36
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_3c

    .line 3944
    const/4 v0, 0x7

    return v0

    .line 3945
    :cond_3c
    iget-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_43

    .line 3946
    const/16 v0, 0x8

    return v0

    .line 3947
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "we are not in an error state, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tryEnqueueMessageUntilReadyToRun(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 3009
    monitor-enter p0

    .line 3010
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mProvisioned:Z
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1600(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mJobServiceReady:Z
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_1d

    .line 3016
    :cond_1a
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 3012
    :cond_1d
    :goto_1d
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 3013
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3014
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 3018
    .end local v0    # "m":Landroid/os/Message;
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method private updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .registers 38
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pollFrequency"    # J
    .param p4, "flex"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-wide/from16 v14, p2

    move-wide/from16 v12, p4

    .line 3455
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    .line 3456
    .local v25, "isLoggable":Z
    iget-object v0, v9, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->verifyJobScheduler()V
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)V

    .line 3457
    const-wide/16 v0, 0x3e8

    mul-long v26, v14, v0

    .line 3458
    .local v26, "pollFrequencyMillis":J
    mul-long v28, v12, v0

    .line 3459
    .local v28, "flexMillis":J
    if-eqz v25, :cond_4e

    .line 3460
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Addition to periodic syncs requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " flexMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3463
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3460
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    :cond_4e
    iget-object v0, v9, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v7

    .line 3466
    .local v7, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/content/SyncOperation;

    .line 3467
    .local v10, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v1, v10, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v1, :cond_86

    iget-object v1, v10, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v1, v8}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, v10, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 3468
    move-object/from16 v11, p6

    invoke-static {v1, v11, v2}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 3469
    move-object v1, v9

    move-object v2, v10

    move-wide/from16 v3, v26

    move-wide/from16 v5, v28

    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeUpdateSyncPeriodH(Lcom/android/server/content/SyncOperation;JJ)V

    .line 3470
    return-void

    .line 3472
    .end local v10    # "op":Lcom/android/server/content/SyncOperation;
    :cond_86
    move-object/from16 v11, p6

    :cond_88
    goto :goto_58

    .line 3474
    :cond_89
    move-object/from16 v11, p6

    if-eqz v25, :cond_bf

    .line 3475
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding new periodic sync: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " period: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " flexMillis: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " extras: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3478
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3475
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    :cond_bf
    iget-object v0, v9, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v1, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3483
    invoke-static {v1, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v1

    iget v3, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 3482
    invoke-virtual {v0, v1, v3}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v6

    .line 3486
    .local v6, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v6, :cond_d6

    .line 3487
    return-void

    .line 3490
    :cond_d6
    new-instance v0, Lcom/android/server/content/SyncOperation;

    iget v1, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    iget-object v3, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 3491
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x4

    const/4 v5, 0x4

    iget-object v10, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v10, Landroid/content/SyncAdapterType;

    .line 3493
    invoke-virtual {v10}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v17

    const/16 v18, 0x1

    const/16 v19, -0x1

    const/16 v24, 0x0

    move-object v10, v0

    move-object v11, v8

    move v12, v1

    move-object v13, v3

    move v14, v4

    move v15, v5

    move-object/from16 v16, p6

    move-wide/from16 v20, v26

    move-wide/from16 v22, v28

    invoke-direct/range {v10 .. v24}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 3496
    .restart local v10    # "op":Lcom/android/server/content/SyncOperation;
    invoke-direct {v9, v10}, Lcom/android/server/content/SyncManager$SyncHandler;->computeSyncOpState(Lcom/android/server/content/SyncOperation;)I

    move-result v11

    .line 3497
    .local v11, "syncOpState":I
    packed-switch v11, :pswitch_data_16a

    .line 3530
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    move/from16 v30, v11

    .end local v6    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v7    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .end local v11    # "syncOpState":I
    .local v16, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .local v17, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v30, "syncOpState":I
    iget-object v0, v9, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    invoke-static {v0, v10}, Lcom/android/server/content/SyncManager;->access$3900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3531
    iget-object v0, v9, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 3532
    return-void

    .line 3499
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .end local v17    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v30    # "syncOpState":I
    .restart local v6    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v7    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .restart local v11    # "syncOpState":I
    :pswitch_11b
    iget-object v12, v10, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 3500
    .local v12, "packageName":Ljava/lang/String;
    iget v0, v10, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v13, v0

    .line 3507
    .local v13, "userId":I
    :try_start_124
    iget-object v0, v9, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$4000(Lcom/android/server/content/SyncManager;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v0
    :try_end_12e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_124 .. :try_end_12e} :catch_15a

    if-nez v0, :cond_131

    .line 3508
    return-void

    .line 3513
    :cond_131
    nop

    .line 3515
    iget-object v0, v9, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$4100(Lcom/android/server/content/SyncManager;)Landroid/accounts/AccountManagerInternal;

    move-result-object v0

    iget-object v1, v10, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v14, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    new-instance v15, Landroid/os/RemoteCallback;

    new-instance v4, Lcom/android/server/content/-$$Lambda$SyncManager$SyncHandler$7-vThHsPImW4qB6AnVEnnD3dGhM;

    move-object v1, v4

    move-object v2, v9

    move-object v3, v8

    move/from16 v30, v11

    move-object v11, v4

    move-wide/from16 v4, p2

    .end local v11    # "syncOpState":I
    .restart local v30    # "syncOpState":I
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    move-wide/from16 v6, p4

    .end local v6    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v7    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .restart local v17    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/content/-$$Lambda$SyncManager$SyncHandler$7-vThHsPImW4qB6AnVEnnD3dGhM;-><init>(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    invoke-direct {v15, v11}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v0, v14, v12, v13, v15}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 3523
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "userId":I
    return-void

    .line 3510
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .end local v17    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v30    # "syncOpState":I
    .restart local v6    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v7    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .restart local v11    # "syncOpState":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "userId":I
    :catch_15a
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v16, v7

    move/from16 v30, v11

    .line 3512
    .end local v6    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v7    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .end local v11    # "syncOpState":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .restart local v17    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v30    # "syncOpState":I
    return-void

    .line 3526
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "userId":I
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .end local v17    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v30    # "syncOpState":I
    .restart local v6    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v7    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .restart local v11    # "syncOpState":I
    :pswitch_162
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    move/from16 v30, v11

    .end local v6    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v7    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .end local v11    # "syncOpState":I
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .restart local v17    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v30    # "syncOpState":I
    return-void

    nop

    :pswitch_data_16a
    .packed-switch 0x1
        :pswitch_162
        :pswitch_11b
    .end packed-switch
.end method

.method private updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 23
    .param p1, "syncTargets"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v0, p0

    .line 3376
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v2

    .line 3377
    .local v2, "oldAccounts":[Landroid/accounts/AccountAndUser;
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService;->getRunningAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v4

    # setter for: Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;
    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->access$3602(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)[Landroid/accounts/AccountAndUser;

    .line 3378
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_40

    .line 3379
    const-string v3, "SyncManager"

    const-string v6, "Accounts list: "

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v3

    array-length v6, v3

    move v7, v5

    :goto_30
    if-ge v7, v6, :cond_40

    aget-object v8, v3, v7

    .line 3381
    .local v8, "acc":Landroid/accounts/AccountAndUser;
    const-string v9, "SyncManager"

    invoke-virtual {v8}, Landroid/accounts/AccountAndUser;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    .end local v8    # "acc":Landroid/accounts/AccountAndUser;
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 3384
    :cond_40
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_69

    .line 3385
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    const-string/jumbo v8, "updateRunningAccountsH: "

    aput-object v8, v7, v5

    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;
    invoke-static {v8}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v3, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3387
    :cond_69
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 3388
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->doDatabaseCleanup()V
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3700(Lcom/android/server/content/SyncManager;)V

    .line 3391
    :cond_76
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v3

    .line 3392
    .local v3, "accounts":[Landroid/accounts/AccountAndUser;
    iget-object v7, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v7, v7, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_84
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3393
    .local v8, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v10, v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v10, v10, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v11, v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v11, v11, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    # invokes: Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    invoke-static {v9, v3, v10, v11}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v9

    if-nez v9, :cond_b1

    .line 3396
    const-string v9, "SyncManager"

    const-string v10, "canceling sync since the account is no longer running"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v10, 0x0

    # invokes: Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    invoke-static {v9, v8, v10}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 3400
    .end local v8    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_b1
    goto :goto_84

    .line 3403
    :cond_b2
    iget-object v7, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;
    invoke-static {v7}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v7

    array-length v8, v7

    move v9, v5

    :goto_ba
    if-ge v9, v8, :cond_fd

    aget-object v10, v7, v9

    .line 3404
    .local v10, "aau":Landroid/accounts/AccountAndUser;
    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v12, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v13, v10, Landroid/accounts/AccountAndUser;->userId:I

    # invokes: Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    invoke-static {v11, v2, v12, v13}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v11

    if-nez v11, :cond_fa

    .line 3405
    const-string v7, "SyncManager"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_f0

    .line 3406
    const-string v7, "SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Account "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " added, checking sync restore data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    :cond_f0
    iget-object v7, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAdded(Landroid/content/Context;)V

    .line 3409
    goto :goto_fd

    .line 3403
    .end local v10    # "aau":Landroid/accounts/AccountAndUser;
    :cond_fa
    add-int/lit8 v9, v9, 0x1

    goto :goto_ba

    .line 3414
    :cond_fd
    :goto_fd
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v7

    .line 3415
    .local v7, "allAccounts":[Landroid/accounts/AccountAndUser;
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v8}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v8

    .line 3416
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_10f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_145

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncOperation;

    .line 3417
    .local v10, "op":Lcom/android/server/content/SyncOperation;
    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v12, v10, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v13, v10, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v13, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    # invokes: Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    invoke-static {v11, v7, v12, v13}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v11

    if-nez v11, :cond_144

    .line 3418
    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v11}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    const-string v13, "canceling: "

    aput-object v13, v12, v5

    aput-object v10, v12, v6

    invoke-virtual {v11, v12}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3419
    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v12, "updateRunningAccountsH()"

    # invokes: Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    invoke-static {v11, v10, v12}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3421
    .end local v10    # "op":Lcom/android/server/content/SyncOperation;
    :cond_144
    goto :goto_10f

    .line 3423
    :cond_145
    if-eqz v1, :cond_15c

    .line 3424
    iget-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v14, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v15, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const/16 v16, -0x2

    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v17, v4

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;II)V

    .line 3429
    :cond_15c
    return-void
.end method


# virtual methods
.method checkIfDeviceReady()V
    .registers 2

    .line 2961
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mProvisioned:Z
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1600(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mJobServiceReady:Z
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2962
    monitor-enter p0

    .line 2966
    :try_start_19
    new-instance v0, Lcom/android/server/content/SyncManager$SyncHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$SyncHandler$1;-><init>(Lcom/android/server/content/SyncManager$SyncHandler;)V

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 2992
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->restoreAllPeriodicSyncs()Z

    .line 2994
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2995
    monitor-exit p0

    goto :goto_37

    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_34

    throw v0

    .line 2997
    :cond_37
    :goto_37
    return-void
.end method

.method deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 3
    .param p1, "asc"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3270
    const-string v0, "injector defer"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Ljava/lang/String;)V

    .line 3271
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 3027
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3030
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_28

    .line 3031
    const-string v0, "SyncManager"

    const-string v1, "Got SyncJobService instance."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncJobService;

    # setter for: Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$2802(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncJobService;)Lcom/android/server/content/SyncJobService;

    .line 3033
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/content/SyncManager;->mJobServiceReady:Z
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$2602(Lcom/android/server/content/SyncManager;Z)Z

    .line 3034
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->checkIfDeviceReady()V

    goto :goto_72

    .line 3035
    :cond_28
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    const/4 v2, 0x2

    if-ne v0, v1, :cond_46

    .line 3036
    const-string v0, "SyncManager"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3037
    const-string v0, "SyncManager"

    const-string v1, "handleSyncHandlerMessage: MESSAGE_ACCOUNTS_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    :cond_3e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3040
    .local v0, "targets":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3041
    .end local v0    # "targets":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    goto :goto_72

    :cond_46
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_68

    .line 3042
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    if-eqz v0, :cond_72

    .line 3043
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 3044
    .local v1, "m":Landroid/os/Message;
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->handleSyncMessage(Landroid/os/Message;)V

    .line 3045
    .end local v1    # "m":Landroid/os/Message;
    goto :goto_54

    .line 3046
    :cond_64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    goto :goto_72

    .line 3048
    :cond_68
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->tryEnqueueMessageUntilReadyToRun(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_6f

    goto :goto_72

    .line 3051
    :cond_6f
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->handleSyncMessage(Landroid/os/Message;)V
    :try_end_72
    .catchall {:try_start_0 .. :try_end_72} :catchall_7d

    .line 3054
    :cond_72
    :goto_72
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3055
    nop

    .line 3056
    return-void

    .line 3054
    :catchall_7d
    move-exception v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J
    .registers 6
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .line 4023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4024
    .local v0, "now":J
    nop

    .line 4025
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    move-result-object v2

    .line 4024
    const/16 v3, 0xaa0

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4026
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J

    move-result-wide v2

    return-wide v2
.end method

.method onBootCompleted()V
    .registers 3

    .line 2947
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2948
    const-string v0, "SyncManager"

    const-string v1, "Boot completed."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->checkIfDeviceReady()V

    .line 2951
    return-void
.end method

.method onDeviceProvisioned()V
    .registers 4

    .line 2954
    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2955
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mProvisioned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mProvisioned:Z
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1600(Lcom/android/server/content/SyncManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->checkIfDeviceReady()V

    .line 2958
    return-void
.end method

.method public stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJLandroid/content/SyncResult;)V
    .registers 26
    .param p1, "rowId"    # J
    .param p3, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p4, "resultMessage"    # Ljava/lang/String;
    .param p5, "upstreamActivity"    # I
    .param p6, "downstreamActivity"    # I
    .param p7, "elapsedTime"    # J
    .param p9, "syncResult"    # Landroid/content/SyncResult;

    .line 4034
    nop

    .line 4035
    const/4 v0, 0x1

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    move-result-object v0

    .line 4034
    const/16 v2, 0xaa0

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4037
    invoke-static/range {p3 .. p4}, Lcom/android/server/content/MiSyncPolicyManager;->maybeConvertToMiCanceledMsg(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4042
    .end local p4    # "resultMessage":Ljava/lang/String;
    .local v0, "resultMessage":Ljava/lang/String;
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    move/from16 v14, p6

    int-to-long v9, v14

    move/from16 v15, p5

    int-to-long v11, v15

    move-wide/from16 v4, p1

    move-wide/from16 v6, p7

    move-object v8, v0

    move-object/from16 v13, p9

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/content/SyncStorageEngine;->stopSyncEvent(JJLjava/lang/String;JJLandroid/content/SyncResult;)V

    .line 4044
    return-void
.end method
