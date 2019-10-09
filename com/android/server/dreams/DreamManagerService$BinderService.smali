.class final Lcom/android/server/dreams/DreamManagerService$BinderService;
.super Landroid/service/dreams/IDreamManager$Stub;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .line 482
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p2, "x1"    # Lcom/android/server/dreams/DreamManagerService$1;

    .line 482
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method


# virtual methods
.method public awaken()V
    .registers 4

    .line 583
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 587
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->requestAwakenInternal()V
    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$1600(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    .line 589
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    nop

    .line 591
    return-void

    .line 589
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dream()V
    .registers 4

    .line 547
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 551
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->requestDreamInternal()V
    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$1400(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    .line 553
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 554
    nop

    .line 555
    return-void

    .line 553
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$700(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DreamManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 486
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 488
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    invoke-static {v2, p2}, Lcom/android/server/dreams/DreamManagerService;->access$800(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 490
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 491
    nop

    .line 492
    return-void

    .line 490
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public finishSelf(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immediate"    # Z

    .line 596
    if-eqz p1, :cond_15

    .line 600
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 602
    .local v0, "ident":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->finishSelfInternal(Landroid/os/IBinder;Z)V
    invoke-static {v2, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->access$1700(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    .line 604
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    nop

    .line 606
    return-void

    .line 604
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 597
    .end local v0    # "ident":J
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultDreamComponent()Landroid/content/ComponentName;
    .registers 5

    .line 522
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 524
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 525
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 527
    .local v1, "ident":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;
    invoke-static {v3, v0}, Lcom/android/server/dreams/DreamManagerService;->access$1200(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 529
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 527
    return-object v3

    .line 529
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getDreamComponents()[Landroid/content/ComponentName;
    .registers 5

    .line 496
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 498
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 499
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 501
    .local v1, "ident":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    invoke-static {v3, v0}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 503
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 501
    return-object v3

    .line 503
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isDreaming()Z
    .registers 4

    .line 535
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 537
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 539
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z
    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$1300(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    .line 541
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    return v2

    .line 541
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setDreamComponents([Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "componentNames"    # [Landroid/content/ComponentName;

    .line 509
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 511
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 512
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 514
    .local v1, "ident":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    invoke-static {v3, v0, p1}, Lcom/android/server/dreams/DreamManagerService;->access$1100(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 516
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 517
    nop

    .line 518
    return-void

    .line 516
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public startDozing(Landroid/os/IBinder;II)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I

    .line 611
    if-eqz p1, :cond_15

    .line 615
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 617
    .local v0, "ident":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->startDozingInternal(Landroid/os/IBinder;II)V
    invoke-static {v2, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->access$1800(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    .line 619
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 620
    nop

    .line 621
    return-void

    .line 619
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 612
    .end local v0    # "ident":J
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopDozing(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 626
    if-eqz p1, :cond_15

    .line 630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 632
    .local v0, "ident":J
    :try_start_6
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->stopDozingInternal(Landroid/os/IBinder;)V
    invoke-static {v2, p1}, Lcom/android/server/dreams/DreamManagerService;->access$1900(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    .line 634
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 635
    nop

    .line 636
    return-void

    .line 634
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 627
    .end local v0    # "ident":J
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public testDream(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "dream"    # Landroid/content/ComponentName;

    .line 559
    if-eqz p1, :cond_45

    .line 562
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 564
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 565
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 566
    .local v1, "currentUserId":I
    if-eq v0, v1, :cond_32

    .line 568
    const-string v2, "DreamManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aborted attempt to start a test dream while a different  user is active: callingUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", currentUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    .line 573
    :cond_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 575
    .local v2, "ident":J
    :try_start_36
    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->testDreamInternal(Landroid/content/ComponentName;I)V
    invoke-static {v4, p1, v0}, Lcom/android/server/dreams/DreamManagerService;->access$1500(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_40

    .line 577
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 578
    nop

    .line 579
    return-void

    .line 577
    :catchall_40
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 560
    .end local v0    # "callingUserId":I
    .end local v1    # "currentUserId":I
    .end local v2    # "ident":J
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
