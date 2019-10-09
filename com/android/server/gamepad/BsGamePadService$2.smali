.class Lcom/android/server/gamepad/BsGamePadService$2;
.super Lmiui/process/IForegroundInfoListener$Stub;
.source "BsGamePadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/gamepad/BsGamePadService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/gamepad/BsGamePadService;


# direct methods
.method constructor <init>(Lcom/android/server/gamepad/BsGamePadService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/gamepad/BsGamePadService;

    .line 89
    iput-object p1, p0, Lcom/android/server/gamepad/BsGamePadService$2;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    invoke-direct {p0}, Lmiui/process/IForegroundInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V
    .registers 5
    .param p1, "foregroundInfo"    # Lmiui/process/ForegroundInfo;

    .line 92
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadService$2;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    # getter for: Lcom/android/server/gamepad/BsGamePadService;->mEnableAppSwitch:Z
    invoke-static {v0}, Lcom/android/server/gamepad/BsGamePadService;->access$200(Lcom/android/server/gamepad/BsGamePadService;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.blackshark.gamecontroller.APP_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.blackshark.gamecontroller"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string/jumbo v1, "pkg"

    iget-object v2, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadService$2;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    # getter for: Lcom/android/server/gamepad/BsGamePadService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/gamepad/BsGamePadService;->access$300(Lcom/android/server/gamepad/BsGamePadService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 98
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_27
    return-void
.end method
