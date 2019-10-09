.class final Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;
.super Landroid/accounts/AccountManagerInternal;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccountManagerInternalImpl"
.end annotation


# instance fields
.field private mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .registers 2

    .line 6152
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/accounts/AccountManagerInternal;-><init>()V

    .line 6153
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "x1"    # Lcom/android/server/accounts/AccountManagerService$1;

    .line 6152
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    return-void
.end method


# virtual methods
.method public addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 6213
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$4200(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6214
    return-void
.end method

.method public backupAccountAccessPermissions(I)[B
    .registers 5
    .param p1, "userId"    # I

    .line 6223
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6224
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    if-nez v1, :cond_10

    .line 6225
    new-instance v1, Lcom/android/server/accounts/AccountManagerBackupHelper;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {v1, v2, p0}, Lcom/android/server/accounts/AccountManagerBackupHelper;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 6228
    :cond_10
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->backupAccountAccessPermissions(I)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 6229
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public hasAccountAccess(Landroid/accounts/Account;I)Z
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 6218
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    invoke-static {v0, p1, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->access$4300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 6161
    if-nez p1, :cond_a

    .line 6162
    const-string v0, "AccountManagerService"

    const-string v1, "account cannot be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6163
    return-void

    .line 6165
    :cond_a
    if-nez p2, :cond_15

    .line 6166
    const-string v0, "AccountManagerService"

    const-string/jumbo v1, "packageName cannot be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6167
    return-void

    .line 6169
    :cond_15
    if-gez p3, :cond_20

    .line 6170
    const-string v0, "AccountManagerService"

    const-string/jumbo v1, "user id must be concrete"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6171
    return-void

    .line 6173
    :cond_20
    if-nez p4, :cond_2a

    .line 6174
    const-string v0, "AccountManagerService"

    const-string v1, "callback cannot be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6175
    return-void

    .line 6178
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 6179
    invoke-virtual {v1, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    # invokes: Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;
    invoke-static {v0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->access$3900(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6180
    .local v0, "visibility":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_46

    .line 6181
    const-string v1, "AccountManagerService"

    const-string/jumbo v2, "requestAccountAccess: account is hidden"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6182
    return-void

    .line 6185
    :cond_46
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 6187
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6188
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "booleanResult"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6189
    invoke-virtual {p4, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 6190
    return-void

    .line 6195
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_62
    :try_start_62
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->access$500(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_62 .. :try_end_6c} :catch_9d

    .line 6199
    .local v1, "uid":I
    nop

    .line 6198
    nop

    .line 6201
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # invokes: Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    invoke-static {v2, p1, p2, v1, p4}, Lcom/android/server/accounts/AccountManagerService;->access$4000(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v2

    .line 6203
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService;->access$4100(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 6204
    :try_start_7b
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService;->access$4100(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 6205
    .local v4, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_7b .. :try_end_88} :catchall_9a

    .line 6206
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, v3, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, v1, v3}, Lcom/android/internal/notification/SystemNotificationChannels;->createAccountChannelForPackage(Ljava/lang/String;ILandroid/content/Context;)V

    .line 6207
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v7, v2

    move-object v8, p2

    move v9, p3

    # invokes: Lcom/android/server/accounts/AccountManagerService;->doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    invoke-static/range {v3 .. v9}, Lcom/android/server/accounts/AccountManagerService;->access$2200(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 6208
    return-void

    .line 6205
    .end local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_9a
    move-exception v4

    :try_start_9b
    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v4

    .line 6196
    .end local v1    # "uid":I
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_9d
    move-exception v1

    .line 6197
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6198
    return-void
.end method

.method public restoreAccountAccessPermissions([BI)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "userId"    # I

    .line 6234
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6235
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    if-nez v1, :cond_10

    .line 6236
    new-instance v1, Lcom/android/server/accounts/AccountManagerBackupHelper;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {v1, v2, p0}, Lcom/android/server/accounts/AccountManagerBackupHelper;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 6239
    :cond_10
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->restoreAccountAccessPermissions([BI)V

    .line 6240
    monitor-exit v0

    .line 6241
    return-void

    .line 6240
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method
