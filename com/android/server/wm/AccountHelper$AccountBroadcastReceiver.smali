.class Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccountHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/AccountHelper;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;->this$0:Lcom/android/server/wm/AccountHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/AccountHelper;Lcom/android/server/wm/AccountHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/AccountHelper;
    .param p2, "x1"    # Lcom/android/server/wm/AccountHelper$1;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;-><init>(Lcom/android/server/wm/AccountHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 102
    if-nez p2, :cond_3

    .line 103
    return-void

    .line 105
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 107
    const-string v1, "extra_update_type"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 108
    .local v1, "type":I
    const-string v2, "extra_account"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 109
    .local v2, "account":Landroid/accounts/Account;
    if-eqz v2, :cond_56

    iget-object v3, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.xiaomi"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_56

    .line 114
    :cond_2b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 115
    .local v3, "appContext":Landroid/content/Context;
    const/4 v4, 0x1

    if-ne v1, v4, :cond_38

    .line 117
    iget-object v4, p0, Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;->this$0:Lcom/android/server/wm/AccountHelper;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/wm/AccountHelper;->onXiaomiAccountLogout(Landroid/content/Context;Landroid/accounts/Account;)V

    goto :goto_5e

    .line 118
    :cond_38
    const/4 v5, 0x2

    if-ne v1, v5, :cond_41

    .line 120
    iget-object v4, p0, Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;->this$0:Lcom/android/server/wm/AccountHelper;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/wm/AccountHelper;->onXiaomiAccountLogin(Landroid/content/Context;Landroid/accounts/Account;)V

    goto :goto_5e

    .line 122
    :cond_41
    const-string v5, "MiuiPermision"

    const-string v6, "Xiaomi account changed, but unknown type: %s."

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "type":I
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "appContext":Landroid/content/Context;
    goto :goto_5e

    .line 110
    .restart local v1    # "type":I
    .restart local v2    # "account":Landroid/accounts/Account;
    :cond_56
    :goto_56
    const-string v3, "MiuiPermision"

    const-string v4, "It isn\'t a xiaomi account changed."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 125
    .end local v1    # "type":I
    .end local v2    # "account":Landroid/accounts/Account;
    :cond_5e
    :goto_5e
    return-void
.end method
