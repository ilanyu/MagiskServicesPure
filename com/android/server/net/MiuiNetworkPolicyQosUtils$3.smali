.class Lcom/android/server/net/MiuiNetworkPolicyQosUtils$3;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyQosUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->setQos(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

.field final synthetic val$add:Z

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;IZ)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    .line 145
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    iput p2, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$3;->val$uid:I

    iput-boolean p3, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$3;->val$add:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 148
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mNetMgrService:Lcom/android/server/MiuiNetworkManagementService;
    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->access$100(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;)Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->IPPROTO_UDP:I

    iget v2, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$3;->val$uid:I

    iget-boolean v3, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$3;->val$add:Z

    const/16 v4, 0xb8

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/MiuiNetworkManagementService;->setQos(IIIZ)Z

    move-result v0

    .line 149
    .local v0, "rst":Z
    const-string v1, "MiuiNetworkPolicyQosUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setQos rst="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",add="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$3;->val$add:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$3;->val$uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    iget-boolean v2, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$3;->val$add:Z

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->updateDscpStatus(Z)V
    invoke-static {v1, v2}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->access$200(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;Z)V

    .line 151
    :cond_46
    return-void
.end method
