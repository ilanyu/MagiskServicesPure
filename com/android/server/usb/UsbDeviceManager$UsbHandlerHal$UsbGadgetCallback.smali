.class Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;
.super Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbGadgetCallback"
.end annotation


# instance fields
.field mChargingFunctions:Z

.field mFunctions:J

.field mRequest:I

.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V
    .registers 2

    .line 1870
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;-><init>()V

    .line 1871
    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;IJZ)V
    .registers 6
    .param p2, "request"    # I
    .param p3, "functions"    # J
    .param p5, "chargingFunctions"    # Z

    .line 1874
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;-><init>()V

    .line 1875
    iput p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mRequest:I

    .line 1876
    iput-wide p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mFunctions:J

    .line 1877
    iput-boolean p5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mChargingFunctions:Z

    .line 1878
    return-void
.end method


# virtual methods
.method public getCurrentUsbFunctionsCb(JI)V
    .registers 8
    .param p1, "functions"    # J
    .param p3, "status"    # I

    .line 1904
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    if-ne p3, v2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    const/16 v3, 0x10

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendMessage(ILjava/lang/Object;Z)V

    .line 1906
    return-void
.end method

.method public setCurrentUsbFunctionsCb(JI)V
    .registers 8
    .param p1, "functions"    # J
    .param p3, "status"    # I

    .line 1886
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->access$800(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)I

    move-result v0

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mRequest:I

    if-ne v0, v1, :cond_60

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mFunctions:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_1b

    goto :goto_60

    .line 1891
    :cond_1b
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 1892
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCurrentFunction request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    if-nez p3, :cond_4b

    .line 1894
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    goto :goto_5f

    .line 1895
    :cond_4b
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->mChargingFunctions:Z

    if-nez v0, :cond_5f

    .line 1896
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setting default fuctions"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendEmptyMessage(I)Z

    .line 1899
    :cond_5f
    :goto_5f
    return-void

    .line 1888
    :cond_60
    :goto_60
    return-void
.end method
