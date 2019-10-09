.class Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;
.super Landroid/os/Handler;
.source "PackageDexOptimizerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageDexOptimizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DexOptHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageDexOptimizerManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageDexOptimizerManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/PackageDexOptimizerManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 241
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    .line 242
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 243
    return-void
.end method

.method private performDexOptInBackground(Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;)V
    .registers 16
    .param p1, "info"    # Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;

    .line 276
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v0, v0, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    monitor-enter v0

    .line 277
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v1, v1, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    iget-object v2, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 278
    monitor-exit v0

    return-void

    .line 280
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_dd

    .line 282
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 284
    .local v0, "pms":Lcom/android/server/pm/PackageManagerService;
    const-string v1, "PackageDexOptimizerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PerformDexOpt for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 287
    .local v1, "callingId":J
    const/high16 v3, -0x80000000

    .line 289
    .local v3, "installFlags":I
    const/4 v4, -0x1

    :try_start_3c
    # getter for: Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->access$100()Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_40} :catch_ac
    .catchall {:try_start_3c .. :try_end_40} :catchall_aa

    if-eqz v5, :cond_a6

    .line 292
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_47
    # getter for: Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->access$100()Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    aput-object v12, v11, v8

    aput-object v7, v11, v9

    .line 293
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v6

    const/high16 v12, -0x80000000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    .line 292
    invoke-virtual {v10, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_68} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_68} :catch_ac
    .catchall {:try_start_47 .. :try_end_68} :catchall_aa

    move-object v5, v10

    .line 299
    .local v5, "ret":Ljava/lang/Boolean;
    goto :goto_99

    .line 295
    .end local v5    # "ret":Ljava/lang/Boolean;
    :catch_6a
    move-exception v10

    .line 296
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6b
    const-string v11, "PackageDexOptimizerManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IllegalArgumentException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    # getter for: Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->access$100()Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v12, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    aput-object v12, v5, v8

    aput-object v7, v5, v9

    .line 298
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    .line 297
    invoke-virtual {v11, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 301
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v5    # "ret":Ljava/lang/Boolean;
    :goto_99
    if-eqz v5, :cond_a4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 302
    iput v9, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I

    goto :goto_a6

    .line 304
    :cond_a4
    iput v4, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_a6} :catch_ac
    .catchall {:try_start_6b .. :try_end_a6} :catchall_aa

    .line 311
    .end local v3    # "installFlags":I
    .end local v5    # "ret":Ljava/lang/Boolean;
    :cond_a6
    :goto_a6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    goto :goto_c6

    .line 311
    :catchall_aa
    move-exception v3

    goto :goto_d9

    .line 307
    :catch_ac
    move-exception v3

    .line 308
    .local v3, "e":Ljava/lang/Exception;
    :try_start_ad
    iput v4, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I

    .line 309
    const-string v4, "PackageDexOptimizerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_ad .. :try_end_c5} :catchall_aa

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_a6

    .line 314
    :goto_c6
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v3, v3, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    monitor-enter v3

    .line 315
    :try_start_cb
    iget-object v4, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v4, v4, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    iget-object v5, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 316
    monitor-exit v3

    .line 317
    return-void

    .line 316
    :catchall_d6
    move-exception v4

    monitor-exit v3
    :try_end_d8
    .catchall {:try_start_cb .. :try_end_d8} :catchall_d6

    throw v4

    .line 311
    :goto_d9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 280
    .end local v0    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v1    # "callingId":J
    :catchall_dd
    move-exception v1

    :try_start_de
    monitor-exit v0
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 246
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_2a

    .line 248
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;

    .line 250
    .local v0, "info":Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;
    iget-object v1, v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    if-eqz v1, :cond_17

    .line 252
    :try_start_e
    iget-object v1, v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lmiui/os/IMiuiDexoptObserver;->onStart(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    .line 255
    goto :goto_17

    .line 253
    :catch_16
    move-exception v1

    .line 258
    :cond_17
    :goto_17
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->performDexOptInBackground(Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;)V

    .line 260
    iget-object v1, v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    if-eqz v1, :cond_2a

    .line 262
    :try_start_1e
    iget-object v1, v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I

    invoke-interface {v1, v2, v3}, Lmiui/os/IMiuiDexoptObserver;->onFinished(Ljava/lang/String;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_29

    .line 263
    :catch_28
    move-exception v1

    .line 265
    .end local v0    # "info":Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;
    :goto_29
    nop

    .line 273
    :cond_2a
    :goto_2a
    return-void
.end method
