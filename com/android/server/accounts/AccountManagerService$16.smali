.class Lcom/android/server/accounts/AccountManagerService$16;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$statusToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V
    .registers 11
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "stripAuthTokenFromResult"    # Z
    .param p7, "accountName"    # Ljava/lang/String;
    .param p8, "authDetailsRequired"    # Z

    .line 3829
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p9, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$account:Landroid/accounts/Account;

    iput-object p10, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$statusToken:Ljava/lang/String;

    invoke-direct/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "result"    # Landroid/os/Bundle;

    .line 3843
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3844
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$16;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 3845
    .local v0, "response":Landroid/accounts/IAccountManagerResponse;
    if-nez v0, :cond_b

    .line 3846
    return-void

    .line 3849
    :cond_b
    const/4 v1, 0x5

    if-nez p1, :cond_17

    .line 3850
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const-string/jumbo v3, "null bundle"

    # invokes: Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    invoke-static {v2, v0, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->access$2400(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3854
    return-void

    .line 3857
    :cond_17
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 3858
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " calling onResult() on response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    :cond_41
    const-string v2, "errorCode"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_5c

    .line 3864
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const-string v2, "errorCode"

    .line 3865
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errorMessage"

    .line 3866
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3864
    # invokes: Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->access$2400(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3867
    return-void

    .line 3869
    :cond_5c
    const-string v2, "booleanResult"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 3870
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const-string/jumbo v3, "no result in response"

    # invokes: Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    invoke-static {v2, v0, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->access$2400(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3874
    return-void

    .line 3876
    :cond_6d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3877
    .local v1, "newResult":Landroid/os/Bundle;
    const-string v2, "booleanResult"

    const-string v3, "booleanResult"

    const/4 v4, 0x0

    .line 3878
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3877
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3879
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # invokes: Lcom/android/server/accounts/AccountManagerService;->sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    invoke-static {v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->access$2500(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 3880
    return-void
.end method

.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3838
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$16;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$statusToken:Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 3839
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 5
    .param p1, "now"    # J

    .line 3832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCredentialsUpdateSuggested, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
