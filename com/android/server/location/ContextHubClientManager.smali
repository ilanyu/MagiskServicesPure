.class Lcom/android/server/location/ContextHubClientManager;
.super Ljava/lang/Object;
.source "ContextHubClientManager.java"


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = true

.field private static final MAX_CLIENT_ID:I = 0x7fff

.field private static final TAG:Ljava/lang/String; = "ContextHubClientManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

.field private final mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Short;",
            "Lcom/android/server/location/ContextHubClientBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mNextHostEndpointId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextHubProxy"    # Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/ContextHubClientManager;->mNextHostEndpointId:I

    .line 75
    iput-object p1, p0, Lcom/android/server/location/ContextHubClientManager;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/server/location/ContextHubClientManager;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 77
    return-void
.end method

.method private broadcastMessage(ILandroid/hardware/location/NanoAppMessage;)V
    .registers 4
    .param p1, "contextHubId"    # I
    .param p2, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 222
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$f15OSYbsSONpkXn7GinnrBPeumw;

    invoke-direct {v0, p2}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$f15OSYbsSONpkXn7GinnrBPeumw;-><init>(Landroid/hardware/location/NanoAppMessage;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 223
    return-void
.end method

.method private declared-synchronized createNewClientBroker(Landroid/hardware/location/IContextHubClientCallback;I)Lcom/android/server/location/ContextHubClientBroker;
    .registers 16
    .param p1, "clientCallback"    # Landroid/hardware/location/IContextHubClientCallback;
    .param p2, "contextHubId"    # I

    monitor-enter p0

    .line 194
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const v1, 0x8000

    if-eq v0, v1, :cond_50

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "broker":Lcom/android/server/location/ContextHubClientBroker;
    iget v1, p0, Lcom/android/server/location/ContextHubClientManager;->mNextHostEndpointId:I

    .line 200
    .local v1, "id":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "id":I
    :goto_12
    const/16 v4, 0x7fff

    if-gt v1, v4, :cond_4e

    .line 201
    iget-object v5, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    int-to-short v6, v3

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 202
    new-instance v5, Lcom/android/server/location/ContextHubClientBroker;

    iget-object v7, p0, Lcom/android/server/location/ContextHubClientManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/location/ContextHubClientManager;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    int-to-short v11, v3

    move-object v6, v5

    move-object v9, p0

    move v10, p2

    move-object v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/ContextHubClientBroker;-><init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;ISLandroid/hardware/location/IContextHubClientCallback;)V

    move-object v0, v5

    .line 204
    iget-object v5, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    int-to-short v6, v3

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    if-ne v3, v4, :cond_3f

    goto :goto_41

    :cond_3f
    add-int/lit8 v2, v3, 0x1

    :goto_41
    iput v2, p0, Lcom/android/server/location/ContextHubClientManager;->mNextHostEndpointId:I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_58

    .line 206
    goto :goto_4e

    .line 209
    :cond_44
    if-ne v3, v4, :cond_48

    move v4, v2

    goto :goto_4a

    :cond_48
    add-int/lit8 v4, v3, 0x1

    :goto_4a
    move v3, v4

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 212
    .end local v1    # "i":I
    :cond_4e
    :goto_4e
    monitor-exit p0

    return-object v0

    .line 195
    .end local v0    # "broker":Lcom/android/server/location/ContextHubClientBroker;
    .end local v3    # "id":I
    :cond_50
    :try_start_50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not register client - max limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_58

    .line 193
    .end local p1    # "clientCallback":Landroid/hardware/location/IContextHubClientCallback;
    .end local p2    # "contextHubId":I
    :catchall_58
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/ContextHubClientManager;
    throw p1
.end method

.method private forEachClientOfHub(ILjava/util/function/Consumer;)V
    .registers 6
    .param p1, "contextHubId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/location/ContextHubClientBroker;",
            ">;)V"
        }
    .end annotation

    .line 232
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/location/ContextHubClientBroker;>;"
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/ContextHubClientBroker;

    .line 233
    .local v1, "broker":Lcom/android/server/location/ContextHubClientBroker;
    invoke-virtual {v1}, Lcom/android/server/location/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v2

    if-ne v2, p1, :cond_1f

    .line 234
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 236
    .end local v1    # "broker":Lcom/android/server/location/ContextHubClientBroker;
    :cond_1f
    goto :goto_a

    .line 237
    :cond_20
    return-void
.end method

.method static synthetic lambda$broadcastMessage$4(Landroid/hardware/location/NanoAppMessage;Lcom/android/server/location/ContextHubClientBroker;)V
    .registers 2
    .param p0, "message"    # Landroid/hardware/location/NanoAppMessage;
    .param p1, "client"    # Lcom/android/server/location/ContextHubClientBroker;

    .line 222
    invoke-virtual {p1, p0}, Lcom/android/server/location/ContextHubClientBroker;->sendMessageToClient(Landroid/hardware/location/NanoAppMessage;)V

    return-void
.end method

.method static synthetic lambda$onHubReset$2(Lcom/android/server/location/ContextHubClientBroker;)V
    .registers 1
    .param p0, "client"    # Lcom/android/server/location/ContextHubClientBroker;

    .line 169
    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientBroker;->onHubReset()V

    return-void
.end method

.method static synthetic lambda$onNanoAppAborted$3(JILcom/android/server/location/ContextHubClientBroker;)V
    .registers 4
    .param p0, "nanoAppId"    # J
    .param p2, "abortCode"    # I
    .param p3, "client"    # Lcom/android/server/location/ContextHubClientBroker;

    .line 178
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->onNanoAppAborted(JI)V

    return-void
.end method

.method static synthetic lambda$onNanoAppLoaded$0(JLcom/android/server/location/ContextHubClientBroker;)V
    .registers 3
    .param p0, "nanoAppId"    # J
    .param p2, "client"    # Lcom/android/server/location/ContextHubClientBroker;

    .line 154
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/ContextHubClientBroker;->onNanoAppLoaded(J)V

    return-void
.end method

.method static synthetic lambda$onNanoAppUnloaded$1(JLcom/android/server/location/ContextHubClientBroker;)V
    .registers 3
    .param p0, "nanoAppId"    # J
    .param p2, "client"    # Lcom/android/server/location/ContextHubClientBroker;

    .line 162
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/ContextHubClientBroker;->onNanoAppUnloaded(J)V

    return-void
.end method


# virtual methods
.method onHubReset(I)V
    .registers 3
    .param p1, "contextHubId"    # I

    .line 169
    sget-object v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo;->INSTANCE:Lcom/android/server/location/-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo;

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 170
    return-void
.end method

.method onMessageFromNanoApp(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .registers 8
    .param p1, "contextHubId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 113
    invoke-static {p2}, Lcom/android/server/location/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;

    move-result-object v0

    .line 116
    .local v0, "clientMessage":Landroid/hardware/location/NanoAppMessage;
    const-string v1, "ContextHubClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppMessage;->isBroadcastMessage()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 120
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->broadcastMessage(ILandroid/hardware/location/NanoAppMessage;)V

    goto :goto_55

    .line 122
    :cond_24
    iget-object v1, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-short v2, p2, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/ContextHubClientBroker;

    .line 123
    .local v1, "proxy":Lcom/android/server/location/ContextHubClientBroker;
    if-eqz v1, :cond_38

    .line 124
    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubClientBroker;->sendMessageToClient(Landroid/hardware/location/NanoAppMessage;)V

    goto :goto_55

    .line 126
    :cond_38
    const-string v2, "ContextHubClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot send message to unregistered client (host endpoint ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p2, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v1    # "proxy":Lcom/android/server/location/ContextHubClientBroker;
    :goto_55
    return-void
.end method

.method onNanoAppAborted(IJI)V
    .registers 6
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "abortCode"    # I

    .line 178
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$WHzSH2f-YJ3FaiF7JXPP-7oX9EE;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$WHzSH2f-YJ3FaiF7JXPP-7oX9EE;-><init>(JI)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 179
    return-void
.end method

.method onNanoAppLoaded(IJ)V
    .registers 5
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J

    .line 154
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$VPD5ebhe8Z67S8QKuTR4KzeshK8;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$VPD5ebhe8Z67S8QKuTR4KzeshK8;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 155
    return-void
.end method

.method onNanoAppUnloaded(IJ)V
    .registers 5
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J

    .line 162
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$gN_vRogwyzr9qBjrQpKwwHzrFAo;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$gN_vRogwyzr9qBjrQpKwwHzrFAo;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 163
    return-void
.end method

.method registerClient(Landroid/hardware/location/IContextHubClientCallback;I)Landroid/hardware/location/IContextHubClient;
    .registers 7
    .param p1, "clientCallback"    # Landroid/hardware/location/IContextHubClientCallback;
    .param p2, "contextHubId"    # I

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubClientManager;->createNewClientBroker(Landroid/hardware/location/IContextHubClientCallback;I)Lcom/android/server/location/ContextHubClientBroker;

    move-result-object v0

    .line 94
    .local v0, "broker":Lcom/android/server/location/ContextHubClientBroker;
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker;->attachDeathRecipient()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_27

    .line 100
    nop

    .line 102
    const-string v1, "ContextHubClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered client with host endpoint ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker;->getHostEndPointId()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {v0}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    move-result-object v1

    return-object v1

    .line 95
    :catch_27
    move-exception v1

    .line 97
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ContextHubClientManager"

    const-string v3, "Failed to attach death recipient to client"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker;->close()V

    .line 99
    const/4 v2, 0x0

    return-object v2
.end method

.method unregisterClient(S)V
    .registers 5
    .param p1, "hostEndPointId"    # S

    .line 141
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 142
    const-string v0, "ContextHubClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistered client with host endpoint ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 144
    :cond_23
    const-string v0, "ContextHubClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot unregister non-existing client with host endpoint ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_39
    return-void
.end method
