.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;
.super Landroid/content/BroadcastReceiver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 1604
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1606
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1607
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v1

    const-string v2, "capture_delay"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1610
    return-void
.end method
