.class Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field public effect:Landroid/os/VibrationEffect;

.field public final opPkg:Ljava/lang/String;

.field public originalEffect:Landroid/os/VibrationEffect;

.field public final startTime:J

.field public final startTimeDebug:J

.field final synthetic this$0:Lcom/android/server/VibratorService;

.field public final token:Landroid/os/IBinder;

.field public final uid:I

.field public final usageHint:I


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;)V
    .registers 9
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "usageHint"    # I
    .param p5, "uid"    # I
    .param p6, "opPkg"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    .line 172
    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->startTime:J

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    .line 175
    iput p4, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    .line 176
    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    .line 177
    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$1;)V
    .registers 8
    .param p1, "x0"    # Lcom/android/server/VibratorService;
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # Landroid/os/VibrationEffect;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Lcom/android/server/VibratorService$1;

    .line 150
    invoke-direct/range {p0 .. p6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 182
    :try_start_7
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v1

    if-ne p0, v1, :cond_14

    .line 183
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)V

    .line 185
    :cond_14
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public hasTimeoutLongerThan(J)Z
    .registers 7
    .param p1, "millis"    # J

    .line 189
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    .line 190
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    cmp-long v2, v0, p1

    if-lez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public isFromSystem()Z
    .registers 3

    .line 231
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_17

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    if-eqz v0, :cond_17

    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public isHapticFeedback()Z
    .registers 8

    .line 194
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 195
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    .line 196
    .local v0, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_32

    .line 205
    const-string v1, "VibratorService"

    const-string v3, "Unknown prebaked vibration effect, assuming it isn\'t haptic feedback."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return v2

    .line 203
    :pswitch_1b
    return v1

    .line 210
    .end local v0    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    :cond_1c
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v3

    .line 211
    .local v3, "duration":J
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2f

    const-wide/16 v5, 0x1388

    cmp-long v0, v3, v5

    if-gez v0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    return v1

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public isNotification()Z
    .registers 3

    .line 215
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_c

    .line 222
    const/4 v0, 0x0

    return v0

    .line 220
    :cond_a
    :pswitch_a
    const/4 v0, 0x1

    return v0

    :pswitch_data_c
    .packed-switch 0x7
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public isRingtone()Z
    .registers 3

    .line 227
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public toInfo()Lcom/android/server/VibratorService$VibrationInfo;
    .registers 10

    .line 235
    new-instance v8, Lcom/android/server/VibratorService$VibrationInfo;

    iget-wide v1, p0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    iget-object v3, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iget-object v4, p0, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    iget v5, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v6, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;IILjava/lang/String;)V

    return-object v8
.end method
