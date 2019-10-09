.class Lcom/android/server/trust/TrustAgentWrapper$2;
.super Landroid/os/Handler;
.source "TrustAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .line 123
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_390

    goto/16 :goto_38e

    .line 264
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 265
    .local v0, "message":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/trust/TrustManagerService;->showKeyguardErrorMessage(Ljava/lang/CharSequence;)V

    .line 266
    goto/16 :goto_38e

    .line 257
    .end local v0    # "message":Ljava/lang/CharSequence;
    :pswitch_21
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 258
    .local v0, "handle":J
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 259
    .local v2, "userId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "escrow_token"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 260
    .local v3, "eToken":[B
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3, v2}, Lcom/android/server/trust/TrustManagerService;->unlockUserWithToken(J[BI)V

    .line 261
    goto/16 :goto_38e

    .line 229
    .end local v0    # "handle":J
    .end local v2    # "userId":I
    .end local v3    # "eToken":[B
    :pswitch_4b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 230
    .restart local v0    # "handle":J
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v5, "user_id"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 231
    .restart local v2    # "userId":I
    iget-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v5

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->isEscrowTokenActive(JI)Z

    move-result v5

    .line 233
    .local v5, "active":Z
    :try_start_6a
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;
    invoke-static {v6}, Lcom/android/server/trust/TrustAgentWrapper;->access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v6

    if-eqz v6, :cond_80

    .line 234
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;
    invoke-static {v6}, Lcom/android/server/trust/TrustAgentWrapper;->access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v6

    .line 235
    if-eqz v5, :cond_7b

    goto :goto_7d

    .line 236
    :cond_7b
    nop

    .line 234
    move v3, v4

    :goto_7d
    invoke-interface {v6, v0, v1, v3}, Landroid/service/trust/ITrustAgentService;->onTokenStateReceived(JI)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_80} :catch_82

    .line 240
    :cond_80
    goto/16 :goto_38e

    .line 238
    :catch_82
    move-exception v3

    .line 239
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # invokes: Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V
    invoke-static {v4, v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1700(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V

    .line 241
    .end local v3    # "e":Landroid/os/RemoteException;
    goto/16 :goto_38e

    .line 244
    .end local v0    # "handle":J
    .end local v2    # "userId":I
    .end local v5    # "active":Z
    :pswitch_8a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 245
    .restart local v0    # "handle":J
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 246
    .restart local v2    # "userId":I
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->removeEscrowToken(JI)Z

    move-result v3

    .line 248
    .local v3, "success":Z
    :try_start_a9
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;
    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v4

    if-eqz v4, :cond_ba

    .line 249
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;
    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v4

    invoke-interface {v4, v0, v1, v3}, Landroid/service/trust/ITrustAgentService;->onEscrowTokenRemoved(JZ)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ba} :catch_bc

    .line 253
    :cond_ba
    goto/16 :goto_38e

    .line 251
    :catch_bc
    move-exception v4

    .line 252
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # invokes: Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V
    invoke-static {v5, v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$1700(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V

    .line 254
    .end local v4    # "e":Landroid/os/RemoteException;
    goto/16 :goto_38e

    .line 209
    .end local v0    # "handle":J
    .end local v2    # "userId":I
    .end local v3    # "success":Z
    :pswitch_c4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "escrow_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 210
    .local v0, "eToken":[B
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 211
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/trust/TrustManagerService;->addEscrowToken([BI)J

    move-result-wide v2

    .line 212
    .local v2, "handle":J
    nop

    .line 214
    .local v4, "resultDeliverred":Z
    :try_start_e4
    iget-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;
    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v5

    if-eqz v5, :cond_fa

    .line 215
    iget-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;
    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v5

    .line 216
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 215
    invoke-interface {v5, v0, v2, v3, v6}, Landroid/service/trust/ITrustAgentService;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_f9} :catch_fb

    .line 217
    const/4 v4, 0x1

    .line 221
    :cond_fa
    goto :goto_101

    .line 219
    :catch_fb
    move-exception v5

    .line 220
    .local v5, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # invokes: Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V
    invoke-static {v6, v5}, Lcom/android/server/trust/TrustAgentWrapper;->access$1700(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V

    .line 223
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_101
    if-nez v4, :cond_38e

    .line 224
    iget-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v1}, Lcom/android/server/trust/TrustManagerService;->removeEscrowToken(JI)Z

    goto/16 :goto_38e

    .line 200
    .end local v0    # "eToken":[B
    .end local v1    # "userId":I
    .end local v2    # "handle":J
    .end local v4    # "resultDeliverred":Z
    :pswitch_10e
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_115

    goto :goto_116

    :cond_115
    move v3, v4

    :goto_116
    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z
    invoke-static {v0, v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1502(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 201
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1500(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v0

    if-nez v0, :cond_12b

    .line 202
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z
    invoke-static {v0, v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$202(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 203
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v0, v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$302(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 205
    :cond_12b
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1500(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/trust/TrustArchive;->logManagingTrust(ILandroid/content/ComponentName;Z)V

    .line 206
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 207
    goto/16 :goto_38e

    .line 184
    :pswitch_159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 185
    .local v0, "token":Landroid/os/IBinder;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_162

    goto :goto_163

    :cond_162
    move v3, v4

    :goto_163
    move v1, v3

    .line 186
    .local v1, "result":Z
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1300(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_1b7

    .line 187
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;
    invoke-static {v3, v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$1302(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 188
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$1400(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v2

    if-eqz v2, :cond_38e

    if-eqz v1, :cond_38e

    .line 189
    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1a1

    const-string v2, "TrustAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-enabling agent because it acknowledged enabled features: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 190
    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1a1
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z
    invoke-static {v2, v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$1402(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 192
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    goto/16 :goto_38e

    .line 195
    :cond_1b7
    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v2

    if-eqz v2, :cond_38e

    const-string v2, "TrustAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring MSG_SET_TRUST_AGENT_FEATURES_COMPLETED with obsolete token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 196
    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38e

    .line 178
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "result":Z
    :pswitch_1df
    const-string v0, "TrustAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection attempt to agent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " timed out, rebinding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 181
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->resetAgent(Landroid/content/ComponentName;I)V

    .line 182
    goto/16 :goto_38e

    .line 164
    :pswitch_220
    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_246

    const-string v0, "TrustAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trust timed out : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_246
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v3

    iget-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/trust/TrustArchive;->logTrustTimeout(ILandroid/content/ComponentName;)V

    .line 166
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # invokes: Lcom/android/server/trust/TrustAgentWrapper;->onTrustTimeout()V
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1200(Lcom/android/server/trust/TrustAgentWrapper;)V

    .line 169
    :pswitch_262
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z
    invoke-static {v0, v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$202(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 170
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v0, v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$302(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 171
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_291

    .line 173
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustArchive;->logRevokeTrust(ILandroid/content/ComponentName;)V

    .line 175
    :cond_291
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 176
    goto/16 :goto_38e

    .line 128
    :pswitch_2a2
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2cb

    .line 129
    const-string v0, "TrustAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agent is not connected, cannot grant trust: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 130
    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 133
    :cond_2cb
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z
    invoke-static {v0, v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$202(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 134
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v0, v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$302(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 135
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 136
    .local v0, "flags":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "duration"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 137
    .local v12, "durationMs":J
    const-wide/16 v5, 0x0

    cmp-long v3, v12, v5

    if-lez v3, :cond_350

    .line 139
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$400(Lcom/android/server/trust/TrustAgentWrapper;)J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-eqz v3, :cond_324

    .line 144
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$400(Lcom/android/server/trust/TrustAgentWrapper;)J

    move-result-wide v5

    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 145
    .local v5, "duration":J
    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v3

    if-eqz v3, :cond_325

    .line 146
    const-string v3, "TrustAgentWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM lock timeout in effect. Timeout adjusted from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_325

    .line 150
    .end local v5    # "duration":J
    :cond_324
    move-wide v5, v12

    .line 152
    .restart local v5    # "duration":J
    :cond_325
    :goto_325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 153
    .local v7, "expiration":J
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v9, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/trust/TrustAgentWrapper;->access$700(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;
    invoke-static {v10}, Lcom/android/server/trust/TrustAgentWrapper;->access$800(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Intent;

    move-result-object v10

    const/high16 v11, 0x10000000

    invoke-static {v9, v4, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v3, v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$602(Lcom/android/server/trust/TrustAgentWrapper;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 155
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$900(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/AlarmManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 156
    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->access$600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 155
    invoke-virtual {v3, v1, v7, v8, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 158
    .end local v5    # "duration":J
    .end local v7    # "expiration":J
    :cond_350
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v1

    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v6

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v7

    .line 159
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$300(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_378

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$300(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    :goto_376
    move-object v8, v2

    goto :goto_379

    .line 159
    :cond_378
    goto :goto_376

    .line 158
    :goto_379
    move-wide v9, v12

    move v11, v0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/trust/TrustArchive;->logGrantTrust(ILandroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 161
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 162
    nop

    .line 269
    .end local v0    # "flags":I
    .end local v12    # "durationMs":J
    :cond_38e
    :goto_38e
    return-void

    nop

    :pswitch_data_390
    .packed-switch 0x1
        :pswitch_2a2
        :pswitch_262
        :pswitch_220
        :pswitch_1df
        :pswitch_159
        :pswitch_10e
        :pswitch_c4
        :pswitch_8a
        :pswitch_4b
        :pswitch_21
        :pswitch_b
    .end packed-switch
.end method
