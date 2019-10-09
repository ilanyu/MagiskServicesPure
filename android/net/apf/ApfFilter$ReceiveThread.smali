.class Landroid/net/apf/ApfFilter$ReceiveThread;
.super Ljava/lang/Thread;
.source "ApfFilter.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# instance fields
.field private final mPacket:[B

.field private final mSocket:Ljava/io/FileDescriptor;

.field private final mStart:J

.field private final mStats:Landroid/net/metrics/ApfStats;

.field private volatile mStopped:Z

.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method public constructor <init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "this$0"    # Landroid/net/apf/ApfFilter;
    .param p2, "socket"    # Ljava/io/FileDescriptor;

    .line 182
    iput-object p1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 175
    const/16 v0, 0x5ea

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStart:J

    .line 178
    new-instance v0, Landroid/net/metrics/ApfStats;

    invoke-direct {v0}, Landroid/net/metrics/ApfStats;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    .line 183
    iput-object p2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    .line 184
    return-void
.end method

.method private logStats()V
    .registers 6

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 237
    .local v0, "nowMs":J
    monitor-enter p0

    .line 238
    :try_start_5
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget-wide v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStart:J

    sub-long v3, v0, v3

    iput-wide v3, v2, Landroid/net/metrics/ApfStats;->durationMs:J

    .line 239
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    # getter for: Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;
    invoke-static {v3}, Landroid/net/apf/ApfFilter;->access$100(Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfCapabilities;

    move-result-object v3

    iget v3, v3, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    iput v3, v2, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    .line 240
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    # getter for: Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I
    invoke-static {v3}, Landroid/net/apf/ApfFilter;->access$200(Landroid/net/apf/ApfFilter;)I

    move-result v3

    iput v3, v2, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    .line 241
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    # getter for: Landroid/net/apf/ApfFilter;->mNumProgramUpdatesAllowingMulticast:I
    invoke-static {v3}, Landroid/net/apf/ApfFilter;->access$300(Landroid/net/apf/ApfFilter;)I

    move-result v3

    iput v3, v2, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    .line 242
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    # getter for: Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;
    invoke-static {v2}, Landroid/net/apf/ApfFilter;->access$400(Landroid/net/apf/ApfFilter;)Landroid/net/metrics/IpConnectivityLog;

    move-result-object v2

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    invoke-virtual {v2, v3}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)Z

    .line 243
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    # invokes: Landroid/net/apf/ApfFilter;->logApfProgramEventLocked(J)V
    invoke-static {v2, v3, v4}, Landroid/net/apf/ApfFilter;->access$500(Landroid/net/apf/ApfFilter;J)V

    .line 244
    monitor-exit p0

    .line 245
    return-void

    .line 244
    :catchall_43
    move-exception v2

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_43

    throw v2
.end method

.method private updateStats(Landroid/net/apf/ApfFilter$ProcessRaResult;)V
    .registers 4
    .param p1, "result"    # Landroid/net/apf/ApfFilter$ProcessRaResult;

    .line 211
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->receivedRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->receivedRas:I

    .line 212
    sget-object v0, Landroid/net/apf/ApfFilter$2;->$SwitchMap$android$net$apf$ApfFilter$ProcessRaResult:[I

    invoke-virtual {p1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 233
    return-void

    .line 230
    :pswitch_14
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->programUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->programUpdates:I

    .line 231
    return-void

    .line 226
    :pswitch_1d
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->matchingRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->matchingRas:I

    .line 227
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->programUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->programUpdates:I

    .line 228
    return-void

    .line 223
    :pswitch_2e
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    .line 224
    return-void

    .line 220
    :pswitch_37
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->parseErrors:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->parseErrors:I

    .line 221
    return-void

    .line 217
    :pswitch_40
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->droppedRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->droppedRas:I

    .line 218
    return-void

    .line 214
    :pswitch_49
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->matchingRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->matchingRas:I

    .line 215
    return-void

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_49
        :pswitch_40
        :pswitch_37
        :pswitch_2e
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public halt()V
    .registers 2

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    .line 190
    :try_start_3
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9

    .line 191
    goto :goto_a

    :catch_9
    move-exception v0

    .line 192
    :goto_a
    return-void
.end method

.method public run()V
    .registers 5

    .line 196
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    const-string v1, "begin monitoring"

    # invokes: Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/apf/ApfFilter;->access$000(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V

    .line 197
    :goto_7
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    if-nez v0, :cond_30

    .line 199
    :try_start_b
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 200
    .local v0, "length":I
    iget-object v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    invoke-virtual {v1, v2, v0}, Landroid/net/apf/ApfFilter;->processRa([BI)Landroid/net/apf/ApfFilter$ProcessRaResult;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter$ReceiveThread;->updateStats(Landroid/net/apf/ApfFilter$ProcessRaResult;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_22} :catch_23
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_22} :catch_23

    .end local v0    # "length":I
    goto :goto_2f

    .line 201
    :catch_23
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    if-nez v1, :cond_2f

    .line 203
    const-string v1, "ApfFilter"

    const-string v2, "Read error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    :goto_2f
    goto :goto_7

    .line 207
    :cond_30
    invoke-direct {p0}, Landroid/net/apf/ApfFilter$ReceiveThread;->logStats()V

    .line 208
    return-void
.end method
