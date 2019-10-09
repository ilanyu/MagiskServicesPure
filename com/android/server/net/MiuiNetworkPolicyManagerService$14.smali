.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;
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

    .line 871
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 874
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 876
    .local v1, "data":Landroid/net/Uri;
    if-nez v1, :cond_b

    .line 877
    return-void

    .line 879
    :cond_b
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 880
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 881
    return-void

    .line 884
    :cond_16
    const-string v3, "android.intent.extra.UID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 885
    .local v3, "uid":I
    if-ne v3, v4, :cond_20

    .line 886
    return-void

    .line 889
    :cond_20
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 891
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictAppsPN:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 892
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictApps:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1600(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 894
    :cond_41
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyAppsPN:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1700(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 895
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyApps:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1900(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 897
    :cond_5a
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNeedRestrictPowerSaveAppsPN:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1100(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 898
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNeedRestrictPowerSaveApps:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 900
    :cond_73
    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyAllowed()Z
    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3300()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 901
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyAppsPN:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_9a

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyAppsPN:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 902
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyApps:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3500(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 905
    :cond_9a
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mQosUtils:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3600(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    move-result-object v4

    if-eqz v4, :cond_13a

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mQosUtils:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3600(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->updateAppPN(Ljava/lang/String;IZ)Z

    goto/16 :goto_13a

    .line 906
    :cond_ae
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13a

    .line 908
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictAppsPN:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 909
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictApps:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1600(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 911
    :cond_cf
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyAppsPN:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1700(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 912
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyApps:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1900(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 914
    :cond_e8
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNeedRestrictPowerSaveAppsPN:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1100(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 915
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNeedRestrictPowerSaveApps:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1300(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 917
    :cond_101
    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyAllowed()Z
    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3300()Z

    move-result v4

    if-eqz v4, :cond_128

    .line 918
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyAppsPN:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_128

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyAppsPN:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_128

    .line 919
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyApps:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3500(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 922
    :cond_128
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mQosUtils:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3600(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    move-result-object v4

    if-eqz v4, :cond_13a

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mQosUtils:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;
    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3600(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->updateAppPN(Ljava/lang/String;IZ)Z

    .line 924
    :cond_13a
    :goto_13a
    return-void
.end method
