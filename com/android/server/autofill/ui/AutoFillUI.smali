.class public final Lcom/android/server/autofill/ui/AutoFillUI;
.super Ljava/lang/Object;
.source "AutoFillUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillUI"


# instance fields
.field private mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field private final mContext:Landroid/content/Context;

.field private mFillUi:Lcom/android/server/autofill/ui/FillUi;

.field private final mHandler:Landroid/os/Handler;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field private mSaveUi:Lcom/android/server/autofill/ui/SaveUi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 87
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/android/server/autofill/ui/OverlayControl;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/ui/OverlayControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/ui/AutoFillUI;

    .line 58
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/autofill/ui/AutoFillUI;
    .param p1, "x1"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/autofill/ui/AutoFillUI;
    .param p1, "x1"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p2, "x2"    # Z

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/autofill/ui/AutoFillUI;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/ui/AutoFillUI;

    .line 58
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/internal/logging/MetricsLogger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/ui/AutoFillUI;

    .line 58
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/autofill/ui/AutoFillUI;
    .param p1, "x1"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p2, "x2"    # Z

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method private destroyAllUiThread(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .registers 4
    .param p1, "pendingSaveUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p2, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p3, "notifyClient"    # Z

    .line 428
    invoke-direct {p0, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 429
    invoke-direct {p0, p1, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    .line 430
    return-void
.end method

.method private destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V
    .registers 7
    .param p1, "pendingSaveUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p2, "notifyClient"    # Z

    .line 404
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-nez v0, :cond_10

    .line 408
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_f

    const-string v0, "AutofillUI"

    const-string v1, "destroySaveUiUiThread(): already destroyed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_f
    return-void

    .line 412
    :cond_10
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2a

    const-string v0, "AutofillUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySaveUiUiThread(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_2a
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi;->destroy()V

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 415
    if-eqz p1, :cond_61

    if-eqz p2, :cond_61

    .line 417
    :try_start_36
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_41

    const-string v0, "AutofillUI"

    const-string v1, "destroySaveUiUiThread(): notifying client"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_41
    iget-object v0, p1, Lcom/android/server/autofill/ui/PendingUi;->client:Landroid/view/autofill/IAutoFillManagerClient;

    iget v1, p1, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_49} :catch_4a

    .line 421
    goto :goto_61

    .line 419
    :catch_4a
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error notifying client to set save UI state to hidden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_61
    :goto_61
    return-void
.end method

.method private hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 434
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 435
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    move-result-object v1

    .line 436
    .local v1, "pendingSaveUi":Lcom/android/server/autofill/ui/PendingUi;
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/PendingUi;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1f

    .line 437
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1c

    .line 438
    const-string v2, "AutofillUI"

    const-string v3, "hideAllUiThread(): destroying Save UI because pending restoration is finished"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1c
    invoke-direct {p0, v1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    .line 443
    :cond_1f
    return-void
.end method

.method private hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p2, "notifyClient"    # Z

    .line 383
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-ne p1, v0, :cond_12

    .line 384
    :cond_a
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/FillUi;->destroy(Z)V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    .line 387
    :cond_12
    return-void
.end method

.method private hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;
    .registers 5
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 392
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2e

    .line 393
    const-string v0, "AutofillUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSaveUiUiThread(): mSaveUi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_2e
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-eqz v0, :cond_3f

    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-ne p1, v0, :cond_3f

    .line 397
    :cond_38
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    move-result-object v0

    return-object v0

    .line 399
    :cond_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$clearCallback$1(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 105
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-ne v0, p1, :cond_a

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 109
    :cond_a
    return-void
.end method

.method public static synthetic lambda$destroyAll$9(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .registers 4
    .param p1, "pendingSaveUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p2, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p3, "notifyClient"    # Z

    .line 360
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAllUiThread(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method public static synthetic lambda$filterFillUi$4(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p2, "filterText"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq p1, v0, :cond_5

    .line 151
    return-void

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    if-eqz v0, :cond_e

    .line 154
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/FillUi;->setFilterText(Ljava/lang/String;)V

    .line 156
    :cond_e
    return-void
.end method

.method public static synthetic lambda$hideAll$8(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 352
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public static synthetic lambda$hideFillUi$3(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method public static synthetic lambda$onPendingSaveUi$7(Lcom/android/server/autofill/ui/AutoFillUI;ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 340
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-eqz v0, :cond_a

    .line 341
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->onPendingUi(ILandroid/os/IBinder;)V

    goto :goto_26

    .line 343
    :cond_a
    const-string v0, "AutofillUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPendingSaveUi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): no save ui"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_26
    return-void
.end method

.method public static synthetic lambda$setCallback$0(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 93
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq v0, p1, :cond_f

    .line 94
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eqz v0, :cond_d

    .line 95
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-direct {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 98
    :cond_d
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 100
    :cond_f
    return-void
.end method

.method public static synthetic lambda$showError$2(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 126
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq v0, p1, :cond_5

    .line 127
    return-void

    .line 129
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 130
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 131
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    :cond_18
    return-void
.end method

.method public static synthetic lambda$showFillUi$5(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/metrics/LogMaker;)V
    .registers 25
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p4, "filterText"    # Ljava/lang/String;
    .param p5, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p6, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "log"    # Landroid/metrics/LogMaker;

    move-object/from16 v6, p0

    .line 191
    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-object/from16 v7, p1

    if-eq v7, v0, :cond_9

    .line 192
    return-void

    .line 194
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 195
    new-instance v15, Lcom/android/server/autofill/ui/FillUi;

    iget-object v9, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    iget-object v13, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    new-instance v16, Lcom/android/server/autofill/ui/AutoFillUI$1;

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, p7

    move-object v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/ui/AutoFillUI$1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V

    move-object v8, v15

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p5

    move-object v0, v15

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v16}, Lcom/android/server/autofill/ui/FillUi;-><init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/FillUi$Callback;)V

    iput-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    .line 261
    return-void
.end method

.method public static synthetic lambda$showSaveUi$6(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;Z)V
    .registers 27
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p2, "pendingSaveUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p3, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p4, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "servicePackageName"    # Ljava/lang/String;
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "info"    # Landroid/service/autofill/SaveInfo;
    .param p8, "valueFinder"    # Landroid/service/autofill/ValueFinder;
    .param p9, "log"    # Landroid/metrics/LogMaker;
    .param p10, "compatMode"    # Z

    move-object/from16 v0, p0

    .line 285
    iget-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-object/from16 v2, p1

    if-eq v2, v1, :cond_9

    .line 286
    return-void

    .line 288
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 289
    new-instance v1, Lcom/android/server/autofill/ui/SaveUi;

    iget-object v4, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    new-instance v13, Lcom/android/server/autofill/ui/AutoFillUI$2;

    move-object/from16 v15, p2

    move-object/from16 v14, p9

    invoke-direct {v13, v0, v14, v15}, Lcom/android/server/autofill/ui/AutoFillUI$2;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/ui/PendingUi;)V

    move-object v3, v1

    move-object v5, v15

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v14, p10

    invoke-direct/range {v3 .. v14}, Lcom/android/server/autofill/ui/SaveUi;-><init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;Z)V

    iput-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 332
    return-void
.end method


# virtual methods
.method public clearCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 104
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$i7qTc5vqiej5Psbl-bIkD7js-Ao;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$i7qTc5vqiej5Psbl-bIkD7js-Ao;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .registers 6
    .param p1, "pendingSaveUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p2, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p3, "notifyClient"    # Z

    .line 360
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$XWhvh2-Jd9NLMoEos-e8RkZdQaI;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$XWhvh2-Jd9NLMoEos-e8RkZdQaI;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 364
    const-string v0, "Autofill UI"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    const-string v0, "  "

    .line 366
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "    "

    .line 367
    .local v1, "prefix2":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    if-eqz v2, :cond_20

    .line 368
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "showsFillUi: true"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/autofill/ui/FillUi;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2b

    .line 371
    :cond_20
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "showsFillUi: false"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    :goto_2b
    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-eqz v2, :cond_42

    .line 374
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "showsSaveUi: true"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/autofill/ui/SaveUi;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_4d

    .line 377
    :cond_42
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "showsSaveUi: false"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    :goto_4d
    return-void
.end method

.method public filterFillUi(Ljava/lang/String;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 5
    .param p1, "filterText"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 149
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$LjywPhTUqjU0ZUlG1crxBg8qhRA;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$LjywPhTUqjU0ZUlG1crxBg8qhRA;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method

.method public hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 352
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$56AC3ykfo4h_e2LSjdkJ3XQn370;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$56AC3ykfo4h_e2LSjdkJ3XQn370;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    return-void
.end method

.method public hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 140
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$VF2EbGE70QNyGDbklN9Uz5xHqyQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$VF2EbGE70QNyGDbklN9Uz5xHqyQ;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 5
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 339
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$R46Kz1SlDpiZBOYi-1HNH5FBjnU;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$R46Kz1SlDpiZBOYi-1HNH5FBjnU;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;ILandroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 346
    return-void
.end method

.method public setCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 92
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$Z-Di7CGd-L0nOI4i7_RO1FYbhgU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$Z-Di7CGd-L0nOI4i7_RO1FYbhgU;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method public showError(ILcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 4
    .param p1, "resId"    # I
    .param p2, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 116
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 117
    return-void
.end method

.method public showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 123
    const-string v0, "AutofillUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showError(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$S8lqjy9BKKn2SSfu43iaVPGD6rg;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$S8lqjy9BKKn2SSfu43iaVPGD6rg;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public showFillUi(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZ)V
    .registers 28
    .param p1, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "filterText"    # Ljava/lang/String;
    .param p4, "servicePackageName"    # Ljava/lang/String;
    .param p5, "componentName"    # Landroid/content/ComponentName;
    .param p6, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p7, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p8, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p9, "sessionId"    # I
    .param p10, "compatMode"    # Z

    .line 178
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 179
    if-nez p3, :cond_9

    move v0, v1

    goto :goto_d

    :cond_9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 180
    .local v0, "size":I
    :goto_d
    const-string v2, "AutofillUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showFillUi(): id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p1

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", filter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " chars"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "size":I
    goto :goto_36

    .line 182
    :cond_34
    move-object/from16 v10, p1

    :goto_36
    const/16 v0, 0x38e

    .line 183
    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-static {v0, v12, v11, v13, v14}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v2, 0x38f

    .line 186
    if-nez p3, :cond_4a

    move v3, v1

    goto :goto_4e

    :cond_4a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_4e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 185
    invoke-virtual {v0, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v2, 0x38d

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_5f

    goto :goto_67

    :cond_5f
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v15

    .line 190
    .local v15, "log":Landroid/metrics/LogMaker;
    move-object/from16 v8, p0

    iget-object v7, v8, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;

    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, p8

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, p3

    move-object v9, v6

    move-object/from16 v6, p6

    move-object v10, v7

    move-object/from16 v7, p7

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/metrics/LogMaker;)V

    invoke-virtual {v10, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method

.method public showSaveUi(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;Z)V
    .registers 28
    .param p1, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p2, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "servicePackageName"    # Ljava/lang/String;
    .param p4, "info"    # Landroid/service/autofill/SaveInfo;
    .param p5, "valueFinder"    # Landroid/service/autofill/ValueFinder;
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p8, "pendingSaveUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p9, "compatMode"    # Z

    .line 272
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2a

    .line 273
    const-string v0, "AutofillUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSaveUi() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 275
    :cond_2a
    move-object/from16 v2, p4

    :goto_2c
    const/4 v0, 0x0

    .line 276
    .local v0, "numIds":I
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_36

    move v1, v3

    goto :goto_3b

    :cond_36
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    array-length v1, v1

    :goto_3b
    add-int/2addr v0, v1

    .line 277
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    if-nez v1, :cond_43

    goto :goto_48

    :cond_43
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    array-length v3, v1

    :goto_48
    add-int/2addr v0, v3

    .line 279
    const/16 v1, 0x394

    move-object/from16 v15, p8

    iget v3, v15, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    .line 280
    move-object/from16 v14, p3

    move-object/from16 v13, p6

    move/from16 v12, p9

    invoke-static {v1, v13, v14, v3, v12}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v3, 0x395

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 284
    .local v1, "log":Landroid/metrics/LogMaker;
    move-object/from16 v11, p0

    iget-object v10, v11, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$xTxq_LM_GKvWtCQ0xT88Q_Y8M7Q;

    move-object v3, v9

    move-object v4, v11

    move-object/from16 v5, p7

    move-object v6, v15

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v16, v0

    move-object v0, v9

    move-object v9, v14

    .end local v0    # "numIds":I
    .local v16, "numIds":I
    move-object v15, v10

    move-object v10, v13

    move-object v11, v2

    move-object/from16 v12, p5

    move-object v13, v1

    move/from16 v14, p9

    invoke-direct/range {v3 .. v14}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$xTxq_LM_GKvWtCQ0xT88Q_Y8M7Q;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;Z)V

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    return-void
.end method
