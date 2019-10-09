.class Lcom/android/server/policy/MiuiPhoneWindowManager$1;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/wm/AccountHelper$AccountCallback;


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

    .line 122
    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWifiSettingFinish()V
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiSecurityPermissionHandler:Lmiui/view/MiuiSecurityPermissionHandler;
    invoke-static {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$000(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/view/MiuiSecurityPermissionHandler;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 140
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiSecurityPermissionHandler:Lmiui/view/MiuiSecurityPermissionHandler;
    invoke-static {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$000(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/view/MiuiSecurityPermissionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->handleWifiSettingFinish()V

    .line 142
    :cond_11
    return-void
.end method

.method public onXiaomiAccountLogin()V
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiSecurityPermissionHandler:Lmiui/view/MiuiSecurityPermissionHandler;
    invoke-static {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$000(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/view/MiuiSecurityPermissionHandler;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 126
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiSecurityPermissionHandler:Lmiui/view/MiuiSecurityPermissionHandler;
    invoke-static {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$000(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/view/MiuiSecurityPermissionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->handleAccountLogin()V

    .line 128
    :cond_11
    return-void
.end method

.method public onXiaomiAccountLogout()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiSecurityPermissionHandler:Lmiui/view/MiuiSecurityPermissionHandler;
    invoke-static {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$000(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/view/MiuiSecurityPermissionHandler;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 133
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiSecurityPermissionHandler:Lmiui/view/MiuiSecurityPermissionHandler;
    invoke-static {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$000(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/view/MiuiSecurityPermissionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->handleAccountLogout()V

    .line 135
    :cond_11
    return-void
.end method
