.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private mForceStop:Z

.field private final mUid:I

.field private final mUsageHint:I

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V
    .registers 6
    .param p2, "waveform"    # Landroid/os/VibrationEffect$Waveform;
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I

    .line 1094
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1095
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    .line 1096
    iput p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    .line 1097
    iput p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    .line 1098
    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$500(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/WorkSource;->set(I)V

    .line 1099
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$500(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1100
    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;ILjava/lang/String;I)V
    .registers 7
    .param p2, "waveform"    # Landroid/os/VibrationEffect$Waveform;
    .param p3, "uid"    # I
    .param p4, "opPkg"    # Ljava/lang/String;
    .param p5, "usageHint"    # I

    .line 1106
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1107
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    .line 1108
    iput p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    .line 1109
    iput p5, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    .line 1110
    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$500(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/os/WorkSource;->set(ILjava/lang/String;)V

    .line 1111
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$500(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1112
    return-void
.end method

.method private delayLocked(J)J
    .registers 14
    .param p1, "duration"    # J

    .line 1115
    const-string v0, "delayLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1117
    move-wide v3, p1

    .line 1118
    .local v3, "durationRemaining":J
    const-wide/16 v5, 0x0

    cmp-long v0, p1, v5

    if-lez v0, :cond_33

    .line 1119
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_2e

    add-long/2addr v7, p1

    .line 1122
    .local v7, "bedtime":J
    :cond_14
    :try_start_14
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18
    .catchall {:try_start_14 .. :try_end_17} :catchall_2e

    .line 1124
    goto :goto_19

    :catch_18
    move-exception v0

    .line 1125
    :goto_19
    :try_start_19
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v0, :cond_1e

    .line 1126
    goto :goto_28

    .line 1128
    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_2e

    sub-long v3, v7, v9

    .line 1129
    cmp-long v0, v3, v5

    if-gtz v0, :cond_14

    .line 1130
    :goto_28
    sub-long v5, p1, v3

    .line 1134
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1130
    return-wide v5

    .line 1134
    .end local v3    # "durationRemaining":J
    .end local v7    # "bedtime":J
    :catchall_2e
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1132
    .restart local v3    # "durationRemaining":J
    :cond_33
    nop

    .line 1134
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1132
    return-wide v5
.end method

.method private getTotalOnDuration([J[III)J
    .registers 12
    .param p1, "timings"    # [J
    .param p2, "amplitudes"    # [I
    .param p3, "startIndex"    # I
    .param p4, "repeatIndex"    # I

    .line 1220
    move v0, p3

    .line 1221
    .local v0, "i":I
    const-wide/16 v1, 0x0

    .line 1223
    .local v1, "timing":J
    const/4 v3, 0x1

    .line 1224
    .local v3, "addRepeat":Z
    :cond_4
    aget v4, p2, v0

    if-eqz v4, :cond_1f

    .line 1225
    add-int/lit8 v4, v0, 0x1

    .local v4, "i":I
    aget-wide v5, p1, v0

    .end local v0    # "i":I
    add-long/2addr v1, v5

    .line 1226
    array-length v0, p1

    if-lt v4, v0, :cond_19

    .line 1229
    if-ltz p4, :cond_17

    if-eqz v3, :cond_17

    .line 1230
    move v0, p4

    .line 1231
    .end local v4    # "i":I
    .restart local v0    # "i":I
    const/4 v3, 0x0

    goto :goto_1a

    .line 1241
    .end local v0    # "i":I
    .restart local v4    # "i":I
    :cond_17
    move v0, v4

    goto :goto_1f

    .line 1237
    :cond_19
    move v0, v4

    .end local v4    # "i":I
    .restart local v0    # "i":I
    :goto_1a
    if-ne v0, p3, :cond_4

    .line 1238
    const-wide/16 v4, 0x3e8

    return-wide v4

    .line 1241
    :cond_1f
    :goto_1f
    return-wide v1
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 1208
    monitor-enter p0

    .line 1209
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$900(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    .line 1210
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$900(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1211
    monitor-exit p0

    .line 1212
    return-void

    .line 1211
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public playWaveform()Z
    .registers 22

    .line 1157
    move-object/from16 v1, p0

    const-string/jumbo v0, "playWaveform"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1159
    :try_start_b
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_7c

    .line 1160
    :try_start_c
    iget-object v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v0

    .line 1161
    .local v0, "timings":[J
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v4

    .line 1162
    .local v4, "amplitudes":[I
    array-length v5, v0

    .line 1163
    .local v5, "len":I
    iget-object v6, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v6}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v6

    .line 1165
    .local v6, "repeat":I
    const/4 v7, 0x0

    .line 1166
    .local v7, "index":I
    const-wide/16 v8, 0x0

    move-wide v10, v8

    .line 1167
    .local v10, "onDuration":J
    :goto_23
    iget-boolean v12, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v12, :cond_70

    .line 1168
    if-ge v7, v5, :cond_69

    .line 1169
    aget v12, v4, v7

    .line 1170
    .local v12, "amplitude":I
    add-int/lit8 v19, v7, 0x1

    .line 1170
    .local v19, "index":I
    aget-wide v13, v0, v7

    .line 1171
    .end local v7    # "index":I
    .local v13, "duration":J
    cmp-long v7, v13, v8

    if-gtz v7, :cond_37

    .line 1172
    nop

    .line 1166
    move/from16 v7, v19

    goto :goto_23

    .line 1174
    :cond_37
    if-eqz v12, :cond_5c

    .line 1175
    cmp-long v7, v10, v8

    if-gtz v7, :cond_55

    .line 1182
    add-int/lit8 v7, v19, -0x1

    invoke-direct {v1, v0, v4, v7, v6}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v15

    move-wide v8, v13

    move-wide v14, v15

    .line 1184
    .end local v10    # "onDuration":J
    .end local v13    # "duration":J
    .local v8, "duration":J
    .local v14, "onDuration":J
    iget-object v13, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iget v10, v1, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    move/from16 v16, v12

    move/from16 v17, v7

    move/from16 v18, v10

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JIII)V
    invoke-static/range {v13 .. v18}, Lcom/android/server/VibratorService;->access$700(Lcom/android/server/VibratorService;JIII)V

    goto :goto_5e

    .line 1186
    .end local v8    # "duration":J
    .end local v14    # "onDuration":J
    .restart local v10    # "onDuration":J
    .restart local v13    # "duration":J
    :cond_55
    move-wide v8, v13

    .line 1186
    .end local v13    # "duration":J
    .restart local v8    # "duration":J
    iget-object v7, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V
    invoke-static {v7, v12}, Lcom/android/server/VibratorService;->access$800(Lcom/android/server/VibratorService;I)V

    goto :goto_5d

    .line 1190
    .end local v8    # "duration":J
    .restart local v13    # "duration":J
    :cond_5c
    move-wide v8, v13

    .line 1190
    .end local v13    # "duration":J
    .restart local v8    # "duration":J
    :goto_5d
    move-wide v14, v10

    .line 1190
    .end local v10    # "onDuration":J
    .restart local v14    # "onDuration":J
    :goto_5e
    invoke-direct {v1, v8, v9}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v10

    .line 1191
    .local v10, "waitTime":J
    if-eqz v12, :cond_65

    .line 1192
    sub-long/2addr v14, v10

    .line 1194
    .end local v8    # "duration":J
    .end local v12    # "amplitude":I
    .end local v14    # "onDuration":J
    .local v10, "onDuration":J
    :cond_65
    move-wide v10, v14

    .line 1166
    move/from16 v7, v19

    goto :goto_6d

    .line 1194
    .end local v19    # "index":I
    .restart local v7    # "index":I
    :cond_69
    if-gez v6, :cond_6c

    .line 1195
    goto :goto_70

    .line 1197
    :cond_6c
    move v7, v6

    .line 1166
    :goto_6d
    const-wide/16 v8, 0x0

    goto :goto_23

    .line 1200
    :cond_70
    :goto_70
    iget-boolean v8, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    xor-int/lit8 v8, v8, 0x1

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_c .. :try_end_75} :catchall_79

    .line 1203
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1200
    return v8

    .line 1201
    .end local v0    # "timings":[J
    .end local v4    # "amplitudes":[I
    .end local v5    # "len":I
    .end local v6    # "repeat":I
    .end local v7    # "index":I
    .end local v10    # "onDuration":J
    :catchall_79
    move-exception v0

    :try_start_7a
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    :try_start_7b
    throw v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    .line 1203
    :catchall_7c
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public run()V
    .registers 3

    .line 1139
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1142
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()Z

    move-result v0

    .line 1143
    .local v0, "finished":Z
    if-eqz v0, :cond_18

    .line 1144
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v1}, Lcom/android/server/VibratorService;->onVibrationFinished()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_23

    .line 1147
    .end local v0    # "finished":Z
    :cond_18
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1148
    nop

    .line 1149
    return-void

    .line 1147
    :catchall_23
    move-exception v0

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
