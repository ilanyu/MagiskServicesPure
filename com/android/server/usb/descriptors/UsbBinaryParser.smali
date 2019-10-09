.class public final Lcom/android/server/usb/descriptors/UsbBinaryParser;
.super Ljava/lang/Object;
.source "UsbBinaryParser.java"


# static fields
.field private static final LOGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbBinaryParser"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dumpDescriptor(Lcom/android/server/usb/descriptors/ByteStream;IBLjava/lang/StringBuilder;)V
    .registers 8
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "builder"    # Ljava/lang/StringBuilder;

    .line 45
    const-string v0, "<p>"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b> l: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " t:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {p3}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getDescriptorName(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</b><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/4 v0, 0x2

    .local v0, "index":I
    :goto_37
    if-ge v0, p2, :cond_5f

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 52
    .end local v0    # "index":I
    :cond_5f
    const-string v0, "</p>"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    return-void
.end method


# virtual methods
.method public parseDescriptors(Landroid/hardware/usb/UsbDeviceConnection;[BLjava/lang/StringBuilder;)V
    .registers 7
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;
    .param p2, "descriptors"    # [B
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .line 63
    const-string v0, "<tt>"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    new-instance v0, Lcom/android/server/usb/descriptors/ByteStream;

    invoke-direct {v0, p2}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    .line 65
    .local v0, "stream":Lcom/android/server/usb/descriptors/ByteStream;
    :goto_a
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v1

    if-lez v1, :cond_1e

    .line 66
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 67
    .local v1, "length":I
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    .line 68
    .local v2, "type":B
    invoke-direct {p0, v0, v1, v2, p3}, Lcom/android/server/usb/descriptors/UsbBinaryParser;->dumpDescriptor(Lcom/android/server/usb/descriptors/ByteStream;IBLjava/lang/StringBuilder;)V

    .line 69
    .end local v1    # "length":I
    .end local v2    # "type":B
    goto :goto_a

    .line 70
    :cond_1e
    const-string v1, "</tt>"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    return-void
.end method
