.class Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/ScreenEffectService;)V
    .registers 2

    .line 695
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/ScreenEffectService;Lcom/android/server/display/ScreenEffectService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p2, "x1"    # Lcom/android/server/display/ScreenEffectService$1;

    .line 695
    invoke-direct {p0, p1}, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;-><init>(Lcom/android/server/display/ScreenEffectService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 698
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # invokes: Lcom/android/server/display/ScreenEffectService;->loadSettings()V
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$2600(Lcom/android/server/display/ScreenEffectService;)V

    .line 699
    # getter for: Lcom/android/server/display/ScreenEffectService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->access$300()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 702
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 705
    :cond_22
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 706
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 708
    # getter for: Lcom/android/server/display/ScreenEffectService;->SUPPORT_MONOCHROME_MODE:Z
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 709
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 710
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 713
    :cond_5b
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT_ADJ:Z

    if-eqz v0, :cond_76

    .line 714
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 715
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 718
    :cond_76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_94

    .line 719
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 720
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 722
    :cond_94
    return-void
.end method
