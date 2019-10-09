.class Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;
.super Ljava/lang/Object;
.source "UsbPortManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager$RawPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/usb/UsbPortManager$RawPortInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .registers 17
    .param p1, "in"    # Landroid/os/Parcel;

    .line 852
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 853
    .local v9, "id":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 854
    .local v10, "supportedModes":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 855
    .local v11, "currentMode":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v1

    .line 856
    .local v4, "canChangeMode":Z
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 857
    .local v12, "currentPowerRole":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_23

    move v6, v2

    goto :goto_24

    :cond_23
    move v6, v1

    .line 858
    .local v6, "canChangePowerRole":Z
    :goto_24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 859
    .local v13, "currentDataRole":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_30

    move v8, v2

    goto :goto_31

    :cond_30
    move v8, v1

    .line 860
    .local v8, "canChangeDataRole":Z
    :goto_31
    new-instance v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    move-object v0, v14

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v5, v12

    move v7, v13

    invoke-direct/range {v0 .. v8}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIZIZIZ)V

    return-object v14
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 849
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .registers 3
    .param p1, "size"    # I

    .line 867
    new-array v0, p1, [Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 849
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;->newArray(I)[Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    move-result-object p1

    return-object p1
.end method
