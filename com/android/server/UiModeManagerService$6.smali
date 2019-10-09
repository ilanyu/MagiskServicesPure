.class Lcom/android/server/UiModeManagerService$6;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    .line 260
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableCarMode(I)V
    .registers 7
    .param p1, "flags"    # I

    .line 282
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$6;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 283
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableCarMode while UI mode is locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 286
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 288
    .local v0, "ident":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_33

    .line 289
    :try_start_19
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 290
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v3, v3, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v3, :cond_2a

    .line 291
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 293
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_30

    .line 295
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    nop

    .line 297
    return-void

    .line 293
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 295
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 379
    :cond_11
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 380
    return-void
.end method

.method public enableCarMode(I)V
    .registers 7
    .param p1, "flags"    # I

    .line 263
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$6;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 264
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableCarMode while UI mode is locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 267
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 269
    .local v0, "ident":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_34

    .line 270
    :try_start_19
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 271
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v3, v3, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v3, :cond_2b

    .line 272
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 274
    :cond_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_31

    .line 276
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 277
    nop

    .line 278
    return-void

    .line 274
    :catchall_31
    move-exception v3

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 276
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCurrentModeType()I
    .registers 5

    .line 301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 303
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_17

    .line 304
    :try_start_9
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    iget v3, v3, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v3, v3, 0xf

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    return v3

    .line 305
    :catchall_14
    move-exception v3

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 307
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightMode()I
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 353
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isNightModeLocked()Z
    .registers 3

    .line 365
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1000(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 367
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isUiModeLocked()Z
    .registers 3

    .line 358
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$900(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 360
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

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

    .line 373
    new-instance v0, Lcom/android/server/UiModeManagerService$Shell;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1100(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;-><init>(Landroid/app/IUiModeManager;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1100(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/UiModeManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 374
    return-void
.end method

.method public setNightMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 313
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$6;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 316
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 320
    :cond_1e
    packed-switch p1, :pswitch_data_54

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :pswitch_38
    nop

    .line 329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 332
    .local v0, "ident":J
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->shouldDelayNightModeChange(I)Z
    invoke-static {v2, p1}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;I)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 333
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->setNightModeLocked(I)V
    invoke-static {v2, p1}, Lcom/android/server/UiModeManagerService;->access$800(Lcom/android/server/UiModeManagerService;I)V
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_4f

    .line 345
    :cond_4a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    nop

    .line 347
    return-void

    .line 345
    :catchall_4f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method
