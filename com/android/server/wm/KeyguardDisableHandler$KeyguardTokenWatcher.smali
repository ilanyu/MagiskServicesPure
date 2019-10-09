.class Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;
.super Landroid/os/TokenWatcher;
.source "KeyguardDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/KeyguardDisableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyguardTokenWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/KeyguardDisableHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/wm/KeyguardDisableHandler;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    .line 94
    const-string v0, "WindowManager"

    invoke-direct {p0, p2, v0}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 95
    return-void
.end method


# virtual methods
.method public acquired()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    # getter for: Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I
    invoke-static {v0}, Lcom/android/server/wm/KeyguardDisableHandler;->access$000(Lcom/android/server/wm/KeyguardDisableHandler;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 117
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->updateAllowState()V

    .line 119
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    # getter for: Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I
    invoke-static {v0}, Lcom/android/server/wm/KeyguardDisableHandler;->access$000(Lcom/android/server/wm/KeyguardDisableHandler;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->enableKeyguard(Z)V

    goto :goto_25

    .line 122
    :cond_1e
    const-string v0, "WindowManager"

    const-string v1, "Not disabling keyguard since device policy is enforced"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_25
    return-void
.end method

.method public released()V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 129
    return-void
.end method

.method public updateAllowState()V
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 102
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_29

    .line 104
    :try_start_e
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    .line 106
    const/4 v2, 0x0

    .line 105
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 104
    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    if-nez v2, :cond_23

    .line 107
    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    .line 104
    :goto_24
    # setter for: Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I
    invoke-static {v1, v2}, Lcom/android/server/wm/KeyguardDisableHandler;->access$002(Lcom/android/server/wm/KeyguardDisableHandler;I)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_27} :catch_28

    .line 110
    goto :goto_29

    .line 108
    :catch_28
    move-exception v1

    .line 112
    :cond_29
    :goto_29
    return-void
.end method
