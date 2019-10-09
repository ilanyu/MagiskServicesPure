.class public final Lcom/android/server/usb/descriptors/UsbACSelectorUnit;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbACSelectorUnit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACSelectorUnit"


# instance fields
.field private mNameIndex:B

.field private mNumPins:B

.field private mSourceIDs:[B

.field private mUnitID:B


# direct methods
.method public constructor <init>(IBBI)V
    .registers 5
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B
    .param p4, "subClass"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 37
    return-void
.end method


# virtual methods
.method public getNameIndex()B
    .registers 2

    .line 52
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNameIndex:B

    return v0
.end method

.method public getNumPins()B
    .registers 2

    .line 44
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNumPins:B

    return v0
.end method

.method public getSourceIDs()[B
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mSourceIDs:[B

    return-object v0
.end method

.method public getUnitID()B
    .registers 2

    .line 40
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mUnitID:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 5
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 57
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mUnitID:B

    .line 58
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNumPins:B

    .line 59
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNumPins:B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mSourceIDs:[B

    .line 60
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_13
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNumPins:B

    if-ge v0, v1, :cond_22

    .line 61
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mSourceIDs:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 63
    .end local v0    # "index":I
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNameIndex:B

    .line 65
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mLength:I

    return v0
.end method
