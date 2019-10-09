.class Lcom/android/server/net/MiuiNetworkPolicyQosUtils$1;
.super Lmiui/process/IActivityChangeListener$Stub;
.source "MiuiNetworkPolicyQosUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MiuiNetworkPolicyQosUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    .line 82
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    invoke-direct {p0}, Lmiui/process/IActivityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "preName"    # Landroid/content/ComponentName;
    .param p2, "curName"    # Landroid/content/ComponentName;

    .line 85
    const-string v0, "MiuiNetworkPolicyQosUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mActivityChangeListener preName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",curName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-eqz p1, :cond_56

    if-nez p2, :cond_24

    goto :goto_56

    .line 87
    :cond_24
    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "cur":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "pre":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 90
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->tryToSetQos(Z)V
    invoke-static {v2, v3}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->access$000(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;Z)V

    goto :goto_55

    .line 91
    :cond_41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 92
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->tryToSetQos(Z)V
    invoke-static {v2, v3}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->access$000(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;Z)V

    .line 94
    :cond_55
    :goto_55
    return-void

    .line 86
    .end local v0    # "cur":Ljava/lang/String;
    .end local v1    # "pre":Ljava/lang/String;
    :cond_56
    :goto_56
    return-void
.end method
