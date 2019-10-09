.class Lcom/miui/server/enterprise/EnterpriseManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/enterprise/EnterpriseManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/enterprise/EnterpriseManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/enterprise/EnterpriseManagerService;

    .line 44
    iput-object p1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService$1;->this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 48
    return-void

    .line 50
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_84

    goto :goto_46

    :sswitch_15
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v1, 0x2

    goto :goto_46

    :sswitch_1f
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    move v1, v3

    goto :goto_46

    :sswitch_29
    const-string v2, "com.miui.enterprise.ACTION_CERT_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v1, 0x4

    goto :goto_46

    :sswitch_33
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v1, 0x1

    goto :goto_46

    :sswitch_3d
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v1, 0x3

    :cond_46
    :goto_46
    packed-switch v1, :pswitch_data_9a

    goto :goto_82

    .line 67
    :pswitch_4a
    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService$1;->this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;

    const-string v1, "extra_ent_cert"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/miui/enterprise/signature/EnterpriseCer;

    # setter for: Lcom/miui/server/enterprise/EnterpriseManagerService;->mCert:Lcom/miui/enterprise/signature/EnterpriseCer;
    invoke-static {v0, v1}, Lcom/miui/server/enterprise/EnterpriseManagerService;->access$402(Lcom/miui/server/enterprise/EnterpriseManagerService;Lcom/miui/enterprise/signature/EnterpriseCer;)Lcom/miui/enterprise/signature/EnterpriseCer;

    .line 68
    goto :goto_82

    .line 63
    :pswitch_58
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, "userId":I
    iget-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService$1;->this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;

    # invokes: Lcom/miui/server/enterprise/EnterpriseManagerService;->onUserRemoved(I)V
    invoke-static {v1, v0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->access$300(Lcom/miui/server/enterprise/EnterpriseManagerService;I)V

    .line 65
    goto :goto_82

    .line 59
    .end local v0    # "userId":I
    :pswitch_64
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 60
    .restart local v0    # "userId":I
    iget-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService$1;->this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;

    # invokes: Lcom/miui/server/enterprise/EnterpriseManagerService;->onUserSwitched(I)V
    invoke-static {v1, v0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->access$200(Lcom/miui/server/enterprise/EnterpriseManagerService;I)V

    .line 61
    goto :goto_82

    .line 55
    .end local v0    # "userId":I
    :pswitch_70
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 56
    .restart local v0    # "userId":I
    iget-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService$1;->this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;

    # invokes: Lcom/miui/server/enterprise/EnterpriseManagerService;->onUserStarted(I)V
    invoke-static {v1, v0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->access$100(Lcom/miui/server/enterprise/EnterpriseManagerService;I)V

    .line 57
    goto :goto_82

    .line 52
    .end local v0    # "userId":I
    :pswitch_7c
    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService$1;->this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;

    # invokes: Lcom/miui/server/enterprise/EnterpriseManagerService;->bootComplete()V
    invoke-static {v0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->access$000(Lcom/miui/server/enterprise/EnterpriseManagerService;)V

    .line 53
    nop

    .line 71
    :goto_82
    return-void

    nop

    :sswitch_data_84
    .sparse-switch
        -0x7ad942ef -> :sswitch_3d
        -0x2d021ace -> :sswitch_33
        0x3f221b7 -> :sswitch_29
        0x2f94f923 -> :sswitch_1f
        0x392cb822 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_70
        :pswitch_64
        :pswitch_58
        :pswitch_4a
    .end packed-switch
.end method
