.class public Lcom/android/server/content/SyncOperationInjector;
.super Ljava/lang/Object;
.source "SyncOperationInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareByXiaomiPriority(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .registers 5
    .param p0, "operation1"    # Lcom/android/server/content/SyncOperation;
    .param p1, "operation2"    # Lcom/android/server/content/SyncOperation;

    .line 9
    const/4 v0, -0x1

    .line 10
    .local v0, "priority1":I
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-static {v1}, Lcom/android/server/content/SyncOperationInjector;->isXiaomiAccount(Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 11
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/content/SyncOperationInjector;->getXiaomiAuthorityPriority(Ljava/lang/String;)I

    move-result v0

    .line 13
    :cond_13
    const/4 v1, -0x1

    .line 14
    .local v1, "priority2":I
    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-static {v2}, Lcom/android/server/content/SyncOperationInjector;->isXiaomiAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 15
    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/content/SyncOperationInjector;->getXiaomiAuthorityPriority(Ljava/lang/String;)I

    move-result v1

    .line 18
    :cond_26
    if-le v0, v1, :cond_2a

    .line 19
    const/4 v2, -0x1

    return v2

    .line 20
    :cond_2a
    if-ge v0, v1, :cond_2e

    .line 21
    const/4 v2, 0x1

    return v2

    .line 23
    :cond_2e
    const/4 v2, 0x0

    return v2
.end method

.method private static getXiaomiAuthorityPriority(Ljava/lang/String;)I
    .registers 8
    .param p0, "authority"    # Ljava/lang/String;

    .line 38
    const-string v0, "com.android.contacts"

    .line 39
    .local v0, "AUTHORITY_CONTACTS":Ljava/lang/String;
    const-string/jumbo v1, "wifi"

    .line 40
    .local v1, "AUTHORITY_WLAN":Ljava/lang/String;
    const-string/jumbo v2, "sms"

    .line 41
    .local v2, "AUTHORITY_SMS":Ljava/lang/String;
    const-string v3, "com.miui.gallery.cloud.provider"

    .line 42
    .local v3, "AUTHORITY_GALLERY":Ljava/lang/String;
    const-string v4, "call_log"

    .line 43
    .local v4, "AUTHORITY_CALLLOG":Ljava/lang/String;
    const-string/jumbo v5, "notes"

    .line 44
    .local v5, "AUTHORITY_NOTES":Ljava/lang/String;
    const-string/jumbo v6, "wifi"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 45
    const/16 v6, 0x3c

    return v6

    .line 46
    :cond_1b
    const-string v6, "com.android.contacts"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 47
    const/16 v6, 0x32

    return v6

    .line 48
    :cond_26
    const-string v6, "call_log"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 49
    const/16 v6, 0x28

    return v6

    .line 50
    :cond_31
    const-string/jumbo v6, "sms"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 51
    const/16 v6, 0x1e

    return v6

    .line 52
    :cond_3d
    const-string/jumbo v6, "notes"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 53
    const/16 v6, 0x14

    return v6

    .line 54
    :cond_49
    const-string v6, "com.miui.gallery.cloud.provider"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 55
    const/16 v6, 0xa

    return v6

    .line 57
    :cond_54
    const/4 v6, 0x0

    return v6
.end method

.method private static isXiaomiAccount(Landroid/accounts/Account;)Z
    .registers 5
    .param p0, "account"    # Landroid/accounts/Account;

    .line 27
    const-string v0, "com.xiaomi"

    .line 28
    .local v0, "XIAOMI_ACCOUNT_TYPE":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez p0, :cond_6

    .line 29
    return v1

    .line 31
    :cond_6
    const-string v2, "com.xiaomi"

    iget-object v3, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 32
    const/4 v1, 0x1

    return v1

    .line 34
    :cond_12
    return v1
.end method
