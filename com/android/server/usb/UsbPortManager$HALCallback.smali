.class Lcom/android/server/usb/UsbPortManager$HALCallback;
.super Landroid/hardware/usb/V1_1/IUsbCallback$Stub;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HALCallback"
.end annotation


# instance fields
.field public portManager:Lcom/android/server/usb/UsbPortManager;

.field public pw:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method constructor <init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;)V
    .registers 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "portManager"    # Lcom/android/server/usb/UsbPortManager;

    .line 422
    invoke-direct {p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 424
    iput-object p2, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    .line 425
    return-void
.end method


# virtual methods
.method public notifyPortStatusChange(Ljava/util/ArrayList;I)V
    .registers 16
    .param p2, "retval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_0/PortStatus;",
            ">;I)V"
        }
    .end annotation

    .line 428
    .local p1, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_0/PortStatus;>;"
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    # getter for: Lcom/android/server/usb/UsbPortManager;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->access$000(Lcom/android/server/usb/UsbPortManager;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 429
    return-void

    .line 432
    :cond_9
    if-eqz p2, :cond_15

    .line 433
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "port status enquiry failed"

    # invokes: Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 434
    return-void

    .line 437
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v0, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/V1_0/PortStatus;

    .line 440
    .local v2, "current":Landroid/hardware/usb/V1_0/PortStatus;
    new-instance v12, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    iget-object v4, v2, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v5, v2, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    iget v6, v2, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    iget-boolean v7, v2, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget v8, v2, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-boolean v9, v2, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget v10, v2, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-boolean v11, v2, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIZIZIZ)V

    .line 445
    .local v3, "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClientCallback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 447
    .end local v2    # "current":Landroid/hardware/usb/V1_0/PortStatus;
    .end local v3    # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    goto :goto_1e

    .line 449
    :cond_5d
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    # getter for: Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 450
    .local v1, "message":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 451
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "port_info"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 452
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 453
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 454
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    # getter for: Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 455
    return-void
.end method

.method public notifyPortStatusChange_1_1(Ljava/util/ArrayList;I)V
    .registers 16
    .param p2, "retval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_1/PortStatus_1_1;",
            ">;I)V"
        }
    .end annotation

    .line 460
    .local p1, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_1/PortStatus_1_1;>;"
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    # getter for: Lcom/android/server/usb/UsbPortManager;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->access$000(Lcom/android/server/usb/UsbPortManager;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 461
    return-void

    .line 464
    :cond_9
    if-eqz p2, :cond_15

    .line 465
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "port status enquiry failed"

    # invokes: Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 466
    return-void

    .line 469
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v0, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 472
    .local v2, "current":Landroid/hardware/usb/V1_1/PortStatus_1_1;
    new-instance v12, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    iget-object v3, v2, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v4, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v5, v2, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    iget v6, v2, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-object v3, v2, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v7, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget-object v3, v2, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v8, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-object v3, v2, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v9, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget-object v3, v2, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v10, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-object v3, v2, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v11, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIZIZIZ)V

    .line 477
    .local v3, "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClientCallback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v7, v7, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 479
    .end local v2    # "current":Landroid/hardware/usb/V1_1/PortStatus_1_1;
    .end local v3    # "temp":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    goto :goto_1e

    .line 481
    :cond_6b
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    # getter for: Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 482
    .local v1, "message":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 483
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "port_info"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 484
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 485
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 486
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    # getter for: Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 487
    return-void
.end method

.method public notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V
    .registers 8
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "role"    # Landroid/hardware/usb/V1_0/PortRole;
    .param p3, "retval"    # I

    .line 490
    if-nez p3, :cond_1a

    .line 491
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " role switch successful"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_31

    .line 493
    :cond_1a
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " role switch failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 495
    :goto_31
    return-void
.end method
