.class final Lcom/android/server/power/PowerManagerService$BinderService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 4269
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .line 4269
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    .registers 24
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 4300
    if-eqz p1, :cond_72

    .line 4303
    if-eqz p4, :cond_69

    .line 4306
    invoke-static/range {p2 .. p3}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 4308
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4309
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_24

    .line 4310
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4313
    :cond_24
    if-eqz p5, :cond_3a

    invoke-virtual/range {p5 .. p5}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 4314
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4320
    move-object/from16 v13, p5

    goto :goto_3c

    .line 4317
    :cond_3a
    const/4 v0, 0x0

    .line 4320
    .end local p5    # "ws":Landroid/os/WorkSource;
    .local v0, "ws":Landroid/os/WorkSource;
    move-object v13, v0

    .line 4320
    .end local v0    # "ws":Landroid/os/WorkSource;
    .local v13, "ws":Landroid/os/WorkSource;
    :goto_3c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 4321
    .local v14, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 4322
    .local v15, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v9, v2

    .line 4324
    .local v9, "ident":J
    :try_start_49
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_63

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v13

    move-object/from16 v8, p6

    move-wide v11, v9

    move v9, v14

    .line 4324
    .end local v9    # "ident":J
    .local v11, "ident":J
    move v10, v15

    :try_start_59
    # invokes: Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    invoke-static/range {v2 .. v10}, Lcom/android/server/power/PowerManagerService;->access$3500(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_61

    .line 4326
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4327
    nop

    .line 4328
    return-void

    .line 4326
    :catchall_61
    move-exception v0

    goto :goto_65

    .line 4326
    .end local v11    # "ident":J
    .restart local v9    # "ident":J
    :catchall_63
    move-exception v0

    move-wide v11, v9

    .line 4326
    .end local v9    # "ident":J
    .restart local v11    # "ident":J
    :goto_65
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4304
    .end local v11    # "ident":J
    .end local v13    # "ws":Landroid/os/WorkSource;
    .end local v14    # "uid":I
    .end local v15    # "pid":I
    .restart local p5    # "ws":Landroid/os/WorkSource;
    :cond_69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "packageName must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4301
    :cond_72
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "lock must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .line 4281
    if-gez p5, :cond_6

    .line 4282
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p5

    .line 4284
    :cond_6
    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5, p5}, Landroid/os/WorkSource;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 4285
    return-void
.end method

.method public boostScreenBrightness(J)V
    .registers 7
    .param p1, "eventTime"    # J

    .line 4728
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2b

    .line 4732
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4735
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4736
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4738
    .local v1, "ident":J
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V
    invoke-static {v3, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_26

    .line 4740
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4741
    nop

    .line 4742
    return-void

    .line 4740
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4729
    .end local v0    # "uid":I
    .end local v1    # "ident":J
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public crash(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 4633
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4635
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4637
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 4639
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4640
    nop

    .line 4641
    return-void

    .line 4639
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4756
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 4758
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4760
    .local v0, "ident":J
    const/4 v2, 0x0

    .line 4761
    .local v2, "isDumpProto":Z
    array-length v3, p3

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_26

    aget-object v5, p3, v4

    .line 4762
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 4763
    const/4 v2, 0x1

    .line 4761
    .end local v5    # "arg":Ljava/lang/String;
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 4767
    :cond_26
    if-eqz v2, :cond_30

    .line 4768
    :try_start_28
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->dumpProto(Ljava/io/FileDescriptor;)V
    invoke-static {v3, p1}, Lcom/android/server/power/PowerManagerService;->access$5400(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V

    goto :goto_35

    .line 4773
    :catchall_2e
    move-exception v3

    goto :goto_3a

    .line 4770
    :cond_30
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    invoke-static {v3, p2}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_2e

    .line 4773
    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4774
    nop

    .line 4775
    return-void

    .line 4773
    :goto_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getLastShutdownReason()I
    .registers 5

    .line 4556
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4559
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4561
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string/jumbo v3, "persist.sys.boot.reason"

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService;->getLastShutdownReasonInternal(Ljava/lang/String;)I

    move-result v2
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    .line 4563
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4561
    return v2

    .line 4563
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPowerSaveState(I)Landroid/os/PowerSaveState;
    .registers 6
    .param p1, "serviceType"    # I

    .line 4507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4509
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/BatterySaverPolicy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4510
    # getter for: Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v3

    .line 4509
    invoke-virtual {v2, p1, v3}, Lcom/android/server/power/BatterySaverPolicy;->getBatterySaverPolicy(IZ)Landroid/os/PowerSaveState;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    .line 4512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4509
    return-object v2

    .line 4512
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public goToSleep(JII)V
    .registers 14
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .line 4451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2f

    .line 4455
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4458
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4459
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4461
    .local v1, "ident":J
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, v0

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_2a

    .line 4463
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4464
    nop

    .line 4465
    return-void

    .line 4463
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4452
    .end local v0    # "uid":I
    .end local v1    # "ident":J
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDeviceIdleMode()Z
    .registers 4

    .line 4530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4532
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->isDeviceIdleModeInternal()Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4534
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4532
    return v2

    .line 4534
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isInteractive()Z
    .registers 4

    .line 4487
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4489
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$4400(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4491
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4489
    return v2

    .line 4491
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isLightDeviceIdleMode()Z
    .registers 4

    .line 4540
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4542
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->isLightDeviceIdleModeInternal()Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4544
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4542
    return v2

    .line 4544
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isPowerSaveMode()Z
    .registers 4

    .line 4497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4499
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 4501
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4499
    return v2

    .line 4501
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isScreenBrightnessBoosted()Z
    .registers 4

    .line 4746
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4748
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4750
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4748
    return v2

    .line 4750
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isWakeLockLevelSupported(I)Z
    .registers 5
    .param p1, "level"    # I

    .line 4386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4388
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;I)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4390
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4388
    return v2

    .line 4390
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public nap(J)V
    .registers 7
    .param p1, "eventTime"    # J

    .line 4469
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2b

    .line 4473
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4476
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4477
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4479
    .local v1, "ident":J
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->napInternal(JI)V
    invoke-static {v3, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_26

    .line 4481
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4482
    nop

    .line 4483
    return-void

    .line 4481
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4470
    .end local v0    # "uid":I
    .end local v1    # "ident":J
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 4274
    new-instance v0, Lcom/android/server/power/PowerManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerShellCommand;-><init>(Landroid/os/IPowerManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/PowerManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4276
    return-void
.end method

.method public powerHint(II)V
    .registers 6
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .line 4289
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4291
    return-void

    .line 4293
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4294
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;II)V

    .line 4295
    return-void
.end method

.method public reboot(ZLjava/lang/String;Z)V
    .registers 8
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .line 4576
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4577
    const-string/jumbo v0, "recovery"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "recovery-update"

    .line 4578
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4579
    :cond_1e
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RECOVERY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4582
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4584
    .local v0, "ident":J
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V
    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_38

    .line 4586
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4587
    nop

    .line 4588
    return-void

    .line 4586
    :catchall_38
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public rebootSafeMode(ZZ)V
    .registers 8
    .param p1, "confirm"    # Z
    .param p2, "wait"    # Z

    .line 4598
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4600
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4602
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x2

    const-string/jumbo v4, "safemode"

    # invokes: Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V
    invoke-static {v2, v3, p1, v4, p2}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1e

    .line 4605
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4606
    nop

    .line 4607
    return-void

    .line 4605
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 4332
    if-eqz p1, :cond_21

    .line 4336
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4338
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4340
    .local v0, "ident":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V
    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$3600(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 4342
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4343
    nop

    .line 4344
    return-void

    .line 4342
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4333
    .end local v0    # "ident":J
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lock must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttentionLight(ZI)V
    .registers 6
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .line 4702
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4707
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V
    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;ZI)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 4709
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4710
    nop

    .line 4711
    return-void

    .line 4709
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setDozeAfterScreenOff(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 4715
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4720
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setDozeAfterScreenOffInternal(Z)V
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;Z)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 4722
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4723
    nop

    .line 4724
    return-void

    .line 4722
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPowerSaveMode(Z)Z
    .registers 5
    .param p1, "enabled"    # Z

    .line 4518
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4520
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4522
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;Z)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1a

    .line 4524
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4522
    return v2

    .line 4524
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setStayOnSetting(I)V
    .registers 6
    .param p1, "val"    # I

    .line 4680
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4682
    .local v0, "uid":I
    if-eqz v0, :cond_1e

    .line 4683
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4684
    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 4683
    invoke-static {v1, v0, v2, v3}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 4685
    return-void

    .line 4689
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4691
    .local v1, "ident":J
    :try_start_22
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2c

    .line 4693
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4694
    nop

    .line 4695
    return-void

    .line 4693
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public shutdown(ZLjava/lang/String;Z)V
    .registers 8
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .line 4617
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4619
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4621
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V
    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1b

    .line 4623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4624
    nop

    .line 4625
    return-void

    .line 4623
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateWakeLockSources(Landroid/os/IBinder;[I[Ljava/lang/String;)V
    .registers 9
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "uids"    # [I
    .param p3, "pkgNames"    # [Ljava/lang/String;

    .line 4649
    const/4 v0, 0x0

    .line 4651
    .local v0, "ws":Landroid/os/WorkSource;
    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "updateWakeLockSources"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4652
    if-eqz p2, :cond_42

    .line 4653
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    move-object v0, v1

    .line 4656
    const/4 v1, 0x0

    .line 4656
    .local v1, "i":I
    :goto_12
    array-length v2, p2

    if-ge v1, v2, :cond_42

    .line 4657
    aget v2, p2, v1

    aget-object v3, p3, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    .line 4658
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWakeLockSources uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p3, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 4661
    .end local v1    # "i":I
    :cond_42
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 4662
    return-void
.end method

.method public updateWakeLockUids(Landroid/os/IBinder;[I)V
    .registers 6
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "uids"    # [I

    .line 4348
    const/4 v0, 0x0

    .line 4350
    .local v0, "ws":Landroid/os/WorkSource;
    if-eqz p2, :cond_15

    .line 4351
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    move-object v0, v1

    .line 4354
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p2

    if-ge v1, v2, :cond_15

    .line 4355
    aget v2, p2, v1

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->add(I)Z

    .line 4354
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4358
    .end local v1    # "i":I
    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 4359
    return-void
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    .registers 8
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;

    .line 4363
    if-eqz p1, :cond_3a

    .line 4367
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4368
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 4369
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 4372
    :cond_22
    const/4 p2, 0x0

    .line 4375
    :goto_23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4376
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4378
    .local v1, "ident":J
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    invoke-static {v3, p1, p2, p3, v0}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_35

    .line 4380
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4381
    nop

    .line 4382
    return-void

    .line 4380
    :catchall_35
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4364
    .end local v0    # "callingUid":I
    .end local v1    # "ident":J
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lock must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public userActivity(JII)V
    .registers 16
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .line 4396
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4397
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4399
    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.USER_ACTIVITY"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_65

    .line 4405
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4406
    :try_start_27
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    cmp-long v3, v0, v3

    if-ltz v3, :cond_60

    .line 4407
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J
    invoke-static {v3, v0, v1}, Lcom/android/server/power/PowerManagerService;->access$3902(Lcom/android/server/power/PowerManagerService;J)J

    .line 4408
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER or USER_ACTIVITY permission.  Please fix your app!   pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4411
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4412
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4408
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4414
    :cond_60
    monitor-exit v2

    .line 4415
    return-void

    .line 4414
    :catchall_62
    move-exception v3

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_27 .. :try_end_64} :catchall_62

    throw v3

    .line 4418
    :cond_65
    cmp-long v2, p1, v0

    if-gtz v2, :cond_85

    .line 4422
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4423
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v9, v3

    .line 4425
    .local v9, "ident":J
    :try_start_72
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, v2

    # invokes: Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_80

    .line 4427
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4428
    nop

    .line 4429
    return-void

    .line 4427
    :catchall_80
    move-exception v3

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4419
    .end local v2    # "uid":I
    .end local v9    # "ident":J
    :cond_85
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "event time must not be in the future"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 4433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_30

    .line 4437
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4440
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4441
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4443
    .local v1, "ident":J
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v4, p1

    move-object v6, p3

    move v7, v0

    move-object v8, p4

    move v9, v0

    # invokes: Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V
    invoke-static/range {v3 .. v9}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2b

    .line 4445
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4446
    nop

    .line 4447
    return-void

    .line 4445
    :catchall_2b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4434
    .end local v0    # "uid":I
    .end local v1    # "ident":J
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
