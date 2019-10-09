.class public final Lcom/android/server/usb/UsbMidiDevice;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "UsbMidiDevice"


# instance fields
.field private final mAlsaCard:I

.field private final mAlsaDevice:I

.field private final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

.field private mFileDescriptors:[Ljava/io/FileDescriptor;

.field private final mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

.field private mInputStreams:[Ljava/io/FileInputStream;

.field private mIsOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mOutputStreams:[Ljava/io/FileOutputStream;

.field private mPipeFD:I

.field private mPollFDs:[Landroid/system/StructPollfd;

.field private mServer:Landroid/media/midi/MidiDeviceServer;

.field private final mSubdeviceCount:I


# direct methods
.method private constructor <init>(III)V
    .registers 9
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "subdeviceCount"    # I

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPipeFD:I

    .line 77
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbMidiDevice$1;-><init>(Lcom/android/server/usb/UsbMidiDevice;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    .line 160
    iput p1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    .line 161
    iput p2, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    .line 162
    iput p3, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    .line 165
    move v0, p3

    .line 166
    .local v0, "inputPortCount":I
    new-array v1, v0, [Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    iput-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    .line 167
    const/4 v1, 0x0

    .local v1, "port":I
    :goto_20
    if-ge v1, v0, :cond_2f

    .line 168
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    new-instance v3, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbMidiDevice;Lcom/android/server/usb/UsbMidiDevice$1;)V

    aput-object v3, v2, v1

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 170
    .end local v1    # "port":I
    :cond_2f
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .line 46
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbMidiDevice;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .line 46
    iget-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbMidiDevice;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .line 46
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbMidiDevice;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .line 46
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .line 46
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .line 46
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    return-object v0
.end method

.method private closeLocked()V
    .registers 5

    .line 320
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_19

    .line 321
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    .line 322
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 324
    .end local v1    # "i":I
    :cond_19
    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 326
    move v1, v0

    .restart local v1    # "i":I
    :goto_1c
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    array-length v2, v2

    if-ge v1, v2, :cond_2b

    .line 327
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    aget-object v2, v2, v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 329
    .end local v1    # "i":I
    :cond_2b
    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 331
    move v1, v0

    .restart local v1    # "i":I
    :goto_2e
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    array-length v2, v2

    if-ge v1, v2, :cond_3d

    .line 332
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    aget-object v2, v2, v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 334
    .end local v1    # "i":I
    :cond_3d
    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 337
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbMidiDevice;->nativeClose([Ljava/io/FileDescriptor;)V

    .line 338
    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 340
    iput-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    .line 341
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "properties"    # Landroid/os/Bundle;
    .param p2, "card"    # I
    .param p3, "device"    # I

    .line 144
    invoke-static {p2, p3}, Lcom/android/server/usb/UsbMidiDevice;->nativeGetSubdeviceCount(II)I

    move-result v0

    .line 145
    .local v0, "subDeviceCount":I
    const/4 v1, 0x0

    if-gtz v0, :cond_10

    .line 146
    const-string v2, "UsbMidiDevice"

    const-string/jumbo v3, "nativeGetSubdeviceCount failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v1

    .line 150
    :cond_10
    new-instance v2, Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {v2, p2, p3, v0}, Lcom/android/server/usb/UsbMidiDevice;-><init>(III)V

    .line 151
    .local v2, "midiDevice":Lcom/android/server/usb/UsbMidiDevice;
    invoke-direct {v2, p0, p1}, Lcom/android/server/usb/UsbMidiDevice;->register(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 152
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 153
    const-string v3, "UsbMidiDevice"

    const-string v4, "createDeviceServer failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v1

    .line 156
    :cond_26
    return-object v2
.end method

.method private native nativeClose([Ljava/io/FileDescriptor;)V
.end method

.method private static native nativeGetSubdeviceCount(II)I
.end method

.method private native nativeOpen(III)[Ljava/io/FileDescriptor;
.end method

.method private openLocked()Z
    .registers 16

    .line 174
    iget v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    iget v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbMidiDevice;->nativeOpen(III)[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 175
    .local v0, "fileDescriptors":[Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 176
    const-string v2, "UsbMidiDevice"

    const-string/jumbo v3, "nativeOpen failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v1

    .line 180
    :cond_16
    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 181
    array-length v2, v0

    .line 184
    .local v2, "inputStreamCount":I
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 186
    .local v3, "outputStreamCount":I
    new-array v5, v2, [Landroid/system/StructPollfd;

    iput-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    .line 187
    new-array v5, v2, [Ljava/io/FileInputStream;

    iput-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 188
    move v5, v1

    .line 188
    .local v5, "i":I
    :goto_25
    if-ge v5, v2, :cond_45

    .line 189
    aget-object v6, v0, v5

    .line 190
    .local v6, "fd":Ljava/io/FileDescriptor;
    new-instance v7, Landroid/system/StructPollfd;

    invoke-direct {v7}, Landroid/system/StructPollfd;-><init>()V

    .line 191
    .local v7, "pollfd":Landroid/system/StructPollfd;
    iput-object v6, v7, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 192
    sget v8, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v8, v8

    iput-short v8, v7, Landroid/system/StructPollfd;->events:S

    .line 193
    iget-object v8, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    aput-object v7, v8, v5

    .line 194
    iget-object v8, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v9, v8, v5

    .line 188
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "pollfd":Landroid/system/StructPollfd;
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 197
    .end local v5    # "i":I
    :cond_45
    new-array v5, v3, [Ljava/io/FileOutputStream;

    iput-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 198
    new-array v5, v3, [Lcom/android/internal/midi/MidiEventScheduler;

    iput-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 199
    move v5, v1

    .line 199
    .restart local v5    # "i":I
    :goto_4e
    if-ge v5, v3, :cond_72

    .line 200
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    aget-object v8, v0, v5

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v7, v6, v5

    .line 202
    new-instance v6, Lcom/android/internal/midi/MidiEventScheduler;

    invoke-direct {v6}, Lcom/android/internal/midi/MidiEventScheduler;-><init>()V

    .line 203
    .local v6, "scheduler":Lcom/android/internal/midi/MidiEventScheduler;
    iget-object v7, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aput-object v6, v7, v5

    .line 204
    iget-object v7, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    aget-object v7, v7, v5

    invoke-virtual {v6}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    .line 199
    .end local v6    # "scheduler":Lcom/android/internal/midi/MidiEventScheduler;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    .line 207
    .end local v5    # "i":I
    :cond_72
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v5}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v5

    .line 210
    .local v5, "outputReceivers":[Landroid/media/midi/MidiReceiver;
    new-instance v6, Lcom/android/server/usb/UsbMidiDevice$2;

    const-string v7, "UsbMidiDevice input thread"

    invoke-direct {v6, p0, v7, v5}, Lcom/android/server/usb/UsbMidiDevice$2;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V

    .line 252
    invoke-virtual {v6}, Lcom/android/server/usb/UsbMidiDevice$2;->start()V

    .line 255
    nop

    .line 255
    .local v1, "port":I
    :goto_83
    if-ge v1, v3, :cond_ae

    .line 256
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v12, v6, v1

    .line 257
    .local v12, "eventSchedulerF":Lcom/android/internal/midi/MidiEventScheduler;
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    aget-object v13, v6, v1

    .line 258
    .local v13, "outputStreamF":Ljava/io/FileOutputStream;
    move v11, v1

    .line 260
    .local v11, "portF":I
    new-instance v14, Lcom/android/server/usb/UsbMidiDevice$3;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsbMidiDevice output thread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v14

    move-object v7, p0

    move-object v9, v12

    move-object v10, v13

    invoke-direct/range {v6 .. v11}, Lcom/android/server/usb/UsbMidiDevice$3;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V

    .line 283
    invoke-virtual {v14}, Lcom/android/server/usb/UsbMidiDevice$3;->start()V

    .line 255
    .end local v11    # "portF":I
    .end local v12    # "eventSchedulerF":Lcom/android/internal/midi/MidiEventScheduler;
    .end local v13    # "outputStreamF":Ljava/io/FileOutputStream;
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    .line 286
    .end local v1    # "port":I
    :cond_ae
    iput-boolean v4, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    .line 287
    return v4
.end method

.method private register(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Landroid/os/Bundle;

    .line 291
    const-string/jumbo v0, "midi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager;

    .line 292
    .local v0, "midiManager":Landroid/media/midi/MidiManager;
    const/4 v9, 0x0

    if-nez v0, :cond_14

    .line 293
    const-string v1, "UsbMidiDevice"

    const-string v2, "No MidiManager in UsbMidiDevice.create()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return v9

    .line 297
    :cond_14
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    iget v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    move-object v1, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    .line 299
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-nez v1, :cond_2a

    .line 300
    return v9

    .line 303
    :cond_2a
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    if-eqz v1, :cond_a

    .line 310
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V

    .line 312
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    .line 314
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz v0, :cond_14

    .line 315
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 317
    :cond_14
    return-void

    .line 312
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 12
    .param p1, "deviceAddr"    # Ljava/lang/String;
    .param p2, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p3, "idName"    # Ljava/lang/String;
    .param p4, "id"    # J

    .line 348
    invoke-virtual {p2, p3, p4, p5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 350
    .local v0, "token":J
    const-string v2, "device_address"

    const-wide v3, 0x10900000003L

    invoke-virtual {p2, v2, v3, v4, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 351
    const-string v2, "card"

    iget v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    const-wide v4, 0x10500000001L

    invoke-virtual {p2, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 352
    const-string v2, "device"

    iget v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    const-wide v4, 0x10500000002L

    invoke-virtual {p2, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 354
    invoke-virtual {p2, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 355
    return-void
.end method
