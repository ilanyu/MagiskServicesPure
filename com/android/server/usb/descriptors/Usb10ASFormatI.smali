.class public final Lcom/android/server/usb/descriptors/Usb10ASFormatI;
.super Lcom/android/server/usb/descriptors/UsbASFormat;
.source "Usb10ASFormatI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb10ASFormatI"


# instance fields
.field private mBitResolution:B

.field private mNumChannels:B

.field private mSampleFreqType:B

.field private mSampleRates:[I

.field private mSubframeSize:B


# direct methods
.method public constructor <init>(IBBBI)V
    .registers 6
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B
    .param p4, "formatType"    # B
    .param p5, "subclass"    # I

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    .line 38
    return-void
.end method


# virtual methods
.method public getBitDepths()[I
    .registers 4

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mBitResolution:B

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 64
    .local v0, "depths":[I
    return-object v0
.end method

.method public getBitResolution()B
    .registers 2

    .line 49
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mBitResolution:B

    return v0
.end method

.method public getChannelCounts()[I
    .registers 4

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mNumChannels:B

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 70
    .local v0, "counts":[I
    return-object v0
.end method

.method public getNumChannels()B
    .registers 2

    .line 41
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mNumChannels:B

    return v0
.end method

.method public getSampleFreqType()B
    .registers 2

    .line 53
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    return v0
.end method

.method public getSampleRates()[I
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    return-object v0
.end method

.method public getSubframeSize()B
    .registers 2

    .line 45
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSubframeSize:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 5
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 75
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mNumChannels:B

    .line 76
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSubframeSize:B

    .line 77
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mBitResolution:B

    .line 78
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    .line 79
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    const/4 v1, 0x0

    if-nez v0, :cond_34

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    .line 81
    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbTriple()I

    move-result v2

    aput v2, v0, v1

    .line 82
    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbTriple()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    goto :goto_4b

    .line 84
    :cond_34
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    .line 85
    nop

    .local v1, "index":I
    :goto_3b
    move v0, v1

    .end local v1    # "index":I
    .local v0, "index":I
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    if-ge v0, v1, :cond_4b

    .line 86
    iget-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbTriple()I

    move-result v2

    aput v2, v1, v0

    .line 85
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_3b

    .line 90
    .end local v1    # "index":I
    :cond_4b
    :goto_4b
    iget v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 7
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 95
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbASFormat;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 97
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getNumChannels()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Channels."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subframe Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getSubframeSize()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bit Resolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getBitResolution()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getSampleFreqType()B

    move-result v0

    .line 102
    .local v0, "sampleFreqType":B
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getSampleRates()[I

    move-result-object v1

    .line 103
    .local v1, "sampleRates":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sample Freq Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 105
    const/4 v2, 0x0

    if-nez v0, :cond_a5

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "min: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    goto :goto_c1

    .line 109
    :cond_a5
    nop

    .line 109
    .local v2, "index":I
    :goto_a6
    if-ge v2, v0, :cond_c1

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    .line 113
    .end local v2    # "index":I
    :cond_c1
    :goto_c1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 114
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 115
    return-void
.end method
