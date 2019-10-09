.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$17;
.super Landroid/content/BroadcastReceiver;
.source "MiuiNetworkPolicyManagerService.java"


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

    .line 980
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 983
    const-string v0, "apnType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "apnType":Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 985
    return-void

    .line 987
    :cond_f
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string/jumbo v2, "state"

    .line 988
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 987
    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 989
    .local v1, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3800(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    if-ne v2, v1, :cond_27

    .line 990
    return-void

    .line 992
    :cond_27
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # setter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v2, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3802(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 994
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v1, v2, :cond_37

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLatencyState:I
    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3900()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_41

    :cond_37
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v1, v2, :cond_4c

    .line 995
    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLatencyState:I
    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3900()I

    move-result v2

    if-nez v2, :cond_4c

    .line 996
    :cond_41
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 998
    :cond_4c
    return-void
.end method
