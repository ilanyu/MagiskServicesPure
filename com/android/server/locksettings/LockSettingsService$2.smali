.class Lcom/android/server/locksettings/LockSettingsService$2;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 636
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 639
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 641
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 642
    .local v0, "userHandle":I
    if-lez v0, :cond_1b

    .line 643
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V
    invoke-static {v1, v0, v2}, Lcom/android/server/locksettings/LockSettingsService;->access$800(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    .line 645
    :cond_1b
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 646
    .local v1, "ks":Landroid/security/KeyStore;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 647
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_2e

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    goto :goto_2f

    :cond_2e
    const/4 v3, -0x1

    .line 648
    .local v3, "parentHandle":I
    :goto_2f
    invoke-virtual {v1, v0, v3}, Landroid/security/KeyStore;->onUserAdded(II)V

    .line 649
    .end local v0    # "userHandle":I
    .end local v1    # "ks":Landroid/security/KeyStore;
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "parentHandle":I
    goto :goto_66

    :cond_33
    const-string v0, "android.intent.action.USER_STARTING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 650
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 651
    .restart local v0    # "userHandle":I
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .line 652
    .end local v0    # "userHandle":I
    goto :goto_66

    :cond_4d
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 653
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 654
    .restart local v0    # "userHandle":I
    if-lez v0, :cond_66

    .line 655
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V
    invoke-static {v2, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->access$800(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    .line 658
    .end local v0    # "userHandle":I
    :cond_66
    :goto_66
    return-void
.end method
