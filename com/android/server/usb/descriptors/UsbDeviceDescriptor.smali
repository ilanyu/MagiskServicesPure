.class public final Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbDeviceDescriptor.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbDeviceDescriptor"

.field public static final USBSPEC_1_0:I = 0x100

.field public static final USBSPEC_1_1:I = 0x110

.field public static final USBSPEC_2_0:I = 0x200


# instance fields
.field private mConfigDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbConfigDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mDevClass:I

.field private mDevSubClass:I

.field private mDeviceRelease:I

.field private mMfgIndex:B

.field private mNumConfigs:B

.field private mPacketSize:B

.field private mProductID:I

.field private mProductIndex:B

.field private mProtocol:I

.field private mSerialIndex:B

.field private mSpec:I

.field private mVendorID:I


# direct methods
.method constructor <init>(IB)V
    .registers 4
    .param p1, "length"    # I
    .param p2, "type"    # B

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mHierarchyLevel:I

    .line 60
    return-void
.end method


# virtual methods
.method addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V
    .registers 3
    .param p1, "config"    # Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 132
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public getDevClass()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:I

    return v0
.end method

.method public getDevSubClass()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:I

    return v0
.end method

.method public getDeviceRelease()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    return v0
.end method

.method public getDeviceReleaseString()Ljava/lang/String;
    .registers 9

    .line 96
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    and-int/lit8 v0, v0, 0xf

    .line 97
    .local v0, "hundredths":I
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    .line 98
    .local v1, "tenths":I
    iget v2, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    and-int/lit16 v2, v2, 0xf00

    shr-int/lit8 v2, v2, 0x8

    .line 99
    .local v2, "ones":I
    iget v3, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    const v4, 0xf000

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0xc

    .line 100
    .local v3, "tens":I
    const-string v4, "%d.%d%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getMfgIndex()B
    .registers 2

    .line 104
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    return v0
.end method

.method public getMfgString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;
    .registers 3
    .param p1, "p"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 108
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumConfigs()B
    .registers 2

    .line 128
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mNumConfigs:B

    return v0
.end method

.method public getPacketSize()B
    .registers 2

    .line 79
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mPacketSize:B

    return v0
.end method

.method public getProductID()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    return v0
.end method

.method public getProductIndex()B
    .registers 2

    .line 112
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    return v0
.end method

.method public getProductString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;
    .registers 3
    .param p1, "p"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 116
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProtocol:I

    return v0
.end method

.method public getSerialIndex()B
    .registers 2

    .line 120
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialIndex:B

    return v0
.end method

.method public getSerialString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;
    .registers 3
    .param p1, "p"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 124
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpec()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSpec:I

    return v0
.end method

.method public getVendorID()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 3
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 171
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSpec:I

    .line 172
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:I

    .line 173
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:I

    .line 174
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProtocol:I

    .line 175
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mPacketSize:B

    .line 176
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    .line 177
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    .line 178
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    .line 179
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    .line 180
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    .line 181
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialIndex:B

    .line 182
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mNumConfigs:B

    .line 184
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 14
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 189
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 191
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    .line 194
    .local v0, "spec":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getBCDString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDevClass()I

    move-result v1

    .line 197
    .local v1, "devClass":I
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getClassName(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "classStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDevSubClass()I

    move-result v3

    .line 199
    .local v3, "devSubClass":I
    invoke-static {v3}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getClassName(I)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "subClasStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Subclass"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Vendor ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getVendorID()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Product ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductID()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Product Release: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceRelease()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getBCDString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getParser()Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    move-result-object v5

    .line 207
    .local v5, "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getMfgIndex()B

    move-result v6

    .line 208
    .local v6, "mfgIndex":B
    invoke-virtual {v5, v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, "manufacturer":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductIndex()B

    move-result v8

    .line 210
    .local v8, "productIndex":B
    invoke-virtual {v5, v8}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v9

    .line 212
    .local v9, "product":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Manufacturer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Product "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 215
    return-void
.end method

.method public toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbDevice;
    .registers 19
    .param p1, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    move-object/from16 v0, p0

    .line 143
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getMfgString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "mfgName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v13

    .line 149
    .local v13, "prodName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceReleaseString()Ljava/lang/String;

    move-result-object v14

    .line 150
    .local v14, "versionString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSerialString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v15

    .line 155
    .local v15, "serialStr":Ljava/lang/String;
    new-instance v16, Landroid/hardware/usb/UsbDevice;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDeviceAddr()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    iget v4, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    iget v5, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:I

    iget v6, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:I

    iget v7, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProtocol:I

    move-object/from16 v1, v16

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    invoke-direct/range {v1 .. v11}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v1, "device":Landroid/hardware/usb/UsbDevice;
    iget-object v2, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/usb/UsbConfiguration;

    .line 160
    .local v2, "configs":[Landroid/hardware/usb/UsbConfiguration;
    const-string v3, "UsbDeviceDescriptor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " configs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_50
    iget-object v4, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6b

    .line 162
    iget-object v4, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v4

    aput-object v4, v2, v3

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 164
    .end local v3    # "index":I
    :cond_6b
    move-object/from16 v5, p1

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->setConfigurations([Landroid/os/Parcelable;)V

    .line 166
    return-object v1
.end method
