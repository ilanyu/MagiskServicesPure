.class Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConneciton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method private constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .registers 2

    .line 618
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;Lcom/android/server/print/RemotePrintService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p2, "x1"    # Lcom/android/server/print/RemotePrintService$1;

    .line 618
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 621
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$1100(Lcom/android/server/print/RemotePrintService;)Z

    move-result v0

    if-nez v0, :cond_fe

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mBinding:Z
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$1200(Lcom/android/server/print/RemotePrintService;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_fe

    .line 625
    :cond_12
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/print/RemotePrintService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->access$1202(Lcom/android/server/print/RemotePrintService;Z)Z

    .line 626
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Landroid/printservice/IPrintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;

    move-result-object v2

    # setter for: Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;
    invoke-static {v0, v2}, Lcom/android/server/print/RemotePrintService;->access$1502(Lcom/android/server/print/RemotePrintService;Landroid/printservice/IPrintService;)Landroid/printservice/IPrintService;

    .line 628
    :try_start_21
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_f7

    .line 632
    nop

    .line 634
    :try_start_27
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$1500(Lcom/android/server/print/RemotePrintService;)Landroid/printservice/IPrintService;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$1700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_36} :catch_da

    .line 639
    nop

    .line 641
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mServiceDied:Z
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$1800(Lcom/android/server/print/RemotePrintService;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$1900(Lcom/android/server/print/RemotePrintService;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 642
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$400(Lcom/android/server/print/RemotePrintService;)V

    .line 645
    :cond_4c
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mServiceDied:Z
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$1800(Lcom/android/server/print/RemotePrintService;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2000(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 646
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2000(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V
    invoke-static {v0, v2}, Lcom/android/server/print/RemotePrintService;->access$600(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    .line 648
    :cond_67
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2100(Lcom/android/server/print/RemotePrintService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 650
    :try_start_6e
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mServiceDied:Z
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$1800(Lcom/android/server/print/RemotePrintService;)Z

    move-result v2

    if-eqz v2, :cond_9f

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2200(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9f

    .line 651
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2200(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 652
    .local v2, "trackedPrinterCount":I
    move v3, v1

    .local v3, "i":I
    :goto_89
    if-ge v3, v2, :cond_9f

    .line 653
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/print/RemotePrintService;->access$2200(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrinterId;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V
    invoke-static {v4, v5}, Lcom/android/server/print/RemotePrintService;->access$900(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    .line 652
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 656
    .end local v2    # "trackedPrinterCount":I
    .end local v3    # "i":I
    :cond_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_6e .. :try_end_a0} :catchall_d7

    .line 658
    :goto_a0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2300(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 659
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2300(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 660
    .local v0, "pendingCommand":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 661
    .end local v0    # "pendingCommand":Ljava/lang/Runnable;
    goto :goto_a0

    .line 665
    :cond_bc
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$1900(Lcom/android/server/print/RemotePrintService;)Z

    move-result v0

    if-nez v0, :cond_d1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2400(Lcom/android/server/print/RemotePrintService;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 666
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->ensureUnbound()V
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2500(Lcom/android/server/print/RemotePrintService;)V

    .line 668
    :cond_d1
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # setter for: Lcom/android/server/print/RemotePrintService;->mServiceDied:Z
    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->access$1802(Lcom/android/server/print/RemotePrintService;Z)Z

    .line 669
    return-void

    .line 656
    :catchall_d7
    move-exception v1

    :try_start_d8
    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v1

    .line 635
    :catch_da
    move-exception v0

    .line 636
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting client for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleBinderDied()V
    invoke-static {v1}, Lcom/android/server/print/RemotePrintService;->access$1600(Lcom/android/server/print/RemotePrintService;)V

    .line 638
    return-void

    .line 629
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_f7
    move-exception v0

    .line 630
    .restart local v0    # "re":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleBinderDied()V
    invoke-static {v1}, Lcom/android/server/print/RemotePrintService;->access$1600(Lcom/android/server/print/RemotePrintService;)V

    .line 631
    return-void

    .line 622
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_fe
    :goto_fe
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$1400(Lcom/android/server/print/RemotePrintService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/server/print/RemotePrintService;->access$1300(Lcom/android/server/print/RemotePrintService;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 623
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 673
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/print/RemotePrintService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->access$1202(Lcom/android/server/print/RemotePrintService;Z)Z

    .line 674
    return-void
.end method
