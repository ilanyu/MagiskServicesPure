.class Lcom/android/server/GestureLauncherService$1;
.super Landroid/content/BroadcastReceiver;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/GestureLauncherService;

    .line 423
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 426
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 427
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/GestureLauncherService;->mUserId:I
    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->access$202(Lcom/android/server/GestureLauncherService;I)I

    .line 428
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    # getter for: Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$400(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    # getter for: Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->access$300(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    # invokes: Lcom/android/server/GestureLauncherService;->registerContentObservers()V
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$500(Lcom/android/server/GestureLauncherService;)V

    .line 430
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    # invokes: Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$600(Lcom/android/server/GestureLauncherService;)V

    .line 431
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 433
    :cond_3a
    return-void
.end method
