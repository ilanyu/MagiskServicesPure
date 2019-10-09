.class final Lcom/android/server/devicepolicy/NetworkLoggingHandler;
.super Landroid/os/Handler;
.source "NetworkLoggingHandler.java"


# static fields
.field private static final BATCH_FINALIZATION_TIMEOUT_ALARM_INTERVAL_MS:J = 0x1b7740L

.field private static final BATCH_FINALIZATION_TIMEOUT_MS:J = 0x5265c0L

.field static final LOG_NETWORK_EVENT_MSG:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_BATCHES:I = 0x5

.field private static final MAX_EVENTS_PER_BATCH:I = 0x4b0

.field static final NETWORK_EVENT_KEY:Ljava/lang/String; = "network_event"

.field private static final NETWORK_LOGGING_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "NetworkLogging.batchTimeout"

.field private static final RETRIEVED_BATCH_DISCARD_DELAY_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mBatches:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/NetworkEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentBatchToken:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field private mId:J

.field private mLastRetrievedBatchToken:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mNetworkEvents:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "dpm"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 110
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;-><init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V

    .line 111
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V
    .registers 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "dpm"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p3, "id"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    new-instance v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;-><init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    .line 116
    iput-object p2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 117
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mAlarmManager:Landroid/app/AlarmManager;

    .line 118
    iput-wide p3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    .line 119
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 40
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 40
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildDeviceOwnerMessageLocked()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/devicepolicy/NetworkLoggingHandler;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/NetworkLoggingHandler;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwner(Landroid/os/Bundle;)V

    return-void
.end method

.method private buildDeviceOwnerMessageLocked()Landroid/os/Bundle;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 235
    .local v1, "lastBatchSize":I
    const-string v2, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    iget-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 236
    const-string v2, "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    return-object v0
.end method

.method private finalizeBatchAndBuildDeviceOwnerMessageLocked()Landroid/os/Bundle;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "notificationExtras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7d

    .line 198
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/NetworkEvent;

    .line 199
    .local v2, "event":Landroid/app/admin/NetworkEvent;
    iget-wide v5, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    invoke-virtual {v2, v5, v6}, Landroid/app/admin/NetworkEvent;->setId(J)V

    .line 200
    iget-wide v5, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v5, v5, v7

    if-nez v5, :cond_4a

    .line 201
    sget-object v3, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reached maximum id value; wrapping around ."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    goto :goto_4f

    .line 204
    :cond_4a
    iget-wide v5, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    .line 206
    .end local v2    # "event":Landroid/app/admin/NetworkEvent;
    :goto_4f
    goto :goto_f

    .line 208
    :cond_50
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_5f

    .line 210
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 212
    :cond_5f
    iget-wide v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    .line 213
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    iget-object v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 215
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    if-nez v1, :cond_95

    .line 216
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->buildDeviceOwnerMessageLocked()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_95

    .line 221
    :cond_7d
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Was about to finalize the batch, but there were no events to send to the DPC, the batchToken of last available batch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_95
    :goto_95
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    .line 226
    return-object v0
.end method

.method public static synthetic lambda$retrieveFullLogBatch$0(Lcom/android/server/devicepolicy/NetworkLoggingHandler;J)V
    .registers 7
    .param p1, "batchToken"    # J

    .line 264
    monitor-enter p0

    .line 265
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gtz v0, :cond_1a

    .line 266
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_1

    .line 268
    :cond_1a
    monitor-exit p0

    .line 269
    return-void

    .line 268
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private notifyDeviceOwner(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 243
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending network logging batch broadcast to device owner, batchToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    .line 244
    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 246
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Shouldn\'t be called with NetworkLoggingHandler lock held"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 249
    :cond_2c
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v1, "android.app.action.NETWORK_LOGS_AVAILABLE"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 250
    return-void
.end method


# virtual methods
.method declared-synchronized discardLogs()V
    .registers 3

    monitor-enter p0

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 189
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Discarded all network logs"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 190
    monitor-exit p0

    return-void

    .line 186
    :catchall_16
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/devicepolicy/NetworkLoggingHandler;
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 141
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "NetworkLoggingHandler received an unknown of message."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 125
    :cond_d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "network_event"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/admin/NetworkEvent;

    .line 126
    .local v0, "networkEvent":Landroid/app/admin/NetworkEvent;
    if-eqz v0, :cond_3c

    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, "notificationExtras":Landroid/os/Bundle;
    monitor-enter p0

    .line 129
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x4b0

    if-lt v2, v3, :cond_32

    .line 131
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildDeviceOwnerMessageLocked()Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    .line 133
    :cond_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_39

    .line 134
    if-eqz v1, :cond_38

    .line 135
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwner(Landroid/os/Bundle;)V

    .line 137
    .end local v1    # "notificationExtras":Landroid/os/Bundle;
    :cond_38
    goto :goto_3c

    .line 133
    .restart local v1    # "notificationExtras":Landroid/os/Bundle;
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2

    .line 145
    .end local v0    # "networkEvent":Landroid/app/admin/NetworkEvent;
    .end local v1    # "notificationExtras":Landroid/os/Bundle;
    :cond_3c
    :goto_3c
    return-void
.end method

.method declared-synchronized pause()V
    .registers 3

    monitor-enter p0

    .line 159
    :try_start_1
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Paused network logging"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 161
    monitor-exit p0

    return-void

    .line 158
    :catchall_d
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/devicepolicy/NetworkLoggingHandler;
    throw v0
.end method

.method resume()V
    .registers 6

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "notificationExtras":Landroid/os/Bundle;
    monitor-enter p0

    .line 166
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    if-nez v1, :cond_f

    .line 167
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to resume network logging, but logging is not paused."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    monitor-exit p0

    return-void

    .line 171
    :cond_f
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resumed network logging. Current batch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", LastRetrievedBatch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    .line 176
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_4c

    iget-wide v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    iget-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4c

    .line 177
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    .line 178
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->buildDeviceOwnerMessageLocked()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    .line 180
    :cond_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_2 .. :try_end_4d} :catchall_53

    .line 181
    if-eqz v0, :cond_52

    .line 182
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwner(Landroid/os/Bundle;)V

    .line 184
    :cond_52
    return-void

    .line 180
    :catchall_53
    move-exception v1

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v1
.end method

.method declared-synchronized retrieveFullLogBatch(J)Ljava/util/List;
    .registers 7
    .param p1, "batchToken"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 253
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_23

    .line 254
    .local v0, "index":I
    if-gez v0, :cond_c

    .line 256
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 263
    :cond_c
    :try_start_c
    new-instance v1, Lcom/android/server/devicepolicy/-$$Lambda$NetworkLoggingHandler$VKC_fB9Ws13yQKJ8zNkiF3Wp0Jk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/devicepolicy/-$$Lambda$NetworkLoggingHandler$VKC_fB9Ws13yQKJ8zNkiF3Wp0Jk;-><init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;J)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    iput-wide p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    .line 272
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object v1

    .line 252
    .end local v0    # "index":I
    .end local p1    # "batchToken":J
    :catchall_23
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/devicepolicy/NetworkLoggingHandler;
    throw p1
.end method

.method scheduleBatchFinalization()V
    .registers 14

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c0

    add-long/2addr v0, v2

    .line 151
    .local v0, "when":J
    iget-object v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v10, "NetworkLogging.batchTimeout"

    iget-object v11, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v5, 0x2

    const-wide/32 v8, 0x1b7740

    move-wide v6, v0

    move-object v12, p0

    invoke-virtual/range {v4 .. v12}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 154
    sget-object v2, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v3, "Scheduled a new batch finalization alarm 5400000ms from now."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method
