.class public Lcom/android/server/wm/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccountHelper$AccountCallback;,
        Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final LISTEN_MODE_ACCOUNT:I = 0x1

.field private static final LISTEN_MODE_NONE:I = 0x0

.field private static final LISTEN_MODE_WIFI:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MiuiPermision"

.field private static final mAccountLoginActivity:Ljava/lang/String;

.field private static mCallBack:Lcom/android/server/wm/AccountHelper$AccountCallback;

.field private static mContext:Landroid/content/Context;

.field private static mInIMEIWhiteList:Z

.field private static mListeningActivity:Z

.field private static final mNotificationActivity:Ljava/lang/String;

.field private static final mWifiSettingActivity:Ljava/lang/String;

.field private static sAccessActiviteis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sAccountHelper:Lcom/android/server/wm/AccountHelper;


# instance fields
.field mActivityStateObserver:Landroid/app/IMiuiActivityObserver;

.field private mListenMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/AccountHelper;->sAccountHelper:Lcom/android/server/wm/AccountHelper;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/AccountHelper;->mListeningActivity:Z

    .line 30
    sput-boolean v0, Lcom/android/server/wm/AccountHelper;->mInIMEIWhiteList:Z

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/AccountHelper;->DEBUG:Z

    .line 33
    new-instance v0, Ljava/lang/String;

    const-string v1, "com.xiaomi.account"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/AccountHelper;->mAccountLoginActivity:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/String;

    const-string v1, "com.xiaomi.passport"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/AccountHelper;->mNotificationActivity:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/String;

    const-string v1, "com.android.settings"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/AccountHelper;->mWifiSettingActivity:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/AccountHelper;->sAccessActiviteis:Ljava/util/ArrayList;

    .line 49
    sget-object v0, Lcom/android/server/wm/AccountHelper;->sAccessActiviteis:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/wm/AccountHelper;->mAccountLoginActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/server/wm/AccountHelper;->sAccessActiviteis:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/wm/AccountHelper;->mNotificationActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/android/server/wm/AccountHelper;->sAccessActiviteis:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/wm/AccountHelper;->mWifiSettingActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    .line 206
    new-instance v0, Lcom/android/server/wm/AccountHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AccountHelper$2;-><init>(Lcom/android/server/wm/AccountHelper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccountHelper;->mActivityStateObserver:Landroid/app/IMiuiActivityObserver;

    .line 46
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 25
    sget-boolean v0, Lcom/android/server/wm/AccountHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/AccountHelper;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccountHelper;

    .line 25
    iget v0, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    return v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/server/wm/AccountHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/server/wm/AccountHelper;->sAccessActiviteis:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500()Lcom/android/server/wm/AccountHelper$AccountCallback;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/server/wm/AccountHelper;->mCallBack:Lcom/android/server/wm/AccountHelper$AccountCallback;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/wm/AccountHelper;
    .registers 2

    .line 55
    sget-object v0, Lcom/android/server/wm/AccountHelper;->sAccountHelper:Lcom/android/server/wm/AccountHelper;

    if-nez v0, :cond_17

    .line 56
    const-class v0, Lcom/android/server/wm/AccountHelper;

    monitor-enter v0

    .line 57
    :try_start_7
    sget-object v1, Lcom/android/server/wm/AccountHelper;->sAccountHelper:Lcom/android/server/wm/AccountHelper;

    if-nez v1, :cond_12

    .line 58
    new-instance v1, Lcom/android/server/wm/AccountHelper;

    invoke-direct {v1}, Lcom/android/server/wm/AccountHelper;-><init>()V

    sput-object v1, Lcom/android/server/wm/AccountHelper;->sAccountHelper:Lcom/android/server/wm/AccountHelper;

    .line 60
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 62
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/wm/AccountHelper;->sAccountHelper:Lcom/android/server/wm/AccountHelper;

    return-object v0
.end method


# virtual methods
.method public ListenAccount(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/AccountHelper;->registerAccountActivityObserver()V

    .line 130
    iget v0, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    .line 131
    sget-boolean v0, Lcom/android/server/wm/AccountHelper;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 132
    const-string v0, "MiuiPermision"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListenAccount mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mListenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_2c
    return-void
.end method

.method public UnListenAccount(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 137
    iget v0, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    xor-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    .line 138
    iget v0, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    if-nez v0, :cond_c

    .line 139
    invoke-virtual {p0}, Lcom/android/server/wm/AccountHelper;->unRegisterAccountActivityObserver()V

    .line 141
    :cond_c
    sget-boolean v0, Lcom/android/server/wm/AccountHelper;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 142
    const-string v0, "MiuiPermision"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnListenAccount mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mListenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/AccountHelper;->mListenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_30
    return-void
.end method

.method public addAccount(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 179
    sget-boolean v0, Lcom/android/server/wm/AccountHelper;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 180
    const-string v0, "MiuiPermision"

    const-string v1, "addAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.xiaomi"

    const-string/jumbo v3, "passportapi"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/android/server/wm/AccountHelper$1;

    invoke-direct {v7, p0, p1}, Lcom/android/server/wm/AccountHelper$1;-><init>(Lcom/android/server/wm/AccountHelper;Landroid/content/Context;)V

    const/4 v8, 0x0

    .line 184
    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 204
    return-void
.end method

.method public getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 78
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v2, "com.xiaomi"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 79
    .local v2, "accounts":[Landroid/accounts/Account;
    array-length v3, v2

    if-lez v3, :cond_11

    .line 80
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 82
    :cond_11
    if-nez v0, :cond_1b

    .line 83
    const-string v3, "MiuiPermision"

    const-string/jumbo v4, "xiaomi account is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1b
    return-object v0
.end method

.method public onXiaomiAccountLogin(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 91
    sget-object v0, Lcom/android/server/wm/AccountHelper;->mCallBack:Lcom/android/server/wm/AccountHelper$AccountCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AccountHelper$AccountCallback;->onXiaomiAccountLogin()V

    .line 92
    return-void
.end method

.method public onXiaomiAccountLogout(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 96
    sget-object v0, Lcom/android/server/wm/AccountHelper;->mCallBack:Lcom/android/server/wm/AccountHelper$AccountCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AccountHelper$AccountCallback;->onXiaomiAccountLogout()V

    .line 97
    return-void
.end method

.method public registerAccountActivityObserver()V
    .registers 4

    .line 147
    sget-boolean v0, Lcom/android/server/wm/AccountHelper;->mListeningActivity:Z

    if-eqz v0, :cond_5

    .line 148
    return-void

    .line 149
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/AccountHelper;->mListeningActivity:Z

    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 152
    .local v1, "activityManager":Landroid/app/IActivityManager;
    if-nez v1, :cond_14

    .line 153
    return-void

    .line 156
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/android/server/wm/AccountHelper;->mActivityStateObserver:Landroid/app/IMiuiActivityObserver;

    invoke-interface {v1, v2, v0}, Landroid/app/IActivityManager;->registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 159
    goto :goto_1e

    .line 157
    :catch_1a
    move-exception v2

    .line 158
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 160
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method public registerAccountListener(Landroid/content/Context;Lcom/android/server/wm/AccountHelper$AccountCallback;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/android/server/wm/AccountHelper$AccountCallback;

    .line 69
    sput-object p1, Lcom/android/server/wm/AccountHelper;->mContext:Landroid/content/Context;

    .line 70
    sput-object p2, Lcom/android/server/wm/AccountHelper;->mCallBack:Lcom/android/server/wm/AccountHelper$AccountCallback;

    .line 71
    new-instance v0, Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccountHelper$AccountBroadcastReceiver;-><init>(Lcom/android/server/wm/AccountHelper;Lcom/android/server/wm/AccountHelper$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    return-void
.end method

.method public unRegisterAccountActivityObserver()V
    .registers 4

    .line 163
    sget-boolean v0, Lcom/android/server/wm/AccountHelper;->mListeningActivity:Z

    if-nez v0, :cond_5

    .line 164
    return-void

    .line 165
    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/AccountHelper;->mListeningActivity:Z

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 168
    .local v1, "activityManager":Landroid/app/IActivityManager;
    if-nez v1, :cond_14

    .line 169
    return-void

    .line 172
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/android/server/wm/AccountHelper;->mActivityStateObserver:Landroid/app/IMiuiActivityObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 175
    goto :goto_1e

    .line 173
    :catch_1a
    move-exception v2

    .line 174
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 176
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method
