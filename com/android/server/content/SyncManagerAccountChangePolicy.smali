.class public Lcom/android/server/content/SyncManagerAccountChangePolicy;
.super Ljava/lang/Object;
.source "SyncManagerAccountChangePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;,
        Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;,
        Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;
    }
.end annotation


# static fields
.field private static final ALLOW_FIRST_NUM_SYNCS:I = 0x3

.field private static final ALLOW_FIRST_NUM_SYNCS_FOR_BROWSER:I = 0x8

.field private static final AUTHORITY_BROWSER:Ljava/lang/String; = "com.miui.browser"

.field private static final AUTHORITY_CALENDAR:Ljava/lang/String; = "com.android.calendar"

.field private static final AUTHORITY_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field protected static final AUTHORITY_GALLERY:Ljava/lang/String; = "com.miui.gallery.cloud.provider"

.field private static final AUTHORITY_NOTES:Ljava/lang/String; = "notes"

.field private static final DEFAULT_SCREEN_OFF_PENDING_TIME:J = 0x1d4c0L

.field static final EXTRA_KEY_BATTERY_CHARGING:Ljava/lang/String; = "battery_charging"

.field static final EXTRA_KEY_BATTERY_LOW:Ljava/lang/String; = "battery_low"

.field static final EXTRA_KEY_INTERACTIVE:Ljava/lang/String; = "interactive"

.field static final EXTRA_KEY_LAST_SCREEN_OFF_TIME:Ljava/lang/String; = "last_screen_off_time"

.field static final EXTRA_KEY_NUM_SYNCS:Ljava/lang/String; = "num_syncs"

.field private static final LOW_BATTERY_LEVEL_LIMIT:I = 0x14

.field protected static final PACKAGE_NAME_GALLERY:Ljava/lang/String; = "com.miui.gallery"

.field private static final REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    .line 122
    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string v1, "com.android.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string/jumbo v1, "notes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncForbiddenStrategy(Ljava/lang/String;)Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;
    .registers 3
    .param p0, "authority"    # Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 139
    new-instance v0, Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;-><init>(Lcom/android/server/content/SyncManagerAccountChangePolicy$1;)V

    return-object v0

    .line 141
    :cond_f
    new-instance v0, Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;-><init>(Lcom/android/server/content/SyncManagerAccountChangePolicy$1;)V

    return-object v0
.end method

.method public static isBatteryCharging(I)Z
    .registers 2
    .param p0, "status"    # I

    .line 88
    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static isBatteryCharging(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "ifilter":Landroid/content/IntentFilter;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 95
    .local v1, "batteryStatus":Landroid/content/Intent;
    const-string/jumbo v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 96
    .local v2, "status":I
    invoke-static {v2}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->isBatteryCharging(I)Z

    move-result v3

    return v3
.end method

.method public static isBatteryLow(II)Z
    .registers 3
    .param p0, "status"    # I
    .param p1, "level"    # I

    .line 100
    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/16 v0, 0x14

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static isBatteryLow(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "ifilter":Landroid/content/IntentFilter;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 107
    .local v1, "batteryStatus":Landroid/content/Intent;
    const-string/jumbo v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 108
    .local v2, "status":I
    const-string/jumbo v3, "level"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 109
    .local v3, "level":I
    invoke-static {v2, v3}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->isBatteryLow(II)Z

    move-result v4

    return v4
.end method

.method protected static isPackageNameForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 73
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 74
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_2b

    .line 78
    :cond_17
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 79
    .local v3, "topActivity":Landroid/content/ComponentName;
    if-nez v3, :cond_22

    .line 80
    return v2

    .line 82
    :cond_22
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 76
    .end local v3    # "topActivity":Landroid/content/ComponentName;
    :cond_2b
    :goto_2b
    return v2
.end method

.method private static maskAccounts([Landroid/accounts/Account;)[Landroid/accounts/Account;
    .registers 11
    .param p0, "accounts"    # [Landroid/accounts/Account;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Landroid/accounts/Account;

    .line 60
    .local v0, "masked":[Landroid/accounts/Account;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_53

    .line 61
    aget-object v3, p0, v2

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 62
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_45

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_45

    .line 63
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 64
    .local v4, "m":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    .line 65
    .local v5, "r":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/String;

    new-array v8, v5, [C

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    const-string v8, "\u0000"

    const-string v9, "*"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .end local v4    # "m":I
    .end local v5    # "r":I
    :cond_45
    new-instance v4, Landroid/accounts/Account;

    aget-object v5, p0, v2

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v2

    .line 60
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 69
    .end local v2    # "i":I
    :cond_53
    return-object v0
.end method

.method public static rebuildSyncOperation(Lcom/android/server/content/SyncOperation;)V
    .registers 5
    .param p0, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .line 188
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 189
    .local v0, "authority":Ljava/lang/String;
    sget-object v1, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 190
    return-void

    .line 192
    :cond_d
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "require_charging"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method static scheduleSyncForChangedAccountUnknownStateAuthorities(Lcom/android/server/content/SyncManager;Landroid/content/Intent;I)V
    .registers 11
    .param p0, "syncManager"    # Lcom/android/server/content/SyncManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "sendingUserId"    # I

    .line 31
    const-string v0, "account_changed_action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 34
    .local v1, "accounts":[Landroid/accounts/Account;
    :try_start_7
    const-string v2, "accounts"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, [Landroid/accounts/Account;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_f} :catch_11

    move-object v1, v2

    .line 37
    goto :goto_2d

    .line 35
    :catch_11
    move-exception v2

    .line 36
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad account extra: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :goto_2d
    const-string v2, "SyncManager"

    const-string v3, "Account changed. Action: %s, Accounts: %s. "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 40
    if-nez v1, :cond_3c

    const-string v6, "NULL"

    goto :goto_44

    :cond_3c
    invoke-static {v1}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->maskAccounts([Landroid/accounts/Account;)[Landroid/accounts/Account;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_44
    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 38
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v2, "altered"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "added"

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 44
    :cond_5e
    if-eqz v1, :cond_6d

    .line 45
    array-length v2, v1

    :goto_61
    if-ge v5, v2, :cond_6d

    aget-object v3, v1, v5

    .line 46
    .local v3, "account":Landroid/accounts/Account;
    if-eqz v3, :cond_6a

    .line 47
    invoke-static {p0, p2, v3}, Lcom/android/server/content/MiSyncExecutor;->sync(Lcom/android/server/content/SyncManager;ILandroid/accounts/Account;)V

    .line 45
    .end local v3    # "account":Landroid/accounts/Account;
    :cond_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 53
    :cond_6d
    return-void
.end method
