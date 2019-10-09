.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$13;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyManagerService.java"

# interfaces
.implements Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 861
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uidDataActivityChanged(Ljava/lang/String;IZJ)V
    .registers 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "active"    # Z
    .param p4, "tsNanos"    # J

    .line 865
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v1

    .line 866
    nop

    .line 865
    const/4 v2, 0x3

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 867
    return-void
.end method
