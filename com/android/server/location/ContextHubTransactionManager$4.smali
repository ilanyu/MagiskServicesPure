.class Lcom/android/server/location/ContextHubTransactionManager$4;
.super Lcom/android/server/location/ContextHubServiceTransaction;
.source "ContextHubTransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ContextHubTransactionManager;->createDisableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ContextHubTransactionManager;

.field final synthetic val$contextHubId:I

.field final synthetic val$nanoAppId:J

.field final synthetic val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method constructor <init>(Lcom/android/server/location/ContextHubTransactionManager;IIIJLandroid/hardware/location/IContextHubTransactionCallback;)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/location/ContextHubTransactionManager;
    .param p2, "id"    # I
    .param p3, "type"    # I

    .line 230
    iput-object p1, p0, Lcom/android/server/location/ContextHubTransactionManager$4;->this$0:Lcom/android/server/location/ContextHubTransactionManager;

    iput p4, p0, Lcom/android/server/location/ContextHubTransactionManager$4;->val$contextHubId:I

    iput-wide p5, p0, Lcom/android/server/location/ContextHubTransactionManager$4;->val$nanoAppId:J

    iput-object p7, p0, Lcom/android/server/location/ContextHubTransactionManager$4;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-direct {p0, p2, p3}, Lcom/android/server/location/ContextHubServiceTransaction;-><init>(II)V

    return-void
.end method


# virtual methods
.method onTransact()I
    .registers 6

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager$4;->this$0:Lcom/android/server/location/ContextHubTransactionManager;

    # getter for: Lcom/android/server/location/ContextHubTransactionManager;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;
    invoke-static {v0}, Lcom/android/server/location/ContextHubTransactionManager;->access$000(Lcom/android/server/location/ContextHubTransactionManager;)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/ContextHubTransactionManager$4;->val$contextHubId:I

    iget-wide v2, p0, Lcom/android/server/location/ContextHubTransactionManager$4;->val$nanoAppId:J

    .line 235
    invoke-virtual {p0}, Lcom/android/server/location/ContextHubTransactionManager$4;->getTransactionId()I

    move-result v4

    .line 234
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/hardware/contexthub/V1_0/IContexthub;->disableNanoApp(IJI)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 236
    :catch_13
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubTransactionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while trying to disable nanoapp with ID 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/location/ContextHubTransactionManager$4;->val$nanoAppId:J

    .line 238
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    const/4 v1, 0x1

    return v1
.end method

.method onTransactionComplete(I)V
    .registers 5
    .param p1, "result"    # I

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager$4;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 249
    goto :goto_e

    .line 247
    :catch_6
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "RemoteException while calling client onTransactionComplete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
