.class public final Lcom/android/server/usb/UsbAlsaDevice;
.super Ljava/lang/Object;
.source "UsbAlsaDevice.java"


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbAlsaDevice"


# instance fields
.field private mAudioService:Landroid/media/IAudioService;

.field private final mCardNum:I

.field private final mDeviceAddress:Ljava/lang/String;

.field private mDeviceDescription:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private final mDeviceNum:I

.field private final mHasInput:Z

.field private final mHasOutput:Z

.field private mInputState:I

.field private final mIsInputHeadset:Z

.field private final mIsOutputHeadset:Z

.field private mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

.field private mOutputState:I

.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/media/IAudioService;IILjava/lang/String;ZZZZ)V
    .registers 10
    .param p1, "audioService"    # Landroid/media/IAudioService;
    .param p2, "card"    # I
    .param p3, "device"    # I
    .param p4, "deviceAddress"    # Ljava/lang/String;
    .param p5, "hasOutput"    # Z
    .param p6, "hasInput"    # Z
    .param p7, "isInputHeadset"    # Z
    .param p8, "isOutputHeadset"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceDescription:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    .line 58
    iput p2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 59
    iput p3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    .line 60
    iput-object p4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    .line 61
    iput-boolean p5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    .line 62
    iput-boolean p6, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    .line 63
    iput-boolean p7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    .line 64
    iput-boolean p8, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    .line 65
    return-void
.end method

.method private declared-synchronized isInputJackConnected()Z
    .registers 2

    monitor-enter p0

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_8

    .line 133
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 135
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->isInputJackConnected()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 131
    :catchall_10
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    throw v0
.end method

.method private declared-synchronized isOutputJackConnected()Z
    .registers 2

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_8

    .line 143
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 145
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->isOutputJackConnected()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 141
    :catchall_10
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    throw v0
.end method

.method private declared-synchronized startJackDetect()V
    .registers 2

    monitor-enter p0

    .line 151
    :try_start_1
    invoke-static {p0}, Lcom/android/server/usb/UsbAlsaJackDetector;->startJackDetect(Lcom/android/server/usb/UsbAlsaDevice;)Lcom/android/server/usb/UsbAlsaJackDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 152
    monitor-exit p0

    return-void

    .line 150
    :catchall_9
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    throw v0
.end method

.method private declared-synchronized stopJackDetect()V
    .registers 2

    monitor-enter p0

    .line 156
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    if-eqz v0, :cond_a

    .line 157
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->pleaseStop()V

    .line 159
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 160
    monitor-exit p0

    return-void

    .line 155
    :catchall_f
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    throw v0
.end method


# virtual methods
.method public declared-synchronized dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 11
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    monitor-enter p0

    .line 248
    :try_start_1
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 250
    .local v0, "token":J
    const-string v2, "card"

    const-wide v3, 0x10500000001L

    iget v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 251
    const-string v2, "device"

    const-wide v3, 0x10500000002L

    iget v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 252
    const-string/jumbo v2, "name"

    const-wide v3, 0x10900000003L

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 253
    const-string v2, "has_output"

    const-wide v3, 0x10800000004L

    iget-boolean v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 254
    const-string v2, "has_input"

    const-wide v3, 0x10800000005L

    iget-boolean v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 255
    const-string v2, "address"

    const-wide v3, 0x10900000006L

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 257
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    .line 258
    monitor-exit p0

    return-void

    .line 247
    .end local v0    # "token":J
    .end local p1    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    .end local p2    # "idName":Ljava/lang/String;
    .end local p3    # "id":J
    :catchall_53
    move-exception p1

    monitor-exit p0

    .line 247
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 279
    instance-of v0, p1, Lcom/android/server/usb/UsbAlsaDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 280
    return v1

    .line 282
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 283
    .local v0, "other":Lcom/android/server/usb/UsbAlsaDevice;
    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    iget v3, v0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    iget v3, v0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    if-ne v2, v3, :cond_2f

    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    iget-boolean v3, v0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    if-ne v2, v3, :cond_2f

    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    iget-boolean v3, v0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    if-ne v2, v3, :cond_2f

    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    iget-boolean v3, v0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    if-ne v2, v3, :cond_2f

    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    iget-boolean v3, v0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    if-ne v2, v3, :cond_2f

    const/4 v1, 0x1

    nop

    :cond_2f
    return v1
.end method

.method public getAlsaCardDeviceString()Ljava/lang/String;
    .registers 4

    .line 92
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    if-ltz v0, :cond_12

    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    if-gez v0, :cond_9

    goto :goto_12

    .line 97
    :cond_9
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->makeAlsaAddressString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_12
    :goto_12
    const-string v0, "UsbAlsaDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid alsa card or device alsaCard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " alsaDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCardNum()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    return v0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getDeviceName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 266
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    throw v0
.end method

.method public getDeviceNum()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    return v0
.end method

.method public hasInput()Z
    .registers 2

    .line 111
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    return v0
.end method

.method public hasOutput()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 296
    const/16 v0, 0x1f

    .line 297
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 298
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    add-int/2addr v3, v4

    .line 299
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int v1, v2, v3

    iget v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    add-int/2addr v1, v4

    .line 300
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget-boolean v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    xor-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 301
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int v1, v2, v3

    iget-boolean v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    xor-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    .line 302
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget-boolean v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    xor-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 303
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int/2addr v2, v3

    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    .line 305
    .end local v3    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isInputHeadset()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    return v0
.end method

.method public isOutputHeadset()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    return v0
.end method

.method declared-synchronized setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "deviceDescription"    # Ljava/lang/String;

    monitor-enter p0

    .line 270
    :try_start_1
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 271
    iput-object p2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceDescription:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 272
    monitor-exit p0

    return-void

    .line 269
    .end local p1    # "deviceName":Ljava/lang/String;
    .end local p2    # "deviceDescription":Ljava/lang/String;
    :catchall_7
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    throw p1
.end method

.method public declared-synchronized start()V
    .registers 3

    monitor-enter p0

    .line 164
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z

    .line 165
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mInputState:I

    .line 166
    iput v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mOutputState:I

    .line 167
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaDevice;->startJackDetect()V

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(Z)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 169
    monitor-exit p0

    return-void

    .line 163
    :catchall_11
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    .line 173
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopJackDetect()V

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(Z)V

    .line 175
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 176
    monitor-exit p0

    return-void

    .line 172
    :catchall_c
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    throw v0
.end method

.method declared-synchronized toShortString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 262
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[card:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v0

    :catchall_2f
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 237
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbAlsaDevice: [card: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasOutput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasInput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    monitor-exit p0

    return-object v0

    :catchall_43
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    throw v0
.end method

.method public declared-synchronized updateWiredDeviceConnectionState(Z)V
    .registers 13
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 182
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z

    if-nez v0, :cond_f

    .line 183
    const-string v0, "UsbAlsaDevice"

    const-string/jumbo v1, "updateWiredDeviceConnectionState on unselected AlsaDevice!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_a9

    .line 184
    monitor-exit p0

    return-void

    .line 186
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->getAlsaCardDeviceString()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_a9

    .line 187
    .local v0, "alsaCardDeviceString":Ljava/lang/String;
    if-nez v0, :cond_17

    .line 188
    monitor-exit p0

    return-void

    .line 192
    :cond_17
    :try_start_17
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_5c

    .line 193
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    if-eqz v1, :cond_25

    .line 194
    const/high16 v1, 0x4000000

    .line 195
    :goto_23
    move v2, v1

    goto :goto_28

    :cond_25
    const/16 v1, 0x4000

    goto :goto_23

    .line 201
    .local v2, "device":I
    :goto_28
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaDevice;->isOutputJackConnected()Z

    move-result v1

    move v9, v1

    .line 202
    .local v9, "connected":Z
    const-string v1, "UsbAlsaDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OUTPUT JACK connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz p1, :cond_49

    if-eqz v9, :cond_49

    move v1, v8

    goto :goto_4a

    :cond_49
    move v1, v7

    :goto_4a
    move v10, v1

    .line 204
    .local v10, "outputState":I
    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mOutputState:I

    if-eq v10, v1, :cond_5c

    .line 205
    iput v10, p0, Lcom/android/server/usb/UsbAlsaDevice;->mOutputState:I

    .line 206
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    const-string v6, "UsbAlsaDevice"

    move v3, v10

    move-object v4, v0

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v2    # "device":I
    .end local v9    # "connected":Z
    .end local v10    # "outputState":I
    :cond_5c
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    if-eqz v1, :cond_9e

    .line 214
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    if-eqz v1, :cond_68

    const/high16 v1, -0x7e000000

    .line 215
    :goto_66
    move v2, v1

    goto :goto_6c

    :cond_68
    const v1, -0x7ffff000

    goto :goto_66

    .line 216
    .restart local v2    # "device":I
    :goto_6c
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaDevice;->isInputJackConnected()Z

    move-result v1

    move v9, v1

    .line 217
    .restart local v9    # "connected":Z
    const-string v1, "UsbAlsaDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INPUT JACK connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz p1, :cond_8d

    if-eqz v9, :cond_8d

    move v7, v8

    nop

    .line 219
    .local v7, "inputState":I
    :cond_8d
    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mInputState:I

    if-eq v7, v1, :cond_9e

    .line 220
    iput v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mInputState:I

    .line 221
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    const-string v6, "UsbAlsaDevice"

    move v3, v7

    move-object v4, v0

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_9e} :catch_9f
    .catchall {:try_start_17 .. :try_end_9e} :catchall_a9

    .line 228
    .end local v2    # "device":I
    .end local v7    # "inputState":I
    .end local v9    # "connected":Z
    :cond_9e
    goto :goto_a7

    .line 226
    :catch_9f
    move-exception v1

    .line 227
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_a0
    const-string v2, "UsbAlsaDevice"

    const-string v3, "RemoteException in setWiredDeviceConnectionState"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_a0 .. :try_end_a7} :catchall_a9

    .line 229
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_a7
    monitor-exit p0

    return-void

    .line 181
    .end local v0    # "alsaCardDeviceString":Ljava/lang/String;
    .end local p1    # "enable":Z
    :catchall_a9
    move-exception p1

    monitor-exit p0

    .line 181
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    throw p1
.end method
