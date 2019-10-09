.class final Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;
.super Ljava/lang/Thread;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WakeupReasonThread"
.end annotation


# static fields
.field private static final MAX_REASON_SIZE:I = 0x200


# instance fields
.field private mDecoder:Ljava/nio/charset/CharsetDecoder;

.field private mUtf16Buffer:Ljava/nio/CharBuffer;

.field private mUtf8Buffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/BatteryStatsService;

    .line 1184
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 1185
    const-string v0, "BatteryStats_wakeupReason"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1186
    return-void
.end method

.method private waitWakeup()Ljava/lang/String;
    .registers 6

    .line 1213
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1214
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1215
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mDecoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 1217
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    # invokes: Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->access$100(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1218
    .local v0, "bytesWritten":I
    if-gez v0, :cond_19

    .line 1219
    const/4 v1, 0x0

    return-object v1

    .line 1220
    :cond_19
    if-nez v0, :cond_1f

    .line 1221
    const-string/jumbo v1, "unknown"

    return-object v1

    .line 1225
    :cond_1f
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1229
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mDecoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 1230
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1233
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1189
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1191
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1192
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 1193
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 1194
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const-string v1, "?"

    .line 1195
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mDecoder:Ljava/nio/charset/CharsetDecoder;

    .line 1197
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    .line 1198
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    .line 1202
    :goto_2c
    :try_start_2c
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->waitWakeup()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "reason":Ljava/lang/String;
    if-eqz v0, :cond_44

    .line 1203
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_38} :catch_45

    .line 1204
    :try_start_38
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v2, v2, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeupReasonLocked(Ljava/lang/String;)V

    .line 1205
    monitor-exit v0

    goto :goto_2c

    :catchall_41
    move-exception v2

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_41

    :try_start_43
    throw v2
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_44} :catch_45

    .line 1209
    .end local v1    # "reason":Ljava/lang/String;
    :cond_44
    goto :goto_4d

    .line 1207
    :catch_45
    move-exception v0

    .line 1208
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "BatteryStatsService"

    const-string v2, "Failure reading wakeup reasons"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1210
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_4d
    return-void
.end method
