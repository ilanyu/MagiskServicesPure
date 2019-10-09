.class Lcom/android/server/location/ContextHubTransactionManager$1;
.super Lcom/android/server/location/ContextHubServiceTransaction;
.source "ContextHubTransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ContextHubTransactionManager;

.field final synthetic val$contextHubId:I

.field final synthetic val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

.field final synthetic val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method constructor <init>(Lcom/android/server/location/ContextHubTransactionManager;IILandroid/hardware/location/NanoAppBinary;ILandroid/hardware/location/IContextHubTransactionCallback;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/location/ContextHubTransactionManager;
    .param p2, "id"    # I
    .param p3, "type"    # I

    .line 106
    iput-object p1, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/ContextHubTransactionManager;

    iput-object p4, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    iput p5, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->val$contextHubId:I

    iput-object p6, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-direct {p0, p2, p3}, Lcom/android/server/location/ContextHubServiceTransaction;-><init>(II)V

    return-void
.end method


# virtual methods
.method onTransact()I
    .registers 7

    .line 109
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 110
    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->createHidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    move-result-object v0

    .line 112
    .local v0, "hidlNanoAppBinary":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    :try_start_6
    iget-object v1, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/ContextHubTransactionManager;

    # getter for: Lcom/android/server/location/ContextHubTransactionManager;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;
    invoke-static {v1}, Lcom/android/server/location/ContextHubTransactionManager;->access$000(Lcom/android/server/location/ContextHubTransactionManager;)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->val$contextHubId:I

    .line 113
    invoke-virtual {p0}, Lcom/android/server/location/ContextHubTransactionManager$1;->getTransactionId()I

    move-result v3

    .line 112
    invoke-interface {v1, v2, v0, v3}, Landroid/hardware/contexthub/V1_0/IContexthub;->loadNanoApp(ILandroid/hardware/contexthub/V1_0/NanoAppBinary;I)I

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v1

    .line 114
    :catch_17
    move-exception v1

    .line 115
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ContextHubTransactionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException while trying to load nanoapp with ID 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 116
    invoke-virtual {v4}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    const/4 v2, 0x1

    return v2
.end method

.method onTransactionComplete(I)V
    .registers 7
    .param p1, "result"    # I

    .line 123
    if-nez p1, :cond_19

    .line 127
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/ContextHubTransactionManager;

    # getter for: Lcom/android/server/location/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;
    invoke-static {v0}, Lcom/android/server/location/ContextHubTransactionManager;->access$100(Lcom/android/server/location/ContextHubTransactionManager;)Lcom/android/server/location/NanoAppStateManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->val$contextHubId:I

    iget-object v2, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 128
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 129
    invoke-virtual {v4}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v4

    .line 127
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/location/NanoAppStateManager;->addNanoAppInstance(IJI)V

    .line 132
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    .line 133
    if-nez p1, :cond_31

    .line 134
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/ContextHubTransactionManager;

    # getter for: Lcom/android/server/location/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/ContextHubClientManager;
    invoke-static {v0}, Lcom/android/server/location/ContextHubTransactionManager;->access$200(Lcom/android/server/location/ContextHubTransactionManager;)Lcom/android/server/location/ContextHubClientManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->val$contextHubId:I

    iget-object v2, p0, Lcom/android/server/location/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {v2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/ContextHubClientManager;->onNanoAppLoaded(IJ)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_31} :catch_32

    .line 138
    :cond_31
    goto :goto_3a

    .line 136
    :catch_32
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "RemoteException while calling client onTransactionComplete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3a
    return-void
.end method
