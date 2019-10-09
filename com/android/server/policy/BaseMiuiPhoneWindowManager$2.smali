.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->layoutWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

.field final synthetic val$enableNotchConfig:Z

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 332
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->val$pkg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->val$enableNotchConfig:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 337
    .local v0, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 338
    .local v1, "ext":Landroid/os/Bundle;
    const-string/jumbo v2, "pkg"

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v2, "enable_config"

    iget-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->val$enableNotchConfig:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    if-eqz v0, :cond_29

    .line 341
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowStatusBinder:Landroid/os/Binder;
    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/os/Binder;

    move-result-object v3

    const-string/jumbo v4, "upate_specail_mode"

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/android/internal/statusbar/IStatusBarService;->setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 347
    .end local v0    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v1    # "ext":Landroid/os/Bundle;
    :cond_29
    goto :goto_37

    .line 343
    :catch_2a
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 348
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method
