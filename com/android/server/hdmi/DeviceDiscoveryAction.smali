.class final Lcom/android/server/hdmi/DeviceDiscoveryAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DeviceDiscoveryAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;,
        Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;
    }
.end annotation


# static fields
.field private static final STATE_WAITING_FOR_DEVICE_POLLING:I = 0x1

.field private static final STATE_WAITING_FOR_OSD_NAME:I = 0x3

.field private static final STATE_WAITING_FOR_PHYSICAL_ADDRESS:I = 0x2

.field private static final STATE_WAITING_FOR_VENDOR_ID:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DeviceDiscoveryAction"


# instance fields
.field private final mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

.field private final mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessedDeviceCount:I

.field private mTimeoutRetry:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V
    .registers 4
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "callback"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 91
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 100
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    iput-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 43
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/DeviceDiscoveryAction;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction;
    .param p1, "x1"    # Ljava/util/List;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->allocateDevices(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 43
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPhysicalAddressStage()V

    return-void
.end method

.method private allocateDevices(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 128
    .local v1, "i":Ljava/lang/Integer;
    new-instance v2, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;-><init>(ILcom/android/server/hdmi/DeviceDiscoveryAction$1;)V

    .line 129
    .local v2, "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    iget-object v3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v2    # "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    goto :goto_4

    .line 131
    :cond_20
    return-void
.end method

.method private checkAndProceedStage()V
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 353
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    .line 354
    return-void

    .line 358
    :cond_c
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2b

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 360
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    packed-switch v0, :pswitch_data_30

    .line 371
    return-void

    .line 368
    :pswitch_1f
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    .line 369
    return-void

    .line 365
    :pswitch_23
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startVendorIdStage()V

    .line 366
    return-void

    .line 362
    :pswitch_27
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startOsdNameStage()V

    .line 363
    return-void

    .line 374
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendQueryCommand()V

    .line 376
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method

.method private getPortId(I)I
    .registers 3
    .param p1, "physicalAddress"    # I

    .line 277
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPortId(I)I

    move-result v0

    return v0
.end method

.method private handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 8
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 255
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 258
    .local v0, "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    # getter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-eq v1, v2, :cond_4b

    .line 259
    const-string v1, "DeviceDiscoveryAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unmatched address[expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", actual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 264
    :cond_4b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 265
    .local v1, "params":[B
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v2

    # setter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPhysicalAddress:I
    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$502(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I

    .line 266
    # getter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPhysicalAddress:I
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$500(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getPortId(I)I

    move-result v2

    # setter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPortId:I
    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$602(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I

    .line 267
    const/4 v2, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    # setter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDeviceType:I
    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$702(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I

    .line 269
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    # getter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v3

    # getter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDeviceType:I
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$700(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v4

    .line 270
    # getter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPhysicalAddress:I
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$500(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v5

    .line 269
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateCecSwitchInfo(III)Z

    .line 272
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 273
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 274
    return-void
.end method

.method private handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 8
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 281
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 284
    .local v0, "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    # getter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-eq v1, v2, :cond_4b

    .line 285
    const-string v1, "DeviceDiscoveryAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unmatched address[expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", actual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void

    .line 290
    :cond_4b
    const/4 v1, 0x0

    .line 292
    .local v1, "displayName":Ljava/lang/String;
    :try_start_4c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-nez v2, :cond_5c

    .line 293
    # getter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_68

    .line 295
    :cond_5c
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_67
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4c .. :try_end_67} :catch_69

    move-object v1, v2

    .line 301
    :goto_68
    goto :goto_8c

    .line 297
    :catch_69
    move-exception v2

    .line 298
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "DeviceDiscoveryAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to decode display name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    # getter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_8c
    # setter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDisplayName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$802(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 304
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 305
    return-void
.end method

.method private handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 308
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 311
    .local v0, "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    # getter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-eq v1, v2, :cond_4b

    .line 312
    const-string v1, "DeviceDiscoveryAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unmatched address[expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", actual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 317
    :cond_4b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    if-eqz v1, :cond_5c

    .line 318
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 319
    .local v1, "params":[B
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    move-result v2

    .line 320
    .local v2, "vendorId":I
    # setter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mVendorId:I
    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$902(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I

    .line 323
    .end local v1    # "params":[B
    .end local v2    # "vendorId":I
    :cond_5c
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 324
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 325
    return-void
.end method

.method private increaseProcessedDeviceCount()V
    .registers 2

    .line 328
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 329
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 330
    return-void
.end method

.method private mayProcessMessageIfCached(II)Z
    .registers 5
    .param p1, "address"    # I
    .param p2, "opcode"    # I

    .line 210
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageCache;->getMessage(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 211
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_f

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 213
    const/4 v1, 0x1

    return v1

    .line 215
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private queryOsdName(I)V
    .registers 4
    .param p1, "address"    # I

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 171
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 172
    return-void

    .line 175
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 177
    const/16 v0, 0x47

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 178
    return-void

    .line 180
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 181
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    .line 182
    return-void
.end method

.method private queryPhysicalAddress(I)V
    .registers 4
    .param p1, "address"    # I

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 147
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 148
    return-void

    .line 151
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 154
    const/16 v0, 0x84

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 155
    return-void

    .line 157
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 158
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    .line 159
    return-void
.end method

.method private queryVendorId(I)V
    .registers 4
    .param p1, "address"    # I

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 195
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 196
    return-void

    .line 199
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 201
    const/16 v0, 0x87

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 202
    return-void

    .line 204
    :cond_18
    nop

    .line 205
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 206
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    .line 207
    return-void
.end method

.method private removeDevice(I)V
    .registers 3
    .param p1, "index"    # I

    .line 333
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 334
    return-void
.end method

.method private sendQueryCommand()V
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    # getter for: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v0

    .line 380
    .local v0, "address":I
    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    packed-switch v1, :pswitch_data_22

    goto :goto_20

    .line 388
    :pswitch_14
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryVendorId(I)V

    goto :goto_20

    .line 385
    :pswitch_18
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryOsdName(I)V

    .line 386
    return-void

    .line 382
    :pswitch_1c
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryPhysicalAddress(I)V

    .line 383
    return-void

    .line 390
    :goto_20
    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_18
        :pswitch_14
    .end packed-switch
.end method

.method private startOsdNameStage()V
    .registers 4

    .line 162
    const-string v0, "DeviceDiscoveryAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start [Osd Name Stage]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 164
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 166
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 167
    return-void
.end method

.method private startPhysicalAddressStage()V
    .registers 4

    .line 134
    const-string v0, "DeviceDiscoveryAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start [Physical Address Stage]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 136
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 138
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 139
    return-void
.end method

.method private startVendorIdStage()V
    .registers 4

    .line 185
    const-string v0, "DeviceDiscoveryAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start [Vendor Id Stage]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 188
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 190
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 191
    return-void
.end method

.method private verifyValidLogicalAddress(I)Z
    .registers 3
    .param p1, "address"    # I

    .line 142
    if-ltz p1, :cond_8

    const/16 v0, 0xf

    if-ge p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private wrapUpAndFinish()V
    .registers 8

    .line 337
    const-string v0, "DeviceDiscoveryAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------Wrap up Device Discovery:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]---------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 340
    .local v2, "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    # invokes: Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->toHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-static {v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$1000(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    .line 341
    .local v3, "cecDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    const-string v4, "DeviceDiscoveryAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " DeviceInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v2    # "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .end local v3    # "cecDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_2c

    .line 344
    :cond_56
    const-string v1, "DeviceDiscoveryAction"

    const-string v2, "--------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    invoke-interface {v1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;->onDeviceDiscoveryDone(Ljava/util/List;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->finish()V

    .line 348
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processAllDelayedMessages()V

    .line 349
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 5
    .param p1, "state"    # I

    .line 396
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    if-eqz v0, :cond_44

    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    if-eq v0, p1, :cond_9

    goto :goto_44

    .line 400
    :cond_9
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_16

    .line 401
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendQueryCommand()V

    .line 402
    return-void

    .line 404
    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 405
    const-string v0, "DeviceDiscoveryAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout[State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Processed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->removeDevice(I)V

    .line 407
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 408
    return-void

    .line 397
    :cond_44
    :goto_44
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 220
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_5c

    .line 250
    return v2

    .line 238
    :pswitch_8
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x87

    if-ne v0, v3, :cond_14

    .line 239
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 240
    return v1

    .line 241
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_2a

    .line 242
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x8c

    if-ne v0, v3, :cond_2a

    .line 243
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 244
    return v1

    .line 246
    :cond_2a
    return v2

    .line 228
    :pswitch_2b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x47

    if-ne v0, v3, :cond_37

    .line 229
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 230
    return v1

    .line 231
    :cond_37
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_4d

    .line 232
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x46

    if-ne v0, v3, :cond_4d

    .line 233
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 234
    return v1

    .line 236
    :cond_4d
    return v2

    .line 222
    :pswitch_4e
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_5a

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 224
    return v1

    .line 226
    :cond_5a
    return v2

    nop

    :pswitch_data_5c
    .packed-switch 0x2
        :pswitch_4e
        :pswitch_2b
        :pswitch_8
    .end packed-switch
.end method

.method start()Z
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 108
    new-instance v1, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;-><init>(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    const v2, 0x20001

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    .line 123
    return v0
.end method
