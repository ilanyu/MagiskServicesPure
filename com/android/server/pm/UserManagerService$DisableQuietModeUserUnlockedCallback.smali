.class Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;
.super Landroid/os/IProgressListener$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableQuietModeUserUnlockedCallback"
.end annotation


# instance fields
.field private final mTarget:Landroid/content/IntentSender;

.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V
    .registers 3
    .param p2, "target"    # Landroid/content/IntentSender;

    .line 407
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    .line 408
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->mTarget:Landroid/content/IntentSender;

    .line 410
    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/Bundle;)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->mTarget:Landroid/content/IntentSender;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_f
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_f} :catch_10

    .line 424
    goto :goto_18

    .line 422
    :catch_10
    move-exception v0

    .line 423
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "UserManagerService"

    const-string v2, "Failed to start the target in the callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_18
    return-void
.end method

.method public onProgress(IILandroid/os/Bundle;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 416
    return-void
.end method

.method public onStarted(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 413
    return-void
.end method
