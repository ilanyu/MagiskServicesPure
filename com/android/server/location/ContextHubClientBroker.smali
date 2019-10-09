.class public Lcom/android/server/location/ContextHubClientBroker;
.super Landroid/hardware/location/IContextHubClient$Stub;
.source "ContextHubClientBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextHubClientBroker"


# instance fields
.field private final mAttachedContextHubId:I

.field private final mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

.field private final mClientManager:Lcom/android/server/location/ContextHubClientManager;

.field private final mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

.field private final mHostEndPointId:S


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;ISLandroid/hardware/location/IContextHubClientCallback;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextHubProxy"    # Landroid/hardware/contexthub/V1_0/IContexthub;
    .param p3, "clientManager"    # Lcom/android/server/location/ContextHubClientManager;
    .param p4, "contextHubId"    # I
    .param p5, "hostEndPointId"    # S
    .param p6, "callback"    # Landroid/hardware/location/IContextHubClientCallback;

    .line 81
    invoke-direct {p0}, Landroid/hardware/location/IContextHubClient$Stub;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    iput-object p1, p0, Lcom/android/server/location/ContextHubClientBroker;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/server/location/ContextHubClientBroker;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 84
    iput-object p3, p0, Lcom/android/server/location/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 85
    iput p4, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubId:I

    .line 86
    iput-short p5, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    .line 87
    iput-object p6, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    .line 88
    return-void
.end method


# virtual methods
.method attachDeathRecipient()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 97
    return-void
.end method

.method public binderDied()V
    .registers 4

    .line 145
    :try_start_0
    invoke-static {p0}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClient;->close()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 148
    goto :goto_10

    .line 146
    :catch_8
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubClientBroker"

    const-string v2, "RemoteException while closing client on death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public close()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 136
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    iget-short v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v0, v1}, Lcom/android/server/location/ContextHubClientManager;->unregisterClient(S)V

    .line 138
    :cond_10
    return-void
.end method

.method getAttachedContextHubId()I
    .registers 2

    .line 155
    iget v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubId:I

    return v0
.end method

.method getHostEndPointId()S
    .registers 2

    .line 162
    iget-short v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    return v0
.end method

.method onHubReset()V
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 219
    :try_start_8
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->onHubReset()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 223
    goto :goto_2c

    .line 220
    :catch_e
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubClientBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while calling onHubReset on client (host endpoint ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    :goto_2c
    return-void
.end method

.method onNanoAppAborted(JI)V
    .registers 8
    .param p1, "nanoAppId"    # J
    .param p3, "abortCode"    # I

    .line 234
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 236
    :try_start_8
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppAborted(JI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 240
    goto :goto_2c

    .line 237
    :catch_e
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubClientBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while calling onNanoAppAborted on client (host endpoint ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    :goto_2c
    return-void
.end method

.method onNanoAppLoaded(J)V
    .registers 7
    .param p1, "nanoAppId"    # J

    .line 187
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 189
    :try_start_8
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppLoaded(J)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 193
    goto :goto_2c

    .line 190
    :catch_e
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubClientBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while calling onNanoAppLoaded on client (host endpoint ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    :goto_2c
    return-void
.end method

.method onNanoAppUnloaded(J)V
    .registers 7
    .param p1, "nanoAppId"    # J

    .line 203
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 205
    :try_start_8
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppUnloaded(J)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 209
    goto :goto_2c

    .line 206
    :catch_e
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubClientBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while calling onNanoAppUnloaded on client (host endpoint ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    :goto_2c
    return-void
.end method

.method sendMessageToClient(Landroid/hardware/location/NanoAppMessage;)V
    .registers 6
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 171
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 173
    :try_start_8
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubClientCallback;->onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 177
    goto :goto_2c

    .line 174
    :catch_e
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubClientBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while sending message to client (host endpoint ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    :goto_2c
    return-void
.end method

.method public sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I
    .registers 8
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 108
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->checkPermissions(Landroid/content/Context;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mConnectionOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3e

    .line 112
    iget-short v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-static {v0, p1}, Lcom/android/server/location/ContextHubServiceUtil;->createHidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    move-result-object v0

    .line 116
    .local v0, "messageToNanoApp":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    :try_start_14
    iget-object v2, p0, Lcom/android/server/location/ContextHubClientBroker;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    iget v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubId:I

    invoke-interface {v2, v3, v0}, Landroid/hardware/contexthub/V1_0/IContexthub;->sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1c} :catch_1e

    move v1, v2

    .line 121
    .local v1, "result":I
    goto :goto_3d

    .line 117
    .end local v1    # "result":I
    :catch_1e
    move-exception v2

    .line 118
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ContextHubClientBroker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException in sendMessageToNanoApp (target hub ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    nop

    .line 122
    .end local v0    # "messageToNanoApp":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "result":I
    :goto_3d
    goto :goto_46

    .line 123
    .end local v1    # "result":I
    :cond_3e
    const-string v0, "ContextHubClientBroker"

    const-string v2, "Failed to send message to nanoapp: client connection is closed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    nop

    .restart local v1    # "result":I
    :goto_46
    move v0, v1

    .line 127
    .end local v1    # "result":I
    .local v0, "result":I
    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v1

    return v1
.end method
