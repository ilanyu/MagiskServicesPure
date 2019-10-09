.class final Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
.super Landroid/printservice/IPrintServiceClient$Stub;
.source "RemotePrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemotePrintServiceClient"
.end annotation


# instance fields
.field private final mWeakService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .line 680
    invoke-direct {p0}, Landroid/printservice/IPrintServiceClient$Stub;-><init>()V

    .line 681
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    .line 682
    return-void
.end method

.method private throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V
    .registers 6
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .param p2, "printerId"    # Landroid/print/PrinterId;

    .line 847
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 850
    return-void

    .line 848
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid printer id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfPrinterIdsForPrinterInfoTampered(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 6
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 830
    .local p2, "printerInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 831
    .local v0, "printerInfoCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_17

    .line 832
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterInfo;

    invoke-virtual {v2}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v2

    .line 833
    .local v2, "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p1, v2}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V

    .line 831
    .end local v2    # "printerId":Landroid/print/PrinterId;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 835
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private throwIfPrinterIdsTampered(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 6
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 839
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 840
    .local v0, "printerIdCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 841
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 842
    .local v2, "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p1, v2}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V

    .line 840
    .end local v2    # "printerId":Landroid/print/PrinterId;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 844
    .end local v1    # "i":I
    :cond_13
    return-void
.end method


# virtual methods
.method public getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    .registers 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .line 701
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 702
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_20

    .line 703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 705
    .local v1, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, p1, v4}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v3
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1b

    .line 708
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 705
    return-object v3

    .line 708
    :catchall_1b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 711
    .end local v1    # "identity":J
    :cond_20
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPrintJobInfos()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 687
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_25

    .line 688
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 690
    .local v1, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    # getter for: Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, -0x4

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_20

    .line 693
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 690
    return-object v3

    .line 693
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 696
    .end local v1    # "identity":J
    :cond_25
    const/4 v1, 0x0

    return-object v1
.end method

.method public onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .registers 7
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 856
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_1e

    .line 857
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 859
    .local v1, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 861
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 862
    goto :goto_1e

    .line 861
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 864
    .end local v1    # "identity":J
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    .registers 7
    .param p1, "printers"    # Landroid/content/pm/ParceledListSlice;

    .line 799
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 800
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_29

    .line 801
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 802
    .local v1, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    # getter for: Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdsForPrinterInfoTampered(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 805
    .local v2, "identity":J
    :try_start_19
    # getter for: Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onPrintersAdded(Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 807
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 808
    goto :goto_29

    .line 807
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 810
    .end local v1    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v2    # "identity":J
    :cond_29
    :goto_29
    return-void
.end method

.method public onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    .registers 7
    .param p1, "printerIds"    # Landroid/content/pm/ParceledListSlice;

    .line 815
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 816
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_29

    .line 817
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 818
    .local v1, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    # getter for: Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdsTampered(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 819
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 821
    .local v2, "identity":J
    :try_start_19
    # getter for: Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onPrintersRemoved(Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 823
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 824
    goto :goto_29

    .line 823
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 826
    .end local v1    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v2    # "identity":J
    :cond_29
    :goto_29
    return-void
.end method

.method public setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .registers 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "state"    # I
    .param p3, "error"    # Ljava/lang/String;

    .line 716
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 717
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_1f

    .line 718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 720
    .local v1, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    move-result v3
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1a

    .line 722
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 720
    return v3

    .line 722
    :catchall_1a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 725
    .end local v1    # "identity":J
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .registers 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "tag"    # Ljava/lang/String;

    .line 730
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 731
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_1f

    .line 732
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 734
    .local v1, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z

    move-result v3
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1a

    .line 736
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 734
    return v3

    .line 736
    :catchall_1a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 739
    .end local v1    # "identity":J
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public setProgress(Landroid/print/PrintJobId;F)V
    .registers 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "progress"    # F

    .line 758
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 759
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_1e

    .line 760
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 762
    .local v1, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 764
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 765
    goto :goto_1e

    .line 764
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 767
    .end local v1    # "identity":J
    :cond_1e
    :goto_1e
    return-void
.end method

.method public setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # Ljava/lang/CharSequence;

    .line 771
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 772
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_1e

    .line 773
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 775
    .local v1, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 777
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 778
    goto :goto_1e

    .line 777
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 780
    .end local v1    # "identity":J
    :cond_1e
    :goto_1e
    return-void
.end method

.method public setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    .registers 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # I
    .param p3, "appPackageName"    # Ljava/lang/CharSequence;

    .line 785
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 786
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_1e

    .line 787
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 789
    .local v1, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler;->setStatus(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 791
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 792
    goto :goto_1e

    .line 791
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 794
    .end local v1    # "identity":J
    :cond_1e
    :goto_1e
    return-void
.end method

.method public writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .registers 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;

    .line 744
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 745
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_1e

    .line 746
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 748
    .local v1, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 750
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 751
    goto :goto_1e

    .line 750
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 753
    .end local v1    # "identity":J
    :cond_1e
    :goto_1e
    return-void
.end method
