.class public final Lcom/android/server/InputMethodManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/InputMethodManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1291
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1292
    new-instance v0, Lcom/android/server/InputMethodManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    .line 1293
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 1313
    const/16 v0, 0x226

    if-ne p1, v0, :cond_12

    .line 1314
    const-string/jumbo v0, "statusbar"

    .line 1315
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1316
    .local v0, "statusBarService":Lcom/android/server/statusbar/StatusBarManagerService;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 1318
    .end local v0    # "statusBarService":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_12
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 1297
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    new-instance v1, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1299
    const-string v0, "input_method"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1300
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 1306
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/InputMethodManagerService;->onSwitchUser(I)V

    .line 1307
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .line 1323
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1388

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1325
    return-void
.end method
