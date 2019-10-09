.class Lcom/miui/server/InputMethodHelper$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "InputMethodHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/InputMethodHelper;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/miui/server/InputMethodHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .registers 2
    .param p1, "newProfileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public onLockedBootComplete(I)V
    .registers 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 7
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .line 35
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "InputMethodHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserSwitching\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v1, p0, Lcom/miui/server/InputMethodHelper$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/miui/server/InputMethodHelper;->initForUser(Landroid/content/Context;I)V
    invoke-static {v1, p1}, Lcom/miui/server/InputMethodHelper;->access$000(Landroid/content/Context;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2e

    .line 38
    if-eqz p2, :cond_2d

    .line 40
    :try_start_1f
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    .line 43
    :goto_22
    goto :goto_2d

    .line 41
    :catch_23
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodHelper"

    const-string/jumbo v2, "sendResult"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_22

    .line 46
    :cond_2d
    :goto_2d
    return-void

    .line 38
    :catchall_2e
    move-exception v1

    if-eqz p2, :cond_3e

    .line 40
    :try_start_31
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35

    .line 43
    goto :goto_3e

    .line 41
    :catch_35
    move-exception v0

    .line 42
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "InputMethodHelper"

    const-string/jumbo v3, "sendResult"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3e
    :goto_3e
    throw v1
.end method
