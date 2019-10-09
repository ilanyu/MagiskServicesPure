.class final Lcom/android/server/usb/UsbPortManager$RawPortInfo;
.super Ljava/lang/Object;
.source "UsbPortManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RawPortInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/usb/UsbPortManager$RawPortInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canChangeDataRole:Z

.field public canChangeMode:Z

.field public canChangePowerRole:Z

.field public currentDataRole:I

.field public currentMode:I

.field public currentPowerRole:I

.field public final portId:Ljava/lang/String;

.field public final supportedModes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 848
    new-instance v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;

    invoke-direct {v0}, Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    .line 814
    iput p2, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    .line 815
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIZIZIZ)V
    .registers 9
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "currentMode"    # I
    .param p4, "canChangeMode"    # Z
    .param p5, "currentPowerRole"    # I
    .param p6, "canChangePowerRole"    # Z
    .param p7, "currentDataRole"    # I
    .param p8, "canChangeDataRole"    # Z

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    .line 822
    iput p2, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    .line 823
    iput p3, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    .line 824
    iput-boolean p4, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    .line 825
    iput p5, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    .line 826
    iput-boolean p6, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    .line 827
    iput p7, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    .line 828
    iput-boolean p8, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    .line 829
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 833
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 838
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 839
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 842
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 844
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 846
    return-void
.end method
