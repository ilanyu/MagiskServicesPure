.class Lcom/android/server/am/MiuiBroadcastQueue;
.super Lcom/android/server/am/BroadcastQueue;
.source "MiuiBroadcastQueue.java"


# static fields
.field public static final DELADY_QUEUE_NAME:Ljava/lang/String; = "longtime"

.field public static final DELAY_TIME:J

.field private static final MAX_COUNT_ONCE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MiuiBroadcastQueue"


# instance fields
.field private fEnqueueClockTime:Ljava/lang/reflect/Field;

.field private mLastProcessBroadcastTime:J

.field private mSlowQueue:Z

.field private mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 17
    const-string/jumbo v0, "persist.sys.m_b_delay"

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/MiuiBroadcastQueue;->DELAY_TIME:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZLcom/android/server/am/BaseMiuiBroadcastManager;)V
    .registers 11
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "timeoutPeriod"    # J
    .param p6, "allowDelayBehindServices"    # Z
    .param p7, "bm"    # Lcom/android/server/am/BaseMiuiBroadcastManager;

    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZ)V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mLastProcessBroadcastTime:J

    .line 29
    iput-object p7, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    .line 30
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mQueueName:Ljava/lang/String;

    const-string/jumbo v1, "longtime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mSlowQueue:Z

    .line 31
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_2e

    const-string v0, "MiuiBroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init queue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_2e
    :try_start_2e
    const-class v0, Lcom/android/server/am/BroadcastRecord;

    const-string v1, "enqueueClockTime"

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->fEnqueueClockTime:Ljava/lang/reflect/Field;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_39

    .line 37
    goto :goto_3d

    .line 35
    :catch_39
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3d
    return-void
.end method

.method private isDelay()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mSlowQueue:Z

    return v0
.end method

.method private setEnqueueClockTime(Lcom/android/server/am/BroadcastRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->fEnqueueClockTime:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_d

    .line 132
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->fEnqueueClockTime:Ljava/lang/reflect/Field;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 136
    :cond_d
    goto :goto_12

    .line 134
    :catch_e
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method


# virtual methods
.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 88
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mSlowQueue:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_3e

    .line 90
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/BaseMiuiBroadcastManager;->updateLongTimeBroadcastRecord(Lcom/android/server/am/BroadcastRecord;Z)Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "receivers":Ljava/util/List;
    if-eqz v0, :cond_3d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 92
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, p0, v2, v0, p1}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 93
    .local v1, "newR":Lcom/android/server/am/BroadcastRecord;
    const-string v2, "MiuiBroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enqueueing order broadcast on slow queue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-direct {p0, v1}, Lcom/android/server/am/MiuiBroadcastQueue;->setEnqueueClockTime(Lcom/android/server/am/BroadcastRecord;)V

    .line 97
    .end local v0    # "receivers":Ljava/util/List;
    .end local v1    # "newR":Lcom/android/server/am/BroadcastRecord;
    :cond_3d
    goto :goto_41

    .line 98
    :cond_3e
    invoke-super {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 100
    :goto_41
    return-void
.end method

.method public enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 55
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mSlowQueue:Z

    if-eqz v0, :cond_91

    .line 56
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/BaseMiuiBroadcastManager;->updateLongTimeBroadcastRecord(Lcom/android/server/am/BroadcastRecord;Z)Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, "receiveList":Ljava/util/List;
    if-eqz v0, :cond_62

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_62

    .line 61
    nop

    .local v1, "i":I
    :goto_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v2, v3

    if-ge v1, v2, :cond_90

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_30

    .line 65
    mul-int/lit8 v2, v1, 0x5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .local v2, "newList":Ljava/util/List;
    goto :goto_39

    .line 67
    .end local v2    # "newList":Ljava/util/List;
    :cond_30
    mul-int/lit8 v2, v1, 0x5

    mul-int/lit8 v4, v1, 0x5

    add-int/2addr v4, v3

    invoke-interface {v0, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 69
    .restart local v2    # "newList":Ljava/util/List;
    :goto_39
    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p0, v5, v2, p1}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v4

    .line 70
    .local v4, "newR":Lcom/android/server/am/BroadcastRecord;
    const-string v5, "MiuiBroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enqueueing parallel broadcast on slow queue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v5, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-direct {p0, v4}, Lcom/android/server/am/MiuiBroadcastQueue;->setEnqueueClockTime(Lcom/android/server/am/BroadcastRecord;)V

    .line 61
    .end local v2    # "newList":Ljava/util/List;
    .end local v4    # "newR":Lcom/android/server/am/BroadcastRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 74
    .end local v1    # "i":I
    :cond_62
    if-eqz v0, :cond_90

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_90

    .line 75
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, p0, v2, v0, p1}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 76
    .local v1, "newR":Lcom/android/server/am/BroadcastRecord;
    const-string v2, "MiuiBroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enqueueing parallel broadcast on slow queue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-direct {p0, v1}, Lcom/android/server/am/MiuiBroadcastQueue;->setEnqueueClockTime(Lcom/android/server/am/BroadcastRecord;)V

    .line 81
    .end local v0    # "receiveList":Ljava/util/List;
    .end local v1    # "newR":Lcom/android/server/am/BroadcastRecord;
    :cond_90
    goto :goto_94

    .line 82
    :cond_91
    invoke-super {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 84
    :goto_94
    return-void
.end method

.method processNextBroadcast(Z)V
    .registers 8
    .param p1, "fromMsg"    # Z

    .line 104
    invoke-direct {p0}, Lcom/android/server/am/MiuiBroadcastQueue;->isDelay()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 106
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mLastProcessBroadcastTime:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/server/am/MiuiBroadcastQueue;->DELAY_TIME:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1e

    if-nez p1, :cond_17

    goto :goto_1e

    .line 116
    :cond_17
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mBroadcastsScheduled:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/server/am/MiuiBroadcastQueue;->scheduleBroadcastsLocked()V

    .line 117
    .end local v0    # "now":J
    goto :goto_55

    .line 107
    .restart local v0    # "now":J
    :cond_1e
    :goto_1e
    sget-boolean v2, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_2a

    .line 108
    const-string v2, "MiuiBroadcastQueue"

    const-string/jumbo v3, "process delay broadcast"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2a
    iput-wide v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mLastProcessBroadcastTime:J

    .line 112
    const/4 v2, 0x1

    invoke-super {p0, p1, v2}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(ZZ)V

    .line 113
    sget-boolean v2, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_55

    .line 114
    const-string v2, "MiuiBroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "process delay broadcast cost "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "now":J
    :cond_55
    :goto_55
    goto :goto_59

    .line 120
    :cond_56
    invoke-super {p0, p1}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    .line 122
    :goto_59
    return-void
.end method

.method public scheduleBroadcastsLocked()V
    .registers 5

    .line 43
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mBroadcastsScheduled:Z

    if-eqz v0, :cond_5

    .line 44
    return-void

    .line 46
    :cond_5
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_2b

    const-string v0, "MiuiBroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schedule broadcasts ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mBroadcastsScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/MiuiBroadcastQueue;->isDelay()Z

    move-result v2

    if-eqz v2, :cond_3e

    sget-wide v2, Lcom/android/server/am/MiuiBroadcastQueue;->DELAY_TIME:J

    goto :goto_40

    :cond_3e
    const-wide/16 v2, 0x0

    :goto_40
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mBroadcastsScheduled:Z

    .line 51
    return-void
.end method
