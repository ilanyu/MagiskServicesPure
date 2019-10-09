.class Lcom/android/server/policy/MiuiPhoneWindowManager$2;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiPhoneWindowManager;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;

    .line 145
    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddAccount()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mAccountHelper:Lcom/android/server/wm/AccountHelper;
    invoke-static {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$200(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lcom/android/server/wm/AccountHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccountHelper;->addAccount(Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method public onHideWaterMarker()V
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mPhoneWindowCallback:Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;
    invoke-static {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$100(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 172
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mPhoneWindowCallback:Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;
    invoke-static {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$100(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;->onHideWatermark()V

    .line 174
    :cond_11
    return-void
.end method

.method public onListenAccount(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 161
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mAccountHelper:Lcom/android/server/wm/AccountHelper;
    invoke-static {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$200(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lcom/android/server/wm/AccountHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccountHelper;->ListenAccount(I)V

    .line 162
    return-void
.end method

.method public onListenPermission()V
    .registers 1

    .line 179
    return-void
.end method

.method public onShowWaterMarker()V
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mPhoneWindowCallback:Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;
    invoke-static {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$100(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 149
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mPhoneWindowCallback:Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;
    invoke-static {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$100(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;->onShowWatermark()V

    .line 151
    :cond_11
    return-void
.end method

.method public onUnListenAccount(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mAccountHelper:Lcom/android/server/wm/AccountHelper;
    invoke-static {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$200(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lcom/android/server/wm/AccountHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccountHelper;->UnListenAccount(I)V

    .line 167
    return-void
.end method
