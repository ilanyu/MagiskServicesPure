.class abstract Lcom/android/server/accounts/AccountManagerService$StartAccountSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "StartAccountSession"
.end annotation


# instance fields
.field private final mIsPasswordForwardingAllowed:Z

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZ)V
    .registers 21
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "accountName"    # Ljava/lang/String;
    .param p7, "authDetailsRequired"    # Z
    .param p8, "updateLastAuthenticationTime"    # Z
    .param p9, "isPasswordForwardingAllowed"    # Z

    move-object v10, p0

    .line 3389
    move-object v1, p1

    iput-object v1, v10, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3390
    const/4 v6, 0x1

    move-object v0, v10

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 3393
    move/from16 v0, p9

    iput-boolean v0, v10, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mIsPasswordForwardingAllowed:Z

    .line 3394
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "result"    # Landroid/os/Bundle;

    .line 3398
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3399
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mNumResults:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mNumResults:I

    .line 3400
    const/4 v0, 0x0

    .line 3401
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x5

    if-eqz p1, :cond_29

    const-string v2, "intent"

    .line 3402
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    move-object v0, v2

    if-eqz v2, :cond_29

    .line 3403
    nop

    .line 3404
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3403
    invoke-virtual {p0, v2, v0}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->checkKeyIntent(ILandroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 3406
    const-string v2, "invalid intent in bundle returned"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->onError(ILjava/lang/String;)V

    .line 3408
    return-void

    .line 3412
    :cond_29
    iget-boolean v2, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mExpectActivityLaunch:Z

    if-eqz v2, :cond_3a

    if-eqz p1, :cond_3a

    const-string v2, "intent"

    .line 3413
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3414
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 3414
    .local v2, "response":Landroid/accounts/IAccountManagerResponse;
    goto :goto_3e

    .line 3416
    .end local v2    # "response":Landroid/accounts/IAccountManagerResponse;
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v2

    .line 3418
    .restart local v2    # "response":Landroid/accounts/IAccountManagerResponse;
    :goto_3e
    if-nez v2, :cond_41

    .line 3419
    return-void

    .line 3421
    :cond_41
    const/4 v3, 0x2

    if-nez p1, :cond_76

    .line 3422
    const-string v4, "AccountManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 3423
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " calling onError() on response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    :cond_6d
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const-string/jumbo v4, "null bundle returned"

    # invokes: Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    invoke-static {v3, v2, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->access$2400(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3428
    return-void

    .line 3431
    :cond_76
    const-string v4, "errorCode"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_93

    if-nez v0, :cond_93

    .line 3434
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const-string v3, "errorCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorMessage"

    .line 3435
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3434
    # invokes: Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->access$2400(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3436
    return-void

    .line 3440
    :cond_93
    iget-boolean v4, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mIsPasswordForwardingAllowed:Z

    if-nez v4, :cond_9d

    .line 3441
    const-string/jumbo v4, "password"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3445
    :cond_9d
    const-string v4, "authtoken"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3447
    const-string v4, "AccountManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 3448
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3449
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " calling onResult() on response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3448
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    :cond_cb
    const-string v3, "accountSessionBundle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 3457
    .local v3, "sessionBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_11c

    .line 3458
    const-string v4, "accountType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3459
    .local v4, "accountType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e7

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mAccountType:Ljava/lang/String;

    .line 3460
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 3461
    :cond_e7
    const-string v5, "AccountManagerService"

    const-string v6, "Account type in session bundle doesn\'t match request."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    :cond_ee
    const-string v5, "accountType"

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mAccountType:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3469
    :try_start_f5
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    move-result-object v5

    .line 3470
    .local v5, "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    invoke-virtual {v5, v3}, Lcom/android/server/accounts/CryptoHelper;->encryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 3471
    .local v6, "encryptedBundle":Landroid/os/Bundle;
    const-string v7, "accountSessionBundle"

    invoke-virtual {p1, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_102
    .catch Ljava/security/GeneralSecurityException; {:try_start_f5 .. :try_end_102} :catch_103

    .line 3479
    .end local v5    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    .end local v6    # "encryptedBundle":Landroid/os/Bundle;
    goto :goto_11c

    .line 3472
    :catch_103
    move-exception v5

    .line 3473
    .local v5, "e":Ljava/security/GeneralSecurityException;
    const-string v6, "AccountManagerService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_114

    .line 3474
    const-string v6, "AccountManagerService"

    const-string v7, "Failed to encrypt session bundle!"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3476
    :cond_114
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const-string v7, "failed to encrypt session bundle"

    # invokes: Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    invoke-static {v6, v2, v1, v7}, Lcom/android/server/accounts/AccountManagerService;->access$2400(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3478
    return-void

    .line 3482
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "e":Ljava/security/GeneralSecurityException;
    :cond_11c
    :goto_11c
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # invokes: Lcom/android/server/accounts/AccountManagerService;->sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    invoke-static {v1, v2, p1}, Lcom/android/server/accounts/AccountManagerService;->access$2500(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 3483
    return-void
.end method
