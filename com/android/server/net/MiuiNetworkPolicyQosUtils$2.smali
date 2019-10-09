.class Lcom/android/server/net/MiuiNetworkPolicyQosUtils$2;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyQosUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->enableQos(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    .line 124
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    iput-boolean p2, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$2;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mNetMgrService:Lcom/android/server/MiuiNetworkManagementService;
    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->access$100(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;)Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$2;->val$enable:Z

    invoke-virtual {v0, v1}, Lcom/android/server/MiuiNetworkManagementService;->enableQos(Z)Z

    move-result v0

    .line 128
    .local v0, "rst":Z
    const-string v1, "MiuiNetworkPolicyQosUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableQos rst="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    iget-boolean v2, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$2;->val$enable:Z

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->updateDscpStatus(Z)V
    invoke-static {v1, v2}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->access$200(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;Z)V

    .line 130
    :cond_2b
    return-void
.end method
