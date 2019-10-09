.class Lcom/android/server/wm/AccountHelper$2;
.super Landroid/app/IMiuiActivityObserver$Stub;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccountHelper;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AccountHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/AccountHelper;

    .line 206
    iput-object p1, p0, Lcom/android/server/wm/AccountHelper$2;->this$0:Lcom/android/server/wm/AccountHelper;

    invoke-direct {p0}, Landroid/app/IMiuiActivityObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activityDestroyed(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    return-void
.end method

.method public activityIdle(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    return-void
.end method

.method public activityPaused(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    return-void
.end method

.method public activityResumed(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/wm/AccountHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/wm/AccountHelper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 216
    const-string v2, "MiuiPermision"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resume packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mListenMode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AccountHelper$2;->this$0:Lcom/android/server/wm/AccountHelper;

    # getter for: Lcom/android/server/wm/AccountHelper;->mListenMode:I
    invoke-static {v4}, Lcom/android/server/wm/AccountHelper;->access$200(Lcom/android/server/wm/AccountHelper;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_3c
    # getter for: Lcom/android/server/wm/AccountHelper;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/wm/AccountHelper;->access$300()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.xiaomi"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 220
    .local v2, "accounts":[Landroid/accounts/Account;
    # getter for: Lcom/android/server/wm/AccountHelper;->sAccessActiviteis:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/wm/AccountHelper;->access$400()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    .line 221
    iget-object v3, p0, Lcom/android/server/wm/AccountHelper$2;->this$0:Lcom/android/server/wm/AccountHelper;

    # getter for: Lcom/android/server/wm/AccountHelper;->mListenMode:I
    invoke-static {v3}, Lcom/android/server/wm/AccountHelper;->access$200(Lcom/android/server/wm/AccountHelper;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_66

    .line 223
    # getter for: Lcom/android/server/wm/AccountHelper;->mCallBack:Lcom/android/server/wm/AccountHelper$AccountCallback;
    invoke-static {}, Lcom/android/server/wm/AccountHelper;->access$500()Lcom/android/server/wm/AccountHelper$AccountCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wm/AccountHelper$AccountCallback;->onWifiSettingFinish()V

    goto :goto_79

    .line 224
    :cond_66
    iget-object v3, p0, Lcom/android/server/wm/AccountHelper$2;->this$0:Lcom/android/server/wm/AccountHelper;

    # getter for: Lcom/android/server/wm/AccountHelper;->mListenMode:I
    invoke-static {v3}, Lcom/android/server/wm/AccountHelper;->access$200(Lcom/android/server/wm/AccountHelper;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_79

    .line 225
    iget-object v3, p0, Lcom/android/server/wm/AccountHelper$2;->this$0:Lcom/android/server/wm/AccountHelper;

    # getter for: Lcom/android/server/wm/AccountHelper;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/wm/AccountHelper;->access$300()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/AccountHelper;->addAccount(Landroid/content/Context;)V

    .line 228
    :cond_79
    :goto_79
    return-void
.end method

.method public activityStopped(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 244
    return-object p0
.end method
