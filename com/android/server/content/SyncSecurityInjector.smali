.class public Lcom/android/server/content/SyncSecurityInjector;
.super Ljava/lang/Object;
.source "SyncSecurityInjector.java"


# static fields
.field private static final CLOUD_MANAGER_PERMISSION:Ljava/lang/String; = "com.xiaomi.permission.CLOUD_MANAGER"

.field private static final TAG:Ljava/lang/String; = "SyncSecurityInjector"

.field private static final XIAOMI_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterOutXiaomiAccount([Landroid/accounts/AccountAndUser;I)[Landroid/accounts/AccountAndUser;
    .registers 10
    .param p0, "accountAndUsers"    # [Landroid/accounts/AccountAndUser;
    .param p1, "reason"    # I

    .line 38
    const/4 v0, 0x2

    if-nez p0, :cond_14

    .line 39
    const-string v1, "SyncSecurityInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 40
    const-string v0, "SyncSecurityInjector"

    const-string v1, "filterOutXiaomiAccount: null accountAndUsers, abort. "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_12
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_14
    if-gez p1, :cond_26

    .line 46
    const-string v1, "SyncSecurityInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 47
    const-string v0, "SyncSecurityInjector"

    const-string v1, "filterOutXiaomiAccount: internal request, abort. "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_25
    return-object p0

    .line 53
    :cond_26
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 55
    .local v1, "appId":I
    const/16 v2, 0x2710

    if-ge v1, v2, :cond_3e

    .line 56
    const-string v2, "SyncSecurityInjector"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 57
    const-string v0, "SyncSecurityInjector"

    const-string v2, "filterOutXiaomiAccount: system request, abort. "

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_3d
    return-object p0

    .line 63
    :cond_3e
    nop

    .line 64
    :try_start_3f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "com.xiaomi.permission.CLOUD_MANAGER"

    invoke-interface {v2, v3, v1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5b

    .line 65
    const-string v2, "SyncSecurityInjector"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 66
    const-string v2, "SyncSecurityInjector"

    const-string v3, "filterOutXiaomiAccount: CLOUD MANAGER, abort. "

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_5a} :catch_5c

    .line 68
    :cond_5a
    return-object p0

    .line 72
    :cond_5b
    goto :goto_5d

    .line 70
    :catch_5c
    move-exception v2

    .line 74
    :goto_5d
    const-string v2, "SyncSecurityInjector"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 75
    const-string v0, "SyncSecurityInjector"

    const-string v2, "filterOutXiaomiAccount: go. "

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_6c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/AccountAndUser;>;"
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_74
    if-ge v4, v2, :cond_91

    aget-object v5, p0, v4

    .line 80
    .local v5, "au":Landroid/accounts/AccountAndUser;
    if-eqz v5, :cond_8b

    iget-object v6, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    if-eqz v6, :cond_8b

    const-string v6, "com.xiaomi"

    iget-object v7, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 81
    goto :goto_8e

    .line 83
    :cond_8b
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v5    # "au":Landroid/accounts/AccountAndUser;
    :goto_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 85
    :cond_91
    new-array v2, v3, [Landroid/accounts/AccountAndUser;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/accounts/AccountAndUser;

    return-object v2
.end method

.method private static getAccountType(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3
    .param p0, "account"    # Landroid/accounts/Account;

    .line 129
    if-nez p0, :cond_5

    .line 130
    const-string v0, "[NULL]"

    return-object v0

    .line 133
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;

    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 91
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 93
    .local v1, "uid":I
    const-string v2, "disallow_auto_sync"

    invoke-static {p0, v2}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    .line 95
    const-string v2, "Enterprise"

    const-string v4, "Deny sync control"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v3

    .line 100
    :cond_19
    const/16 v2, 0x2710

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ge v1, v2, :cond_4f

    .line 101
    const-string v2, "SyncSecurityInjector"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 102
    const-string v2, "SyncSecurityInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permit sync control for account "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/content/SyncSecurityInjector;->getAccountType(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " by pid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". SYSTEM UID. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_4e
    return v4

    .line 106
    :cond_4f
    if-eqz p1, :cond_c4

    const-string v2, "com.xiaomi"

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    goto :goto_c4

    .line 112
    :cond_5c
    const-string v2, "com.xiaomi.permission.CLOUD_MANAGER"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_94

    .line 114
    const-string v2, "SyncSecurityInjector"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 115
    const-string v2, "SyncSecurityInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permit sync control for account "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/content/SyncSecurityInjector;->getAccountType(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " by pid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". CLOUD MANAGER. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_93
    return v4

    .line 120
    :cond_94
    const-string v2, "SyncSecurityInjector"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 121
    const-string v2, "SyncSecurityInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deny sync control for account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/content/SyncSecurityInjector;->getAccountType(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " by pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_c3
    return v3

    .line 107
    :cond_c4
    :goto_c4
    const-string v2, "SyncSecurityInjector"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 108
    const-string v2, "SyncSecurityInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permit sync control for account "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/content/SyncSecurityInjector;->getAccountType(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " by pid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". OTHER ACCOUNT. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_f3
    return v4
.end method
