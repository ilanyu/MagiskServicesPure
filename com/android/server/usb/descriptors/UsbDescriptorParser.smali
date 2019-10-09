.class public final Lcom/android/server/usb/descriptors/UsbDescriptorParser;
.super Ljava/lang/Object;
.source "UsbDescriptorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DESCRIPTORS_ALLOC_SIZE:I = 0x80

.field private static final IN_HEADSET_TRIGGER:F = 0.75f

.field private static final OUT_HEADSET_TRIGGER:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "UsbDescriptorParser"


# instance fields
.field private mACInterfacesSpec:I

.field private mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

.field private mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

.field private final mDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceAddr:Ljava/lang/String;

.field private mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "deviceAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p2, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 51
    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "deviceAddr"    # Ljava/lang/String;
    .param p2, "rawDescriptors"    # [B

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 62
    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p0, p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->parseDescriptors([B)V

    .line 65
    return-void
.end method

.method private allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 8
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->resetReadCount()V

    .line 115
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    .line 116
    .local v0, "length":I
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    .line 118
    .local v1, "type":B
    const/4 v2, 0x0

    .line 119
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    sparse-switch v1, :sswitch_data_ca

    goto/16 :goto_9e

    .line 184
    :sswitch_11
    invoke-static {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v2

    .line 185
    goto/16 :goto_9e

    .line 180
    :sswitch_17
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v2

    .line 181
    goto/16 :goto_9e

    .line 166
    :sswitch_1d
    new-instance v3, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;-><init>(IB)V

    move-object v2, v3

    .line 167
    goto/16 :goto_9e

    .line 173
    :sswitch_25
    new-instance v3, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;-><init>(IB)V

    move-object v2, v3

    .line 174
    goto/16 :goto_9e

    .line 150
    :sswitch_2d
    new-instance v3, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;-><init>(IB)V

    move-object v2, v3

    .line 151
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v3, :cond_40

    .line 152
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-object v4, v2

    check-cast v4, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-virtual {v3, v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    goto :goto_9e

    .line 155
    :cond_40
    const-string v3, "UsbDescriptorParser"

    const-string v4, "Endpoint Descriptor found with no associated Interface Descriptor!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    const-string v4, "Endpoint Descriptor found with no associated Interface Descriptor!"

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v3

    .line 139
    :sswitch_4f
    new-instance v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;-><init>(IB)V

    iput-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-object v2, v3

    .line 140
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    if-eqz v3, :cond_63

    .line 141
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-virtual {v3, v4}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    goto :goto_9e

    .line 143
    :cond_63
    const-string v3, "UsbDescriptorParser"

    const-string v4, "Interface Descriptor found with no associated Config Descriptor!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    const-string v4, "Interface Descriptor found with no associated Config Descriptor!"

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v3

    .line 128
    :sswitch_72
    new-instance v3, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;-><init>(IB)V

    iput-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    move-object v2, v3

    .line 129
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v3, :cond_86

    .line 130
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    invoke-virtual {v3, v4}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    goto :goto_9e

    .line 132
    :cond_86
    const-string v3, "UsbDescriptorParser"

    const-string v4, "Config Descriptor found with no associated Device Descriptor!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    const-string v4, "Config Descriptor found with no associated Device Descriptor!"

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v3

    .line 124
    :sswitch_95
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;-><init>(IB)V

    iput-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    move-object v2, v3

    .line 125
    nop

    .line 191
    :goto_9e
    if-nez v2, :cond_c8

    .line 193
    const-string v3, "UsbDescriptorParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Descriptor len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " type:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v3, Lcom/android/server/usb/descriptors/UsbUnknown;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbUnknown;-><init>(IB)V

    move-object v2, v3

    .line 198
    :cond_c8
    return-object v2

    nop

    :sswitch_data_ca
    .sparse-switch
        0x1 -> :sswitch_95
        0x2 -> :sswitch_72
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_2d
        0xb -> :sswitch_25
        0x21 -> :sswitch_1d
        0x24 -> :sswitch_17
        0x25 -> :sswitch_11
    .end sparse-switch
.end method

.method private native getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native getRawDescriptors_native(Ljava/lang/String;)[B
.end method


# virtual methods
.method public getACInterfaceDescriptors(BI)Ljava/util/ArrayList;
    .registers 9
    .param p1, "subtype"    # B
    .param p2, "subclass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 328
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_60

    .line 330
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbACInterface;

    if-eqz v3, :cond_36

    .line 331
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 332
    .local v3, "acDescriptor":Lcom/android/server/usb/descriptors/UsbACInterface;
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v4

    if-ne v4, p1, :cond_35

    .line 333
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()I

    move-result v4

    if-ne v4, p2, :cond_35

    .line 334
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v3    # "acDescriptor":Lcom/android/server/usb/descriptors/UsbACInterface;
    :cond_35
    goto :goto_60

    .line 337
    :cond_36
    const-string v3, "UsbDescriptorParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized Audio Interface l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v2    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_60
    :goto_60
    goto :goto_b

    .line 342
    :cond_61
    return-object v0
.end method

.method public getACInterfaceSpec()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    return v0
.end method

.method public getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    return-object v0
.end method

.method public getDescriptorString(I)Ljava/lang/String;
    .registers 3
    .param p1, "stringId"    # I

    .line 258
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDescriptors(B)Ljava/util/ArrayList;
    .registers 6
    .param p1, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 293
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    if-ne v3, p1, :cond_20

    .line 294
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v2    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_20
    goto :goto_b

    .line 297
    :cond_21
    return-object v0
.end method

.method public getDeviceAddr()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    return-object v0
.end method

.method public getInputHeadsetProbability()F
    .registers 5

    .line 529
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 530
    const/4 v0, 0x0

    return v0

    .line 533
    :cond_8
    const/4 v0, 0x0

    .line 536
    .local v0, "probability":F
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMic()Z

    move-result v1

    .line 539
    .local v1, "hasMic":Z
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasSpeaker()Z

    move-result v2

    .line 541
    .local v2, "hasSpeaker":Z
    if-eqz v1, :cond_18

    if-eqz v2, :cond_18

    .line 542
    const/high16 v3, 0x3f400000    # 0.75f

    add-float/2addr v0, v3

    .line 545
    :cond_18
    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 546
    const/high16 v3, 0x3e800000    # 0.25f

    add-float/2addr v0, v3

    .line 549
    :cond_23
    return v0
.end method

.method public getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;
    .registers 8
    .param p1, "usbClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 307
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_59

    .line 308
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v3, :cond_2f

    .line 309
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 310
    .local v3, "intrDesc":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v4

    if-ne v4, p1, :cond_2e

    .line 311
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v3    # "intrDesc":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    :cond_2e
    goto :goto_59

    .line 314
    :cond_2f
    const-string v3, "UsbDescriptorParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized Interface l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v2    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_59
    :goto_59
    goto :goto_b

    .line 319
    :cond_5a
    return-object v0
.end method

.method public getOutputHeadsetProbability()F
    .registers 9

    .line 566
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 567
    const/4 v0, 0x0

    return v0

    .line 570
    :cond_8
    const/4 v0, 0x0

    .line 574
    .local v0, "probability":F
    const/4 v1, 0x0

    .line 575
    .local v1, "hasSpeaker":Z
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 576
    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v2

    .line 578
    .local v2, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 579
    .local v4, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v5, :cond_43

    .line 580
    move-object v5, v4

    check-cast v5, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 581
    .local v5, "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    const/16 v7, 0x301

    if-eq v6, v7, :cond_41

    .line 582
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    const/16 v7, 0x302

    if-eq v6, v7, :cond_41

    .line 584
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    const/16 v7, 0x402

    if-ne v6, v7, :cond_40

    goto :goto_41

    .line 588
    .end local v5    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_40
    goto :goto_6d

    .line 585
    .restart local v5    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_41
    :goto_41
    const/4 v1, 0x1

    .line 586
    goto :goto_6e

    .line 589
    .end local v5    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_43
    const-string v5, "UsbDescriptorParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Undefined Audio Output terminal l: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " t:0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 589
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .end local v4    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_6d
    goto :goto_14

    .line 594
    :cond_6e
    :goto_6e
    if-eqz v1, :cond_73

    .line 595
    const/high16 v3, 0x3f400000    # 0.75f

    add-float/2addr v0, v3

    .line 598
    :cond_73
    if-eqz v1, :cond_7e

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 599
    const/high16 v3, 0x3e800000    # 0.25f

    add-float/2addr v0, v3

    .line 602
    :cond_7e
    return v0
.end method

.method public getParsingSpec()I
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public getRawDescriptors()[B
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors_native(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getUsbSpec()I
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v0, :cond_b

    .line 79
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    return v0

    .line 81
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public hasAudioInterface()Z
    .registers 4

    .line 481
    nop

    .line 482
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 483
    .local v1, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v0, v2

    return v0
.end method

.method public hasHIDInterface()Z
    .registers 3

    .line 490
    nop

    .line 491
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 492
    .local v0, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public hasInput()Z
    .registers 9

    .line 355
    nop

    .line 356
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v0

    .line 358
    .local v0, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    const/4 v1, 0x0

    .line 359
    .local v1, "hasInput":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 360
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_30

    .line 361
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 363
    .local v4, "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    .line 367
    .local v5, "type":I
    and-int/lit16 v6, v5, -0x100

    .line 368
    .local v6, "terminalCategory":I
    const/16 v7, 0x100

    if-eq v6, v7, :cond_2f

    const/16 v7, 0x300

    if-eq v6, v7, :cond_2f

    .line 371
    const/4 v1, 0x1

    .line 372
    goto :goto_5b

    .line 374
    .end local v4    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    .end local v5    # "type":I
    .end local v6    # "terminalCategory":I
    :cond_2f
    goto :goto_5a

    .line 375
    :cond_30
    const-string v4, "UsbDescriptorParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Input terminal l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 375
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_5a
    goto :goto_c

    .line 383
    :cond_5b
    :goto_5b
    return v1
.end method

.method public hasMIDIInterface()Z
    .registers 8

    .line 508
    nop

    .line 509
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 510
    .local v1, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 512
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_26

    .line 513
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 514
    .local v4, "interfaceDescr":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_25

    .line 515
    return v0

    .line 517
    .end local v4    # "interfaceDescr":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    :cond_25
    goto :goto_50

    .line 518
    :cond_26
    const-string v4, "UsbDescriptorParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Class Interface l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 518
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_50
    goto :goto_a

    .line 522
    :cond_51
    const/4 v0, 0x0

    return v0
.end method

.method public hasMic()Z
    .registers 8

    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, "hasMic":Z
    nop

    .line 430
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v1

    .line 432
    .local v1, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 433
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_43

    .line 434
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 435
    .local v4, "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x201

    if-eq v5, v6, :cond_41

    .line 436
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x402

    if-eq v5, v6, :cond_41

    .line 437
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x400

    if-eq v5, v6, :cond_41

    .line 438
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x603

    if-ne v5, v6, :cond_40

    goto :goto_41

    .line 442
    .end local v4    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_40
    goto :goto_6d

    .line 439
    .restart local v4    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_41
    :goto_41
    const/4 v0, 0x1

    .line 440
    goto :goto_6e

    .line 443
    .end local v4    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_43
    const-string v4, "UsbDescriptorParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Input terminal l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 443
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_6d
    goto :goto_c

    .line 447
    :cond_6e
    :goto_6e
    return v0
.end method

.method public hasOutput()Z
    .registers 9

    .line 393
    nop

    .line 394
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v0

    .line 396
    .local v0, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    const/4 v1, 0x0

    .line 397
    .local v1, "hasOutput":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 398
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_30

    .line 399
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 401
    .local v4, "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    .line 405
    .local v5, "type":I
    and-int/lit16 v6, v5, -0x100

    .line 406
    .local v6, "terminalCategory":I
    const/16 v7, 0x100

    if-eq v6, v7, :cond_2f

    const/16 v7, 0x200

    if-eq v6, v7, :cond_2f

    .line 409
    const/4 v1, 0x1

    .line 410
    goto :goto_5b

    .line 412
    .end local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    .end local v5    # "type":I
    .end local v6    # "terminalCategory":I
    :cond_2f
    goto :goto_5a

    .line 413
    :cond_30
    const-string v4, "UsbDescriptorParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Input terminal l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 413
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_5a
    goto :goto_c

    .line 420
    :cond_5b
    :goto_5b
    return v1
.end method

.method public hasSpeaker()Z
    .registers 8

    .line 454
    const/4 v0, 0x0

    .line 456
    .local v0, "hasSpeaker":Z
    nop

    .line 457
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v1

    .line 459
    .local v1, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 460
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_3b

    .line 461
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 462
    .local v4, "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x301

    if-eq v5, v6, :cond_39

    .line 463
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x302

    if-eq v5, v6, :cond_39

    .line 464
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x402

    if-ne v5, v6, :cond_38

    goto :goto_39

    .line 468
    .end local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_38
    goto :goto_65

    .line 465
    .restart local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_39
    :goto_39
    const/4 v0, 0x1

    .line 466
    goto :goto_66

    .line 469
    .end local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_3b
    const-string v4, "UsbDescriptorParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Output terminal l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 469
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_65
    goto :goto_c

    .line 474
    :cond_66
    :goto_66
    return v0
.end method

.method public hasStorageInterface()Z
    .registers 3

    .line 499
    nop

    .line 500
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 501
    .local v0, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public isInputHeadset()Z
    .registers 3

    .line 559
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInputHeadsetProbability()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOutputHeadset()Z
    .registers 3

    .line 612
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getOutputHeadsetProbability()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public parseDescriptors([B)V
    .registers 7
    .param p1, "descriptors"    # [B

    .line 217
    new-instance v0, Lcom/android/server/usb/descriptors/ByteStream;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    .line 218
    .local v0, "stream":Lcom/android/server/usb/descriptors/ByteStream;
    :goto_5
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v1

    if-lez v1, :cond_3e

    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :try_start_c
    invoke-direct {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_12

    move-object v1, v2

    .line 224
    goto :goto_1a

    .line 222
    :catch_12
    move-exception v2

    .line 223
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "UsbDescriptorParser"

    const-string v4, "Exception allocating USB descriptor."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1a
    if-eqz v1, :cond_3d

    .line 229
    :try_start_1c
    invoke-virtual {v1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 232
    invoke-virtual {v1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_2a
    .catchall {:try_start_1c .. :try_end_22} :catchall_28

    .line 239
    :goto_22
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    goto :goto_3d

    .line 239
    :catchall_28
    move-exception v2

    goto :goto_37

    .line 233
    :catch_2a
    move-exception v2

    .line 234
    .restart local v2    # "ex":Ljava/lang/Exception;
    :try_start_2b
    const-string v3, "UsbDescriptorParser"

    const-string v4, "Exception parsing USB descriptors."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->setStatus(I)V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_28

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_22

    .line 239
    :goto_37
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    throw v2

    .line 242
    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_3d
    :goto_3d
    goto :goto_5

    .line 246
    :cond_3e
    return-void
.end method

.method public setACInterfaceSpec(I)V
    .registers 2
    .param p1, "spec"    # I

    .line 86
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 87
    return-void
.end method

.method public toAndroidUsbDevice()Landroid/hardware/usb/UsbDevice;
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-nez v0, :cond_e

    .line 276
    const-string v0, "UsbDescriptorParser"

    const-string/jumbo v1, "toAndroidUsbDevice() ERROR - No Device Descriptor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_e
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-virtual {v0, p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    .line 281
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_1e

    .line 282
    const-string v1, "UsbDescriptorParser"

    const-string/jumbo v2, "toAndroidUsbDevice() ERROR Creating Device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1e
    return-object v0
.end method
