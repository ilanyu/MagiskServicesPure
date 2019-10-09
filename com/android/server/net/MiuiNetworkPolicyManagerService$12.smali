.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 777
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 780
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x1388

    const-wide/16 v3, 0x61a8

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_196

    goto/16 :goto_194

    .line 848
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2d

    .line 849
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # setter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mRpsEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3102(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)Z

    .line 850
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mRpsEnabled:Z
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3100(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v1

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableRps(Z)V
    invoke-static {v0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3200(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    .line 852
    :cond_2d
    return v8

    .line 845
    :pswitch_2e
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateMobileLatency()V
    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3000(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    .line 846
    return v8

    .line 817
    :pswitch_34
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v8, :cond_3e

    move v7, v8

    nop

    :cond_3e
    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updatePowerSaveForUidDataActivityChanged(IZ)V
    invoke-static {v0, v1, v7}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2700(Lcom/android/server/net/MiuiNetworkPolicyManagerService;IZ)V

    .line 818
    return v8

    .line 820
    :pswitch_42
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mTrafficPolicyMode:I
    invoke-static {v0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2802(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)I

    .line 821
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->networkPriorityMode()I
    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$100(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v0

    .line 822
    .local v0, "networkPriority":I
    const-string v1, "MiuiNetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkPriorityMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNetworkPriorityMode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 823
    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I
    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$200(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mWifiConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z
    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 822
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v1

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$200(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v1

    if-eq v0, v1, :cond_97

    .line 825
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableNetworkPriority(I)V
    invoke-static {v1, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    .line 827
    :cond_97
    return v8

    .line 841
    .end local v0    # "networkPriority":I
    :pswitch_98
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->calculateBandWidth()V
    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2900(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    .line 842
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 843
    return v8

    .line 835
    :pswitch_aa
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLimitEnabled:Z
    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v0

    if-nez v0, :cond_c0

    .line 836
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateLimit(Z)V
    invoke-static {v0, v8}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2500(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    .line 837
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 839
    :cond_c0
    return v8

    .line 829
    :pswitch_c1
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLimitEnabled:Z
    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 830
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateLimit(Z)V
    invoke-static {v0, v7}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2500(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    .line 831
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 833
    :cond_d7
    return v8

    .line 788
    :pswitch_d8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 789
    .local v0, "label":Ljava/lang/String;
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 790
    .local v9, "uid":I
    iget v10, p1, Landroid/os/Message;->arg2:I

    if-ne v10, v8, :cond_e4

    move v10, v8

    goto :goto_e5

    :cond_e4
    move v10, v7

    .line 791
    .local v10, "isActive":Z
    :goto_e5
    iget-object v11, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$600(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_135

    .line 792
    if-eqz v10, :cond_113

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLimitEnabled:Z
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v1

    if-nez v1, :cond_113

    .line 793
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 794
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 795
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateLimit(Z)V
    invoke-static {v1, v8}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2500(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    goto :goto_181

    .line 796
    :cond_113
    if-nez v10, :cond_181

    .line 797
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 798
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 799
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLimitEnabled:Z
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v1

    if-eqz v1, :cond_181

    .line 800
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateLimit(Z)V
    invoke-static {v1, v7}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2500(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    goto :goto_181

    .line 803
    :cond_135
    const-string/jumbo v3, "ps"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_181

    .line 804
    const/16 v3, 0x8

    if-eqz v10, :cond_169

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2600(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v4

    if-eqz v4, :cond_169

    .line 805
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 806
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v3, v9, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_181

    .line 808
    :cond_169
    if-nez v10, :cond_181

    .line 809
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 810
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2600(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v1

    if-nez v1, :cond_181

    .line 811
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updatePowerSaveForUidDataActivityChanged(IZ)V
    invoke-static {v1, v9, v10}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2700(Lcom/android/server/net/MiuiNetworkPolicyManagerService;IZ)V

    .line 815
    :cond_181
    :goto_181
    return v8

    .line 785
    .end local v0    # "label":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "isActive":Z
    :pswitch_182
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->removeUidState(I)V
    invoke-static {v0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2200(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    .line 786
    goto :goto_194

    .line 782
    :pswitch_18a
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateUidState(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$2100(Lcom/android/server/net/MiuiNetworkPolicyManagerService;II)V

    .line 783
    nop

    .line 856
    :goto_194
    return v7

    nop

    :pswitch_data_196
    .packed-switch 0x1
        :pswitch_18a
        :pswitch_182
        :pswitch_d8
        :pswitch_c1
        :pswitch_aa
        :pswitch_98
        :pswitch_42
        :pswitch_34
        :pswitch_2e
        :pswitch_f
    .end packed-switch
.end method
