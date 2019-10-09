.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getExtraSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;F)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

.field final synthetic val$disabledFlag:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 1456
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->val$disabledFlag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1460
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1461
    .local v0, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_1b

    .line 1462
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->val$disabledFlag:I

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;
    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$900(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/os/Binder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 1468
    .end local v0    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1b
    goto :goto_29

    .line 1464
    :catch_1c
    move-exception v0

    .line 1466
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1467
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1469
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method
