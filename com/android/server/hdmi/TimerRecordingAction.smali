.class public Lcom/android/server/hdmi/TimerRecordingAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "TimerRecordingAction.java"


# static fields
.field private static final STATE_WAITING_FOR_TIMER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimerRecordingAction"

.field private static final TIMER_STATUS_TIMEOUT_MS:I = 0x1d4c0


# instance fields
.field private final mRecordSource:[B

.field private final mRecorderAddress:I

.field private final mSourceType:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II[B)V
    .registers 5
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "recorderAddress"    # I
    .param p3, "sourceType"    # I
    .param p4, "recordSource"    # [B

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 49
    iput p2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    .line 50
    iput p3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mSourceType:I

    .line 51
    iput-object p4, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/TimerRecordingAction;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/TimerRecordingAction;

    .line 33
    iget v0, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    return v0
.end method

.method private static bytesToInt([B)I
    .registers 5
    .param p0, "data"    # [B

    .line 148
    array-length v0, p0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_17

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 153
    rsub-int/lit8 v2, v1, 0x3

    mul-int/lit8 v2, v2, 0x8

    .line 154
    .local v2, "shift":I
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    or-int/2addr v0, v3

    .line 152
    .end local v2    # "shift":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 156
    .end local v1    # "i":I
    :cond_16
    return v0

    .line 149
    .end local v0    # "result":I
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid data size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 9
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 128
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 129
    .local v0, "params":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    .line 130
    .local v2, "messageType":I
    const/16 v3, 0x34

    if-eq v2, v3, :cond_16

    const/16 v3, 0x97

    if-eq v2, v3, :cond_16

    const/16 v3, 0xa2

    if-eq v2, v3, :cond_16

    .line 136
    return v1

    .line 134
    :cond_16
    nop

    .line 138
    const/4 v1, 0x1

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    .line 139
    .local v3, "reason":I
    const-string v4, "TimerRecordingAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Feature Abort] for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    iget v5, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    invoke-virtual {v4, v5, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 142
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    .line 143
    return v1
.end method

.method private handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 113
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 115
    .local v0, "timerStatusData":[B
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_28

    array-length v1, v0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_d

    goto :goto_28

    .line 119
    :cond_d
    const-string v1, "TimerRecordingAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid [Timer Status Data]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 116
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    invoke-static {v0}, Lcom/android/server/hdmi/TimerRecordingAction;->bytesToInt([B)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 117
    const-string v1, "TimerRecordingAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received [Timer Status Data]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_4f
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    .line 124
    return v2
.end method

.method private sendTimerMessage()V
    .registers 5

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mSourceType:I

    packed-switch v1, :pswitch_data_44

    .line 76
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    .line 79
    return-void

    .line 72
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 74
    goto :goto_3b

    .line 68
    :pswitch_21
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 70
    goto :goto_3b

    .line 64
    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 66
    nop

    .line 81
    :goto_3b
    new-instance v1, Lcom/android/server/hdmi/TimerRecordingAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/TimerRecordingAction$1;-><init>(Lcom/android/server/hdmi/TimerRecordingAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/TimerRecordingAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 94
    return-void

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_21
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 5
    .param p1, "state"    # I

    .line 161
    iget v0, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    if-eq v0, p1, :cond_2a

    .line 162
    const-string v0, "TimerRecordingAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout in invalid state:[Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 166
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 168
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    .line 169
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 98
    iget v0, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    .line 99
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    if-eq v0, v2, :cond_f

    goto :goto_24

    .line 103
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v2, 0x35

    if-eq v0, v2, :cond_1a

    .line 109
    return v1

    .line 105
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/TimerRecordingAction;->handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 107
    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/TimerRecordingAction;->handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 100
    :cond_24
    :goto_24
    return v1
.end method

.method start()Z
    .registers 2

    .line 56
    invoke-direct {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->sendTimerMessage()V

    .line 57
    const/4 v0, 0x1

    return v0
.end method
