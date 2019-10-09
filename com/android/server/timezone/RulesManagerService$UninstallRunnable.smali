.class Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;
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
    name = "UninstallRunnable"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/timezone/ICallback;

.field private final mCheckToken:Lcom/android/server/timezone/CheckToken;

.field final synthetic this$0:Lcom/android/server/timezone/RulesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/timezone/RulesManagerService;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V
    .registers 4
    .param p2, "checkToken"    # Lcom/android/server/timezone/CheckToken;
    .param p3, "callback"    # Landroid/app/timezone/ICallback;

    .line 360
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 362
    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    .line 363
    return-void
.end method

.method private sendUninstallNotificationIntentIfRequired(I)V
    .registers 3
    .param p1, "uninstallResult"    # I

    .line 400
    packed-switch p1, :pswitch_data_1a

    goto :goto_18

    .line 405
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    # getter for: Lcom/android/server/timezone/RulesManagerService;->mIntentHelper:Lcom/android/server/timezone/RulesManagerIntentHelper;
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationUnstaged()V

    .line 406
    goto :goto_18

    .line 402
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    # getter for: Lcom/android/server/timezone/RulesManagerService;->mIntentHelper:Lcom/android/server/timezone/RulesManagerIntentHelper;
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationStaged()V

    .line 403
    nop

    .line 411
    :goto_18
    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_e
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 367
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    # invokes: Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallStarted(Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x0

    move v1, v0

    .line 370
    .local v1, "packageTrackerStatus":Z
    const/4 v2, 0x1

    :try_start_c
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    # getter for: Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$200(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stageUninstall()I

    move-result v3

    .line 373
    .local v3, "uninstallResult":I
    invoke-direct {p0, v3}, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->sendUninstallNotificationIntentIfRequired(I)V

    .line 375
    if-eqz v3, :cond_20

    if-ne v3, v2, :cond_1e

    goto :goto_20

    :cond_1e
    move v4, v0

    goto :goto_21

    :cond_20
    :goto_20
    move v4, v2

    :goto_21
    move v1, v4

    .line 382
    if-eqz v1, :cond_26

    move v4, v0

    goto :goto_27

    :cond_26
    move v4, v2

    .line 383
    .local v4, "callbackResultCode":I
    :goto_27
    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 384
    # invokes: Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 383
    invoke-static {v5, v4}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallComplete(Ljava/lang/String;I)V

    .line 385
    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v6, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    # invokes: Lcom/android/server/timezone/RulesManagerService;->sendFinishedStatus(Landroid/app/timezone/ICallback;I)V
    invoke-static {v5, v6, v4}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_37} :catch_3a
    .catchall {:try_start_c .. :try_end_37} :catchall_38

    .line 385
    .end local v3    # "uninstallResult":I
    .end local v4    # "callbackResultCode":I
    goto :goto_53

    .line 393
    :catchall_38
    move-exception v2

    goto :goto_69

    .line 386
    :catch_3a
    move-exception v3

    .line 387
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3b
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 388
    # invokes: Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 387
    invoke-static {v4, v2}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallComplete(Ljava/lang/String;I)V

    .line 389
    const-string/jumbo v4, "timezone.RulesManagerService"

    const-string v5, "Failed to uninstall distro."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    # invokes: Lcom/android/server/timezone/RulesManagerService;->sendFinishedStatus(Landroid/app/timezone/ICallback;I)V
    invoke-static {v4, v5, v2}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_38

    .line 393
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_53
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    # getter for: Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;
    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 395
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    # getter for: Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 396
    nop

    .line 397
    return-void

    .line 393
    :goto_69
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    # getter for: Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;
    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 395
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    # getter for: Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method
