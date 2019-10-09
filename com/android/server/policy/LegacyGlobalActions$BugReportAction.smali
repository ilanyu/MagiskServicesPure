.class Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;
.super Lcom/android/internal/globalactions/SinglePressAction;
.source "LegacyGlobalActions.java"

# interfaces
.implements Lcom/android/internal/globalactions/LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BugReportAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 3

    .line 352
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    .line 353
    const p1, 0x1080392

    const v0, 0x10400f7

    invoke-direct {p0, p1, v0}, Lcom/android/internal/globalactions/SinglePressAction;-><init>(II)V

    .line 354
    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .registers 5

    .line 410
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    # getter for: Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$200(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x10400f6

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLongPress()Z
    .registers 4

    .line 385
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 386
    return v1

    .line 390
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    # getter for: Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$200(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x125

    invoke-static {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 391
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_1b

    .line 394
    goto :goto_1c

    .line 393
    :catch_1b
    move-exception v0

    .line 395
    :goto_1c
    return v1
.end method

.method public onPress()V
    .registers 5

    .line 360
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 361
    return-void

    .line 366
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    # getter for: Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$600(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;-><init>(Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 379
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .line 400
    const/4 v0, 0x1

    return v0
.end method
