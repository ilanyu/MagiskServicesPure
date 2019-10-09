.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    .line 1805
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "fqName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "preexisting"    # Z

    .line 1808
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usb gadget hal service started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->access$600(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1811
    :try_start_27
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-static {}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService()Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object v2

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->access$702(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;Landroid/hardware/usb/gadget/V1_0/IUsbGadget;)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 1812
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->access$700(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object v1

    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-direct {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    const-wide/16 v3, 0x7d0

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1814
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    iget-boolean v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    if-nez v1, :cond_70

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    iget-boolean v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    if-nez v1, :cond_70

    .line 1815
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;->this$0:Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    iget-wide v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V
    :try_end_58
    .catch Ljava/util/NoSuchElementException; {:try_start_27 .. :try_end_58} :catch_66
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_58} :catch_5b
    .catchall {:try_start_27 .. :try_end_58} :catchall_59

    goto :goto_70

    .line 1822
    :catchall_59
    move-exception v1

    goto :goto_73

    .line 1819
    :catch_5b
    move-exception v1

    .line 1820
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5c
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Usb Gadget hal not responding"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_71

    .line 1817
    :catch_66
    move-exception v1

    .line 1818
    .local v1, "e":Ljava/util/NoSuchElementException;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Usb gadget hal not found"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1821
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_70
    :goto_70
    nop

    .line 1822
    :goto_71
    monitor-exit v0

    .line 1823
    return-void

    .line 1822
    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_5c .. :try_end_74} :catchall_59

    throw v1
.end method
