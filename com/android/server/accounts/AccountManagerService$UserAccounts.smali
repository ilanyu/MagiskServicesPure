.class Lcom/android/server/accounts/AccountManagerService$UserAccounts;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserAccounts"
.end annotation


# instance fields
.field final accountCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final accountTokenCaches:Lcom/android/server/accounts/TokenCache;

.field final accountsDb:Lcom/android/server/accounts/AccountsDb;

.field private final authTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final cacheLock:Ljava/lang/Object;

.field private final credentialsPermissionNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/accounts/AccountManagerService$NotificationId;",
            ">;"
        }
    .end annotation
.end field

.field final dbLock:Ljava/lang/Object;

.field private debugDbInsertionPoint:I

.field private final mReceiversForType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final previousNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/Account;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final signinRequiredNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/AccountManagerService$NotificationId;",
            ">;"
        }
    .end annotation
.end field

.field private statementForLogging:Landroid/database/sqlite/SQLiteStatement;

.field private final userDataCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final userId:I

.field private final visibilityCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "preNDbFile"    # Ljava/io/File;
    .param p4, "deDbFile"    # Ljava/io/File;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 213
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 215
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 221
    new-instance v0, Lcom/android/server/accounts/TokenCache;

    invoke-direct {v0}, Lcom/android/server/accounts/TokenCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I

    .line 250
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 251
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_58
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_67

    .line 253
    :try_start_5b
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/accounts/AccountsDb;->create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountsDb;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 254
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_64

    .line 255
    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_67

    .line 256
    return-void

    .line 254
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v2

    .line 255
    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_67

    throw v1
.end method

.method static synthetic access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 205
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 205
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 205
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 205
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 205
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->statementForLogging:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteStatement;

    .line 205
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->statementForLogging:Landroid/database/sqlite/SQLiteStatement;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 205
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 205
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 205
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 205
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p1, "x1"    # I

    .line 205
    iput p1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 205
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 205
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    return-object v0
.end method
