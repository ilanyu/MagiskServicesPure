.class final Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceDiscoveryAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/DeviceDiscoveryAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceInfo"
.end annotation


# instance fields
.field private mDeviceType:I

.field private mDisplayName:Ljava/lang/String;

.field private final mLogicalAddress:I

.field private mPhysicalAddress:I

.field private mPortId:I

.field private mVendorId:I


# direct methods
.method private constructor <init>(I)V
    .registers 4
    .param p1, "logicalAddress"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const v0, 0xffff

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPhysicalAddress:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPortId:I

    .line 74
    const v1, 0xffffff

    iput v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mVendorId:I

    .line 75
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDisplayName:Ljava/lang/String;

    .line 76
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDeviceType:I

    .line 79
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    .line 80
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/hdmi/DeviceDiscoveryAction$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$1;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;-><init>(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 69
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->toHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 69
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 69
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPhysicalAddress:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPhysicalAddress:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPortId:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 69
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDeviceType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDeviceType:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mVendorId:I

    return p1
.end method

.method private toHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 9

    .line 83
    new-instance v7, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    iget v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPhysicalAddress:I

    iget v3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPortId:I

    iget v4, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDeviceType:I

    iget v5, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mVendorId:I

    iget-object v6, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDisplayName:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    return-object v7
.end method
