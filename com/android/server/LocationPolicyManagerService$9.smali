.class Lcom/android/server/LocationPolicyManagerService$9;
.super Ljava/lang/Object;
.source "LocationPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 1009
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1012
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_6e

    .line 1045
    return v1

    .line 1030
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 1031
    .local v0, "restrictBackground":Z
    :goto_f
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # getter for: Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/LocationPolicyManagerService;->access$1600(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1032
    .local v3, "length":I
    nop

    .local v1, "i":I
    :goto_1a
    if-ge v1, v3, :cond_32

    .line 1033
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # getter for: Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/LocationPolicyManagerService;->access$1600(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/location/ILocationPolicyListener;

    .line 1034
    .local v4, "listener":Landroid/location/ILocationPolicyListener;
    if-eqz v4, :cond_2f

    .line 1036
    :try_start_2a
    invoke-interface {v4, v0}, Landroid/location/ILocationPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 1038
    goto :goto_2f

    .line 1037
    :catch_2e
    move-exception v5

    .line 1032
    .end local v4    # "listener":Landroid/location/ILocationPolicyListener;
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1041
    .end local v1    # "i":I
    :cond_32
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # getter for: Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->access$1600(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1042
    return v2

    .line 1014
    .end local v0    # "restrictBackground":Z
    .end local v3    # "length":I
    :pswitch_3c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1015
    .local v0, "uid":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 1016
    .local v3, "uidRules":I
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # getter for: Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/LocationPolicyManagerService;->access$1600(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 1017
    .local v4, "length":I
    nop

    .restart local v1    # "i":I
    :goto_4b
    if-ge v1, v4, :cond_63

    .line 1018
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # getter for: Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/server/LocationPolicyManagerService;->access$1600(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/location/ILocationPolicyListener;

    .line 1019
    .local v5, "listener":Landroid/location/ILocationPolicyListener;
    if-eqz v5, :cond_60

    .line 1021
    :try_start_5b
    invoke-interface {v5, v0, v3}, Landroid/location/ILocationPolicyListener;->onUidRulesChanged(II)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 1023
    goto :goto_60

    .line 1022
    :catch_5f
    move-exception v6

    .line 1017
    .end local v5    # "listener":Landroid/location/ILocationPolicyListener;
    :cond_60
    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 1026
    .end local v1    # "i":I
    :cond_63
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # getter for: Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->access$1600(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1027
    return v2

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_8
    .end packed-switch
.end method
