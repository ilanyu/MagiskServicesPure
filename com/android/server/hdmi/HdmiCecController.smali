.class final Lcom/android/server/hdmi/HdmiCecController;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;,
        Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    }
.end annotation


# static fields
.field private static final EMPTY_BODY:[B

.field private static final MAX_CEC_MESSAGE_HISTORY:I = 0x14

.field private static final NUM_LOGICAL_ADDRESS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HdmiCecController"


# instance fields
.field private mControlHandler:Landroid/os/Handler;

.field private mIoHandler:Landroid/os/Handler;

.field private final mLocalDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNativePtr:J

.field private final mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mSystemAudioAddressPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    return-void
.end method

.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$1;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

    .line 86
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$2;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Ljava/util/function/Predicate;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    .line 110
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 115
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecController;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isAllocatedLocalDeviceAddress(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/HdmiCecController;III)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p5, "x5"    # Ljava/util/List;

    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(I[B)[B
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # [B

    .line 53
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->buildBody(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/hdmi/HdmiCecController;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;

    .line 53
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    return-wide v0
.end method

.method static synthetic access$700(JII[B)I
    .registers 6
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # [B

    .line 53
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiCecController;->nativeSendCecCommand(JII[B)I

    move-result v0

    return v0
.end method

.method private addMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 5
    .param p1, "isReceived"    # Z
    .param p2, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 648
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 649
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;-><init>(Lcom/android/server/hdmi/HdmiCecController;ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 650
    .local v0, "record":Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 651
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 652
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 654
    :cond_1a
    return-void
.end method

.method private assertRunOnIoThread()V
    .registers 3

    .line 510
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 513
    return-void

    .line 511
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on io thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertRunOnServiceThread()V
    .registers 3

    .line 516
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 519
    return-void

    .line 517
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static buildBody(I[B)[B
    .registers 6
    .param p0, "opcode"    # I
    .param p1, "params"    # [B

    .line 230
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 231
    .local v0, "body":[B
    int-to-byte v2, p0

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 232
    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 233
    return-object v0
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 6
    .param p0, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 129
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 130
    .local v0, "controller":Lcom/android/server/hdmi/HdmiCecController;
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J

    move-result-wide v1

    .line 131
    .local v1, "nativePtr":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1a

    .line 132
    const/4 v0, 0x0

    .line 133
    const/4 v3, 0x0

    return-object v3

    .line 136
    :cond_1a
    invoke-direct {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->init(J)V

    .line 137
    return-object v0
.end method

.method private handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 16
    .param p1, "deviceType"    # I
    .param p2, "preferredAddress"    # I
    .param p3, "callback"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    .line 181
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    .line 182
    move v0, p2

    .line 185
    .local v0, "startAddress":I
    const/16 v1, 0xf

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-ne p2, v1, :cond_19

    .line 186
    move v4, v3

    .local v4, "i":I
    :goto_c
    if-ge v4, v2, :cond_19

    .line 187
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v5

    if-ne p1, v5, :cond_16

    .line 188
    move v0, v4

    .line 189
    goto :goto_19

    .line 186
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 194
    .end local v4    # "i":I
    :cond_19
    :goto_19
    const/16 v4, 0xf

    .line 196
    .local v4, "logicalAddress":I
    move v5, v3

    .local v5, "i":I
    :goto_1c
    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ge v5, v2, :cond_41

    .line 197
    add-int v8, v0, v5

    rem-int/2addr v8, v2

    .line 198
    .local v8, "curAddress":I
    if-eq v8, v1, :cond_3e

    .line 199
    invoke-static {v8}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v9

    if-ne p1, v9, :cond_3e

    .line 200
    const/4 v9, 0x0

    .line 201
    .local v9, "acked":Z
    move v10, v3

    .local v10, "j":I
    :goto_2d
    if-ge v10, v6, :cond_3a

    .line 202
    invoke-direct {p0, v8, v8, v7}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    move-result v11

    if-eqz v11, :cond_37

    .line 203
    const/4 v9, 0x1

    .line 204
    goto :goto_3a

    .line 201
    :cond_37
    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    .line 209
    .end local v10    # "j":I
    :cond_3a
    :goto_3a
    if-nez v9, :cond_3e

    .line 210
    move v4, v8

    .line 211
    goto :goto_41

    .line 196
    .end local v8    # "curAddress":I
    .end local v9    # "acked":Z
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 216
    .end local v5    # "i":I
    :cond_41
    :goto_41
    move v1, v4

    .line 217
    .local v1, "assignedAddress":I
    const-string v2, "New logical address for device [%d]: [preferred:%d, assigned:%d]"

    new-array v5, v6, [Ljava/lang/Object;

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v7

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 217
    invoke-static {v2, v5}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    if-eqz p3, :cond_66

    .line 220
    new-instance v2, Lcom/android/server/hdmi/HdmiCecController$4;

    invoke-direct {v2, p0, p3, p1, v1}, Lcom/android/server/hdmi/HdmiCecController$4;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;II)V

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 227
    :cond_66
    return-void
.end method

.method private handleHotplug(IZ)V
    .registers 7
    .param p1, "port"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 641
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 642
    const-string v0, "Hotplug event:[port:%d, connected:%b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->onHotplug(IZ)V

    .line 644
    return-void
.end method

.method private handleIncomingCecCommand(II[B)V
    .registers 7
    .param p1, "srcAddress"    # I
    .param p2, "dstAddress"    # I
    .param p3, "body"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 629
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 630
    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->of(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 631
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[R]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecController;->addMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 633
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 634
    return-void
.end method

.method private init(J)V
    .registers 5
    .param p1, "nativePtr"    # J

    .line 141
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getIoLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    .line 142
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    .line 143
    iput-wide p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    .line 144
    return-void
.end method

.method private isAcceptableAddress(I)Z
    .registers 3
    .param p1, "address"    # I

    .line 547
    const/16 v0, 0xf

    if-ne p1, v0, :cond_6

    .line 548
    const/4 v0, 0x1

    return v0

    .line 550
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isAllocatedLocalDeviceAddress(I)Z

    move-result v0

    return v0
.end method

.method private isAllocatedLocalDeviceAddress(I)Z
    .registers 5
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 449
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 450
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 451
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isAddressOf(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 452
    const/4 v0, 0x1

    return v0

    .line 450
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 455
    .end local v1    # "i":I
    :cond_20
    return v0
.end method

.method private static native nativeAddLogicalAddress(JI)I
.end method

.method private static native nativeClearLogicalAddress(J)V
.end method

.method private static native nativeEnableAudioReturnChannel(JIZ)V
.end method

.method private static native nativeGetPhysicalAddress(J)I
.end method

.method private static native nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;
.end method

.method private static native nativeGetVendorId(J)I
.end method

.method private static native nativeGetVersion(J)I
.end method

.method private static native nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeIsConnected(JI)Z
.end method

.method private static native nativeSendCecCommand(JII[B)I
.end method

.method private static native nativeSetLanguage(JLjava/lang/String;)V
.end method

.method private static native nativeSetOption(JIZ)V
.end method

.method private onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 555
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 556
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->isAcceptableAddress(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 557
    return-void

    .line 560
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 561
    return-void
.end method

.method private pickPollCandidates(I)Ljava/util/List;
    .registers 9
    .param p1, "pickStrategy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 413
    and-int/lit8 v0, p1, 0x3

    .line 414
    .local v0, "strategy":I
    const/4 v1, 0x0

    .line 415
    .local v1, "pickPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    .line 421
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

    goto :goto_c

    .line 417
    :cond_9
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Ljava/util/function/Predicate;

    .line 418
    nop

    .line 425
    :goto_c
    const/high16 v2, 0x30000

    and-int/2addr v2, p1

    .line 426
    .local v2, "iterationStrategy":I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 427
    .local v3, "pollingCandidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/high16 v4, 0x10000

    const/16 v5, 0xe

    if-eq v2, v4, :cond_32

    .line 437
    nop

    .local v5, "i":I
    :goto_1b
    move v4, v5

    .end local v5    # "i":I
    .local v4, "i":I
    if-ltz v4, :cond_4a

    .line 438
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 439
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_2f
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1b

    .line 429
    .end local v5    # "i":I
    :cond_32
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_33
    if-gt v4, v5, :cond_49

    .line 430
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 431
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 434
    .end local v4    # "i":I
    :cond_49
    nop

    .line 444
    :cond_4a
    return-object v3
.end method

.method private runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .registers 16
    .param p1, "sourceAddress"    # I
    .param p3, "retryCount"    # I
    .param p4, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 462
    .local p2, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "allocated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 463
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 464
    if-eqz p4, :cond_1d

    .line 465
    const-string v0, "[P]:AllocatedAddress=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    invoke-interface {p4, p5}, Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;->onPollingFinished(Ljava/util/List;)V

    .line 468
    :cond_1d
    return-void

    .line 471
    :cond_1e
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 474
    .local v0, "candidate":Ljava/lang/Integer;
    new-instance v9, Lcom/android/server/hdmi/HdmiCecController$5;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move v5, p3

    move-object v6, p5

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/hdmi/HdmiCecController$5;-><init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/lang/Integer;ILjava/util/List;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;)V

    invoke-direct {p0, v9}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 489
    return-void
.end method

.method private runOnIoThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 525
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 526
    return-void
.end method

.method private runOnServiceThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 529
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    return-void
.end method

.method private sendPollMessage(III)Z
    .registers 11
    .param p1, "sourceAddress"    # I
    .param p2, "destinationAddress"    # I
    .param p3, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    .line 493
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    .line 494
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_5
    if-ge v1, p3, :cond_33

    .line 496
    iget-wide v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    sget-object v4, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    .line 497
    invoke-static {v2, v3, p1, p2, v4}, Lcom/android/server/hdmi/HdmiCecController;->nativeSendCecCommand(JII[B)I

    move-result v2

    .line 498
    .local v2, "ret":I
    const/4 v3, 0x1

    if-nez v2, :cond_13

    .line 499
    return v3

    .line 500
    :cond_13
    if-eq v2, v3, :cond_30

    .line 502
    const-string v4, "Failed to send a polling message(%d->%d) with return code %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 503
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 502
    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    .end local v2    # "ret":I
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 506
    .end local v1    # "i":I
    :cond_33
    return v0
.end method


# virtual methods
.method addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 4
    .param p1, "deviceType"    # I
    .param p2, "device"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 149
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    return-void
.end method

.method addLogicalAddress(I)I
    .registers 4
    .param p1, "newLogicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 264
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 265
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 266
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeAddLogicalAddress(JI)I

    move-result v0

    return v0

    .line 268
    :cond_10
    const/4 v0, 0x2

    return v0
.end method

.method allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 5
    .param p1, "deviceType"    # I
    .param p2, "preferredAddress"    # I
    .param p3, "callback"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 168
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 170
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$3;-><init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method clearLocalDevices()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 288
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 289
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 290
    return-void
.end method

.method clearLogicalAddress()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 279
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 281
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->clearAddress()V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 283
    .end local v0    # "i":I
    :cond_1a
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeClearLogicalAddress(J)V

    .line 284
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 657
    const/4 v0, 0x0

    .line 657
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HdmiCecLocalDevice #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 660
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 661
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 663
    .end local v0    # "i":I
    :cond_36
    const-string v0, "CEC message history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 665
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 666
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    .line 667
    .local v2, "record":Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;
    invoke-virtual {v2, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 668
    .end local v2    # "record":Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;
    goto :goto_4c

    .line 669
    :cond_5c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 670
    return-void
.end method

.method enableAudioReturnChannel(IZ)V
    .registers 5
    .param p1, "port"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 363
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 364
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->nativeEnableAudioReturnChannel(JIZ)V

    .line 365
    return-void
.end method

.method flush(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 534
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 535
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController$6;-><init>(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 543
    return-void
.end method

.method getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .registers 3
    .param p1, "deviceType"    # I

    .line 249
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    return-object v0
.end method

.method getLocalDeviceList()Ljava/util/List;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation

    .line 408
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 409
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPhysicalAddress()I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 302
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 303
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetPhysicalAddress(J)I

    move-result v0

    return v0
.end method

.method getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 3

    .line 238
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    return-object v0
.end method

.method getVendorId()I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 324
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 325
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetVendorId(J)I

    move-result v0

    return v0
.end method

.method getVersion()I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 313
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 314
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetVersion(J)I

    move-result v0

    return v0
.end method

.method isConnected(I)Z
    .registers 4
    .param p1, "port"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 375
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 376
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeIsConnected(JI)Z

    move-result v0

    return v0
.end method

.method maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .registers 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 565
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 567
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    .line 568
    .local v0, "src":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 569
    .local v1, "dest":I
    const/16 v2, 0xf

    if-eq v0, v2, :cond_22

    if-ne v1, v2, :cond_12

    goto :goto_22

    .line 574
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    .line 575
    .local v2, "originalOpcode":I
    if-nez v2, :cond_19

    .line 576
    return-void

    .line 578
    :cond_19
    nop

    .line 579
    invoke-static {v0, v1, v2, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    .line 578
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 580
    return-void

    .line 572
    .end local v2    # "originalOpcode":I
    :cond_22
    :goto_22
    return-void
.end method

.method pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .registers 12
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p2, "sourceAddress"    # I
    .param p3, "pickStrategy"    # I
    .param p4, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 393
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 396
    invoke-direct {p0, p3}, Lcom/android/server/hdmi/HdmiCecController;->pickPollCandidates(I)Ljava/util/List;

    move-result-object v6

    .line 397
    .local v6, "pollingCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v5, "allocated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, p0

    move v1, p2

    move-object v2, v6

    move v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    .line 399
    return-void
.end method

.method sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3
    .param p1, "cecMessage"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 584
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 586
    return-void
.end method

.method sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 4
    .param p1, "cecMessage"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 591
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 592
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->addMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 593
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$7;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 622
    return-void
.end method

.method setLanguage(Ljava/lang/String;)V
    .registers 4
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 348
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 349
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 350
    return-void

    .line 352
    :cond_a
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeSetLanguage(JLjava/lang/String;)V

    .line 353
    return-void
.end method

.method setOption(IZ)V
    .registers 7
    .param p1, "flag"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 336
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 337
    const-string/jumbo v0, "setOption: [flag:%d, enabled:%b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->nativeSetOption(JIZ)V

    .line 339
    return-void
.end method
