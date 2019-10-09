.class Lcom/android/server/connectivity/PermissionMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "PermissionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PermissionMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PermissionMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/PermissionMonitor;

    .line 99
    iput-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 104
    .local v1, "user":I
    const-string v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 105
    .local v2, "appUid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 106
    .local v3, "appData":Landroid/net/Uri;
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    .line 108
    .local v4, "appName":Ljava/lang/String;
    :goto_1f
    const-string v5, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 109
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->onUserAdded(I)V
    invoke-static {v5, v1}, Lcom/android/server/connectivity/PermissionMonitor;->access$000(Lcom/android/server/connectivity/PermissionMonitor;I)V

    goto :goto_56

    .line 110
    :cond_2d
    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 111
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->onUserRemoved(I)V
    invoke-static {v5, v1}, Lcom/android/server/connectivity/PermissionMonitor;->access$100(Lcom/android/server/connectivity/PermissionMonitor;I)V

    goto :goto_56

    .line 112
    :cond_3b
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 113
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->onAppAdded(Ljava/lang/String;I)V
    invoke-static {v5, v4, v2}, Lcom/android/server/connectivity/PermissionMonitor;->access$200(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;I)V

    goto :goto_56

    .line 114
    :cond_49
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 115
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->onAppRemoved(I)V
    invoke-static {v5, v2}, Lcom/android/server/connectivity/PermissionMonitor;->access$300(Lcom/android/server/connectivity/PermissionMonitor;I)V

    .line 117
    :cond_56
    :goto_56
    return-void
.end method
