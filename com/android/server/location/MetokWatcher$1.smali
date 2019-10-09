.class Lcom/android/server/location/MetokWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "MetokWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/MetokWatcher;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/MetokWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/location/MetokWatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/MetokWatcher;

    .line 92
    iput-object p1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 99
    .local v1, "userId":I
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 100
    iget-object v2, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v2, v1}, Lcom/android/server/location/MetokWatcher;->switchUser(I)V

    goto :goto_27

    .line 101
    :cond_1a
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 102
    iget-object v2, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v2, v1}, Lcom/android/server/location/MetokWatcher;->unlockUser(I)V

    .line 104
    :cond_27
    :goto_27
    return-void
.end method
