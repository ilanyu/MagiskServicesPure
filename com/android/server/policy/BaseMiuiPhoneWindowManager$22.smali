.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$22;
.super Landroid/content/BroadcastReceiver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2948
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$22;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2950
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2951
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.miui.app.ExtraStatusBarManager.action_enter_drive_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2952
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$22;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mForbidFullScreen:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4502(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    goto :goto_21

    .line 2953
    :cond_13
    const-string v1, "com.miui.app.ExtraStatusBarManager.action_leave_drive_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2954
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$22;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mForbidFullScreen:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4502(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 2956
    :cond_21
    :goto_21
    return-void
.end method
