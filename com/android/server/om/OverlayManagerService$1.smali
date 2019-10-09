.class Lcom/android/server/om/OverlayManagerService$1;
.super Landroid/content/om/IOverlayManager$Stub;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerService;

    .line 482
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/om/IOverlayManager$Stub;-><init>()V

    return-void
.end method

.method private enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 678
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_OVERLAY_PACKAGES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method private enforceDumpPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 689
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method private handleIncomingUser(ILjava/lang/String;)I
    .registers 10
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 666
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 666
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "argv"    # [Ljava/lang/String;

    .line 646
    const-string v0, "dump"

    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerService$1;->enforceDumpPermission(Ljava/lang/String;)V

    .line 648
    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_15

    const-string v0, "--verbose"

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    nop

    :cond_15
    move v0, v1

    .line 650
    .local v0, "verbose":Z
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 651
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onDump(Ljava/io/PrintWriter;)V

    .line 652
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->dump(Ljava/io/PrintWriter;Z)V

    .line 653
    monitor-exit v1

    .line 654
    return-void

    .line 653
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_31

    throw v2
.end method

.method public getAllOverlays(I)Ljava/util/Map;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    const-string v0, "getAllOverlays"

    invoke-direct {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    .line 487
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 488
    :try_start_d
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlaysForUser(I)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 489
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    const-string v0, "getOverlayInfo"

    invoke-direct {p0, p2, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 509
    if-nez p1, :cond_a

    .line 510
    const/4 v0, 0x0

    return-object v0

    .line 513
    :cond_a
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 514
    :try_start_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 515
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    const-string v0, "getOverlayInfosForTarget"

    invoke-direct {p0, p2, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 496
    if-nez p1, :cond_d

    .line 497
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 500
    :cond_d
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 501
    :try_start_14
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 502
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 639
    new-instance v0, Lcom/android/server/om/OverlayManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/om/OverlayManagerShellCommand;-><init>(Landroid/content/om/IOverlayManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/om/OverlayManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 641
    return-void
.end method

.method public setEnabled(Ljava/lang/String;ZI)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    const-string/jumbo v0, "setEnabled"

    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V

    .line 522
    const-string/jumbo v0, "setEnabled"

    invoke-direct {p0, p3, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p3

    .line 523
    if-nez p1, :cond_11

    .line 524
    const/4 v0, 0x0

    return v0

    .line 527
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 529
    .local v0, "ident":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_2e

    .line 530
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    .line 533
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 530
    return v3

    .line 531
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 533
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setEnabledExclusive(Ljava/lang/String;ZI)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    const-string/jumbo v0, "setEnabled"

    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V

    .line 541
    const-string/jumbo v0, "setEnabled"

    invoke-direct {p0, p3, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p3

    .line 542
    const/4 v0, 0x0

    if-eqz p1, :cond_35

    if-nez p2, :cond_13

    goto :goto_35

    .line 546
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 548
    .local v1, "ident":J
    :try_start_17
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_30

    .line 549
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v0, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v0

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2d

    .line 553
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    return v0

    .line 551
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 553
    :catchall_30
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 543
    .end local v1    # "ident":J
    :cond_35
    :goto_35
    return v0
.end method

.method public setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    const-string/jumbo v0, "setEnabled"

    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V

    .line 561
    const-string/jumbo v0, "setEnabled"

    invoke-direct {p0, p2, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 562
    if-nez p1, :cond_11

    .line 563
    const/4 v0, 0x0

    return v0

    .line 566
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 568
    .local v0, "ident":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_2f

    .line 569
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2c

    .line 573
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 569
    return v3

    .line 571
    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 573
    :catchall_2f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setHighestPriority(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    const-string/jumbo v0, "setHighestPriority"

    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V

    .line 600
    const-string/jumbo v0, "setHighestPriority"

    invoke-direct {p0, p2, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 601
    if-nez p1, :cond_11

    .line 602
    const/4 v0, 0x0

    return v0

    .line 605
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 607
    .local v0, "ident":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_2e

    .line 608
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    .line 611
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 608
    return v3

    .line 609
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 611
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setLowestPriority(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    const-string/jumbo v0, "setLowestPriority"

    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V

    .line 619
    const-string/jumbo v0, "setLowestPriority"

    invoke-direct {p0, p2, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 620
    if-nez p1, :cond_11

    .line 621
    const/4 v0, 0x0

    return v0

    .line 624
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 626
    .local v0, "ident":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_2e

    .line 627
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    .line 630
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 627
    return v3

    .line 628
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 630
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "parentPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    const-string/jumbo v0, "setPriority"

    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V

    .line 581
    const-string/jumbo v0, "setPriority"

    invoke-direct {p0, p3, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p3

    .line 582
    if-eqz p1, :cond_34

    if-nez p2, :cond_12

    goto :goto_34

    .line 586
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 588
    .local v0, "ident":J
    :try_start_16
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_2f

    .line 589
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_2c

    .line 592
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 589
    return v3

    .line 590
    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 592
    :catchall_2f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 583
    .end local v0    # "ident":J
    :cond_34
    :goto_34
    const/4 v0, 0x0

    return v0
.end method
