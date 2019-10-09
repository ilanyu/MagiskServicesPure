.class final Lcom/android/server/hdmi/SendKeyAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SendKeyAction.java"


# static fields
.field private static final AWAIT_LONGPRESS_MS:I = 0x190

.field private static final AWAIT_RELEASE_KEY_MS:I = 0x3e8

.field private static final STATE_CHECKING_LONGPRESS:I = 0x1

.field private static final STATE_PROCESSING_KEYCODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SendKeyAction"


# instance fields
.field private mLastKeycode:I

.field private mLastSendKeyTime:J

.field private final mTargetAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V
    .registers 4
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "keycode"    # I

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 77
    iput p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    .line 78
    iput p3, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    .line 79
    return-void
.end method

.method private getCurrentTime()J
    .registers 3

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private sendKeyDown(I)V
    .registers 5
    .param p1, "keycode"    # I

    .line 145
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    move-result-object v0

    .line 146
    .local v0, "cecKeycodeAndParams":[B
    if-nez v0, :cond_7

    .line 147
    return-void

    .line 149
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    invoke-static {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/SendKeyAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 151
    return-void
.end method

.method private sendKeyUp()V
    .registers 3

    .line 154
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 156
    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .registers 4
    .param p1, "state"    # I

    .line 166
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    packed-switch v0, :pswitch_data_30

    .line 181
    const-string v0, "SendKeyAction"

    const-string v1, "Not in a valid state"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 177
    :pswitch_d
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    .line 179
    goto :goto_2f

    .line 169
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 170
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    .line 171
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 172
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 173
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    .line 174
    nop

    .line 184
    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_14
        :pswitch_d
    .end packed-switch
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method processKeyEvent(IZ)V
    .registers 7
    .param p1, "keycode"    # I
    .param p2, "isPressed"    # Z

    .line 107
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    .line 108
    const-string v0, "SendKeyAction"

    const-string v1, "Not in a valid state"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 111
    :cond_12
    if-eqz p2, :cond_53

    .line 114
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    if-eq p1, v0, :cond_2e

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 116
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 117
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    move-result v0

    if-nez v0, :cond_44

    .line 118
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    .line 120
    return-void

    .line 126
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_44

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 128
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 131
    :cond_44
    iget-object v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 132
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    .line 133
    iput p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    goto :goto_5d

    .line 137
    :cond_53
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    if-ne p1, v0, :cond_5d

    .line 138
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 139
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    .line 142
    :cond_5d
    :goto_5d
    return-void
.end method

.method public start()Z
    .registers 4

    .line 83
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 84
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 86
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    .line 87
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    .line 89
    return v1

    .line 91
    :cond_1b
    iput v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    .line 92
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v2, 0x190

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    .line 93
    return v1
.end method
