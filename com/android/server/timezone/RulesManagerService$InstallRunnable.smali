.class Lcom/android/server/timezone/RulesManagerService$InstallRunnable;
.super Ljava/lang/Object;
.source "RulesManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezone/RulesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallRunnable"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/timezone/ICallback;

.field private final mCheckToken:Lcom/android/server/timezone/CheckToken;

.field private final mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lcom/android/server/timezone/RulesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/timezone/RulesManagerService;Landroid/os/ParcelFileDescriptor;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V
    .registers 5
    .param p2, "distroParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "checkToken"    # Lcom/android/server/timezone/CheckToken;
    .param p4, "callback"    # Landroid/app/timezone/ICallback;

    .line 260
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 262
    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 263
    iput-object p4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    .line 264
    return-void
.end method

.method private mapInstallerResultToApiCode(I)I
    .registers 3
    .param p1, "installerResult"    # I

    .line 312
    packed-switch p1, :pswitch_data_10

    .line 324
    const/4 v0, 0x1

    return v0

    .line 322
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 318
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 320
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 316
    :pswitch_b
    const/4 v0, 0x2

    return v0

    .line 314
    :pswitch_d
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private sendInstallNotificationIntentIfRequired(I)V
    .registers 3
    .param p1, "installerResult"    # I

    .line 306
    if-nez p1, :cond_b

    .line 307
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    # getter for: Lcom/android/server/timezone/RulesManagerService;->mIntentHelper:Lcom/android/server/timezone/RulesManagerIntentHelper;
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationStaged()V

    .line 309
    :cond_b
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 268
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    # invokes: Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneInstallStarted(Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    move v1, v0

    .line 273
    .local v1, "success":Z
    :try_start_b
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_d} :catch_5c
    .catchall {:try_start_b .. :try_end_d} :catchall_5a

    .line 273
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 276
    const/4 v4, 0x0

    .line 277
    .local v4, "isFdOwner":Z
    :try_start_f
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    .line 279
    .local v5, "is":Ljava/io/InputStream;
    new-instance v6, Lcom/android/timezone/distro/TimeZoneDistro;

    invoke-direct {v6, v5}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>(Ljava/io/InputStream;)V

    .line 280
    .local v6, "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    iget-object v7, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    # getter for: Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
    invoke-static {v7}, Lcom/android/server/timezone/RulesManagerService;->access$200(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stageInstallWithErrorCode(Lcom/android/timezone/distro/TimeZoneDistro;)I

    move-result v7

    .line 283
    .local v7, "installerResult":I
    invoke-direct {p0, v7}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->sendInstallNotificationIntentIfRequired(I)V

    .line 285
    invoke-direct {p0, v7}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mapInstallerResultToApiCode(I)I

    move-result v8

    .line 286
    .local v8, "resultCode":I
    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    # invokes: Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/server/EventLogTags;->writeTimezoneInstallComplete(Ljava/lang/String;I)V

    .line 287
    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v10, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    # invokes: Lcom/android/server/timezone/RulesManagerService;->sendFinishedStatus(Landroid/app/timezone/ICallback;I)V
    invoke-static {v9, v10, v8}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_3e} :catch_47
    .catchall {:try_start_f .. :try_end_3e} :catchall_45

    .line 291
    const/4 v1, 0x1

    .line 292
    .end local v4    # "isFdOwner":Z
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    .end local v7    # "installerResult":I
    .end local v8    # "resultCode":I
    if-eqz v2, :cond_76

    :try_start_41
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_5c
    .catchall {:try_start_41 .. :try_end_44} :catchall_5a

    goto :goto_76

    :catchall_45
    move-exception v4

    goto :goto_49

    .line 273
    :catch_47
    move-exception v3

    :try_start_48
    throw v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_45

    .line 292
    :goto_49
    if-eqz v2, :cond_59

    if-eqz v3, :cond_56

    :try_start_4d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_50} :catch_51
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_5c
    .catchall {:try_start_4d .. :try_end_50} :catchall_5a

    goto :goto_59

    :catch_51
    move-exception v5

    :try_start_52
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_59

    :cond_56
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_59
    :goto_59
    throw v4
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5a} :catch_5c
    .catchall {:try_start_52 .. :try_end_5a} :catchall_5a

    .line 299
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_5a
    move-exception v2

    goto :goto_8c

    .line 292
    :catch_5c
    move-exception v2

    .line 293
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5d
    const-string/jumbo v3, "timezone.RulesManagerService"

    const-string v4, "Failed to install distro."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 295
    # invokes: Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 294
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/EventLogTags;->writeTimezoneInstallComplete(Ljava/lang/String;I)V

    .line 296
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    # invokes: Lcom/android/server/timezone/RulesManagerService;->sendFinishedStatus(Landroid/app/timezone/ICallback;I)V
    invoke-static {v3, v5, v4}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_5a

    .line 299
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_76
    :goto_76
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    # getter for: Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;
    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 301
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    # getter for: Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 302
    nop

    .line 303
    return-void

    .line 299
    :goto_8c
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    # getter for: Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;
    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 301
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    # getter for: Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method
