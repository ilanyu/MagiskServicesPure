.class Lcom/android/server/gamepad/BsGamePadService$3;
.super Landroid/content/BroadcastReceiver;
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

    .line 101
    iput-object p1, p0, Lcom/android/server/gamepad/BsGamePadService$3;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 104
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 105
    .local v0, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 106
    .local v1, "packageName":Ljava/lang/String;
    :goto_17
    const-string v2, "com.blackshark.gamecontroller"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadService$3;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    # getter for: Lcom/android/server/gamepad/BsGamePadService;->mGameControllerUid:I
    invoke-static {v2}, Lcom/android/server/gamepad/BsGamePadService;->access$400(Lcom/android/server/gamepad/BsGamePadService;)I

    move-result v2

    if-ne v2, v0, :cond_43

    .line 107
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadService$3;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/gamepad/BsGamePadService;->mEnableAppSwitch:Z
    invoke-static {v2, v3}, Lcom/android/server/gamepad/BsGamePadService;->access$202(Lcom/android/server/gamepad/BsGamePadService;Z)Z

    .line 108
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadService$3;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    # getter for: Lcom/android/server/gamepad/BsGamePadService;->mInputFilter:Lcom/android/server/gamepad/BsGamePadInputFilter;
    invoke-static {v2}, Lcom/android/server/gamepad/BsGamePadService;->access$100(Lcom/android/server/gamepad/BsGamePadService;)Lcom/android/server/gamepad/BsGamePadInputFilter;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 109
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadService$3;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    # getter for: Lcom/android/server/gamepad/BsGamePadService;->mInputFilter:Lcom/android/server/gamepad/BsGamePadInputFilter;
    invoke-static {v2}, Lcom/android/server/gamepad/BsGamePadService;->access$100(Lcom/android/server/gamepad/BsGamePadService;)Lcom/android/server/gamepad/BsGamePadInputFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/gamepad/BsGamePadInputFilter;->unloadKeyMap()V

    .line 111
    :cond_3e
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadService$3;->this$0:Lcom/android/server/gamepad/BsGamePadService;

    # invokes: Lcom/android/server/gamepad/BsGamePadService;->updateGamePadFilter(Z)V
    invoke-static {v2, v3}, Lcom/android/server/gamepad/BsGamePadService;->access$000(Lcom/android/server/gamepad/BsGamePadService;Z)V

    .line 113
    :cond_43
    return-void
.end method
