.class public Lcom/android/server/accounts/AccountManagerServiceInjector;
.super Ljava/lang/Object;
.source "AccountManagerServiceInjector.java"


# static fields
.field public static final ACCOUNT_CHANGED_ACTION_ADDED:Ljava/lang/String; = "added"

.field public static final ACCOUNT_CHANGED_ACTION_ALTERED:Ljava/lang/String; = "altered"

.field public static final ACCOUNT_CHANGED_ACTION_REMOVED:Ljava/lang/String; = "removed"

.field public static final KEY_ACCOUNT_CHANGED_ACTION:Ljava/lang/String; = "account_changed_action"

.field public static final LOGIN_ACCOUNTS_CHANGED_SYS_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_CHANGED_SYS"

.field private static final TAG:Ljava/lang/String; = "AccountManagerServiceInjector"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isForceRemove(Z)Z
    .registers 7
    .param p0, "removalAllowed"    # Z

    .line 39
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 40
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_34

    array-length v3, v2

    if-lez v3, :cond_34

    .line 42
    aget-object v3, v2, v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-interface {v1, v3, v0, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 43
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_34

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_34

    .line 44
    if-nez p0, :cond_2d

    .line 45
    const-string v4, "AccountManagerServiceInjector"

    const-string v5, "force remove account"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_2d
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_35

    xor-int/lit8 v0, v4, 0x1

    return v0

    .line 52
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "packages":[Ljava/lang/String;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_34
    goto :goto_3e

    .line 50
    :catch_35
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AccountManagerServiceInjector"

    const-string/jumbo v3, "isForceRemove"

    invoke-static {v2, v3, v1}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3e
    return v0
.end method

.method static isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
    .registers 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "serviceUid"    # I
    .param p3, "callingUid"    # I

    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 29
    .local v0, "identityToken":J
    :try_start_4
    invoke-static {p0, p1, p2, p3}, Lmiui/content/pm/ExtraPackageManager;->isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    return v2

    .line 32
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static sendAccountsChangedSysBroadcast(Landroid/content/Context;ILjava/lang/String;[Landroid/accounts/Account;)V
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "accounts"    # [Landroid/accounts/Account;

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED_SYS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "account_changed_action"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "accounts"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 76
    return-void
.end method
