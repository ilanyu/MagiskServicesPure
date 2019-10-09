.class Lcom/android/server/pm/PackageInstallerSession$3;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 290
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$000(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const v3, 0x4000040

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 299
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_be

    .line 301
    :try_start_1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 302
    .local v4, "beginMiuiVerify":J
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$100(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_28
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1d .. :try_end_28} :catch_8a

    .line 304
    :try_start_28
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/pm/PackageInstallerSession;->access$200(Lcom/android/server/pm/PackageInstallerSession;)Ljava/io/File;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_7d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_7b

    .line 308
    nop

    .line 309
    :try_start_2e
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/pm/PackageInstallerSession;->access$300(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 313
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I
    invoke-static {v6}, Lcom/android/server/pm/PackageInstallerSession;->access$400(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result v6

    const/16 v7, 0x7d0

    if-ne v6, v7, :cond_46

    .line 314
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->validateInstallLocked(Landroid/content/pm/PackageInfo;)V
    invoke-static {v6, v0}, Lcom/android/server/pm/PackageInstallerSession;->access$500(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;)V

    .line 316
    :cond_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_7b

    .line 317
    :try_start_47
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$600(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/pm/PackageInstallerSession;->access$700(Lcom/android/server/pm/PackageInstallerSession;)Ljava/io/File;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I
    invoke-static {v7}, Lcom/android/server/pm/PackageInstallerSession;->access$400(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/pm/PackageInstallerSession;->access$800(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v6, v7, v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->isAllowedInstall(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 320
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mStatistic:Lcom/android/server/pm/InstallationStatistic;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/server/pm/InstallationStatistic;->timeMiuiSecurityCheck:J

    .line 327
    .end local v4    # "beginMiuiVerify":J
    goto :goto_be

    .line 318
    .restart local v4    # "beginMiuiVerify":J
    :cond_71
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v6, -0x6f

    const-string v7, "Failed INSTALL_CANCELED_BY_USER"

    invoke-direct {v1, v6, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_7b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_47 .. :try_end_7b} :catch_8a

    .line 316
    :catchall_7b
    move-exception v6

    goto :goto_88

    .line 305
    :catch_7d
    move-exception v6

    .line 306
    .local v6, "e":Ljava/io/IOException;
    :try_start_7e
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    const/16 v8, -0x12

    const-string v9, "Failed to resolve stage location"

    invoke-direct {v7, v8, v9, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 316
    .end local v6    # "e":Ljava/io/IOException;
    :goto_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_7e .. :try_end_89} :catchall_7b

    :try_start_89
    throw v6
    :try_end_8a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_89 .. :try_end_8a} :catch_8a

    .line 321
    .end local v4    # "beginMiuiVerify":J
    :catch_8a
    move-exception v1

    .line 322
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "completeMsg":Ljava/lang/String;
    const-string v5, "PackageInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Commit of session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v7, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V
    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerSession;->access$900(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 325
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v6, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v5, v6, v4, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1000(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 326
    return v3

    .line 331
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v4    # "completeMsg":Ljava/lang/String;
    :cond_be
    :goto_be
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_130

    goto :goto_12f

    .line 350
    :pswitch_c4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 351
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 352
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 353
    .local v4, "message":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 354
    .local v5, "extras":Landroid/os/Bundle;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Landroid/content/pm/IPackageInstallObserver2;

    .line 355
    .local v6, "observer":Landroid/content/pm/IPackageInstallObserver2;
    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 356
    .local v7, "returnCode":I
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 359
    :try_start_dd
    invoke-interface {v6, v2, v7, v4, v5}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_e0} :catch_e1

    .line 361
    goto :goto_12f

    .line 360
    :catch_e1
    move-exception v8

    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v6    # "observer":Landroid/content/pm/IPackageInstallObserver2;
    .end local v7    # "returnCode":I
    goto :goto_12f

    .line 336
    :pswitch_e3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$100(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 338
    :try_start_ea
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->commitLocked()V
    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->access$1200(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_ef
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_ea .. :try_end_ef} :catch_f2
    .catchall {:try_start_ea .. :try_end_ef} :catchall_f0

    .line 345
    goto :goto_125

    .line 346
    :catchall_f0
    move-exception v2

    goto :goto_127

    .line 339
    :catch_f2
    move-exception v4

    .line 340
    .local v4, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_f3
    invoke-static {v4}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "completeMsg":Ljava/lang/String;
    const-string v6, "PackageInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Commit of session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v8, v8, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V
    invoke-static {v6}, Lcom/android/server/pm/PackageInstallerSession;->access$900(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 344
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v7, v4, Lcom/android/server/pm/PackageManagerException;->error:I

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v6, v7, v5, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1000(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 346
    .end local v4    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v5    # "completeMsg":Ljava/lang/String;
    :goto_125
    monitor-exit v1

    .line 348
    goto :goto_12f

    .line 346
    :goto_127
    monitor-exit v1
    :try_end_128
    .catchall {:try_start_f3 .. :try_end_128} :catchall_f0

    throw v2

    .line 333
    :pswitch_129
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->earlyBindToDefContainer()V
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$1100(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 334
    nop

    .line 366
    :goto_12f
    return v3

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_129
        :pswitch_e3
        :pswitch_c4
    .end packed-switch
.end method
