.class public Lcom/android/server/content/MiSyncUtils;
.super Ljava/lang/Object;
.source "MiSyncUtils.java"


# static fields
.field private static final HIGH_PARALLEL_SYNC_NUM:I = 0x7fffffff

.field private static final LOW_PARALLEL_SYNC_DEVICES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOW_PARALLEL_SYNC_NUM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiSyncUtils"

.field private static final XIAOMI_MAX_PARALLEL_SYNC_NUM:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/content/MiSyncUtils;->LOW_PARALLEL_SYNC_DEVICES:Ljava/util/HashSet;

    .line 24
    sget-object v0, Lcom/android/server/content/MiSyncUtils;->LOW_PARALLEL_SYNC_DEVICES:Ljava/util/HashSet;

    const-string/jumbo v1, "onc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/android/server/content/MiSyncUtils;->LOW_PARALLEL_SYNC_DEVICES:Ljava/util/HashSet;

    const-string/jumbo v1, "pine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/android/server/content/MiSyncUtils;->LOW_PARALLEL_SYNC_DEVICES:Ljava/util/HashSet;

    const-string/jumbo v1, "ugg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/android/server/content/MiSyncUtils;->LOW_PARALLEL_SYNC_DEVICES:Ljava/util/HashSet;

    const-string v1, "cactus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/android/server/content/MiSyncUtils;->LOW_PARALLEL_SYNC_DEVICES:Ljava/util/HashSet;

    const-string v1, "cereus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/android/server/content/MiSyncUtils;->LOW_PARALLEL_SYNC_DEVICES:Ljava/util/HashSet;

    const-string/jumbo v1, "santoni"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/android/server/content/MiSyncUtils;->LOW_PARALLEL_SYNC_DEVICES:Ljava/util/HashSet;

    const-string/jumbo v1, "riva"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/android/server/content/MiSyncUtils;->LOW_PARALLEL_SYNC_DEVICES:Ljava/util/HashSet;

    const-string/jumbo v1, "rosy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/android/server/content/MiSyncUtils;->LOW_PARALLEL_SYNC_DEVICES:Ljava/util/HashSet;

    const-string/jumbo v1, "rolex"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "device":Ljava/lang/String;
    sget-object v1, Lcom/android/server/content/MiSyncUtils;->LOW_PARALLEL_SYNC_DEVICES:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 36
    const/4 v1, 0x1

    sput v1, Lcom/android/server/content/MiSyncUtils;->XIAOMI_MAX_PARALLEL_SYNC_NUM:I

    goto :goto_64

    .line 38
    :cond_5f
    const v1, 0x7fffffff

    sput v1, Lcom/android/server/content/MiSyncUtils;->XIAOMI_MAX_PARALLEL_SYNC_NUM:I

    .line 40
    :goto_64
    const-string v1, "MiSyncUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max parallel sync number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/content/MiSyncUtils;->XIAOMI_MAX_PARALLEL_SYNC_NUM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v0    # "device":Ljava/lang/String;
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAccount(Landroid/accounts/Account;)Z
    .registers 4
    .param p0, "account"    # Landroid/accounts/Account;

    .line 135
    const/4 v0, 0x3

    if-nez p0, :cond_14

    .line 136
    const-string v1, "MiSyncUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 137
    const-string v0, "MiSyncUtils"

    const-string v1, "injector: checkAccount: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_12
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_14
    const-string v1, "MiSyncUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 142
    const-string v0, "MiSyncUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injector: checkAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_34
    const-string v0, "com.xiaomi"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z
    .registers 5
    .param p0, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .line 84
    const/4 v0, 0x3

    if-eqz p0, :cond_3b

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-nez v1, :cond_e

    goto :goto_3b

    .line 92
    :cond_e
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 93
    .local v1, "account":Landroid/accounts/Account;
    const-string v2, "MiSyncUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 94
    const-string v0, "MiSyncUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injector: checkSyncOperationAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_32
    const-string v0, "com.xiaomi"

    iget-object v2, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 86
    .end local v1    # "account":Landroid/accounts/Account;
    :cond_3b
    :goto_3b
    const-string v1, "MiSyncUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 87
    const-string v0, "MiSyncUtils"

    const-string v1, "injector: checkSyncOperationAccount: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_4a
    const/4 v0, 0x0

    return v0
.end method

.method static checkSyncOperationPass(Lcom/android/server/content/SyncOperation;)Z
    .registers 6
    .param p0, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-nez p0, :cond_14

    .line 102
    const-string v2, "MiSyncUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 103
    const-string v1, "MiSyncUtils"

    const-string v2, "injector: checkSyncOperationPass: null parameter, fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_13
    return v0

    .line 109
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4d

    .line 110
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isManual()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 111
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isIgnoreSettings()Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_4d

    .line 119
    :cond_28
    iget v2, p0, Lcom/android/server/content/SyncOperation;->reason:I

    const/4 v4, -0x6

    if-ne v2, v4, :cond_3d

    .line 120
    const-string v0, "MiSyncUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 121
    const-string v0, "MiSyncUtils"

    const-string v1, "injector: checkSyncOperationPass: sync for auto, pass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_3c
    return v3

    .line 127
    :cond_3d
    const-string v2, "MiSyncUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 128
    const-string v1, "MiSyncUtils"

    const-string v2, "injector: checkSyncOperationPass: fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_4c
    return v0

    .line 112
    :cond_4d
    :goto_4d
    const-string v0, "MiSyncUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 113
    const-string v0, "MiSyncUtils"

    const-string v1, "injector: checkSyncOperationPass: init or ignore settings, pass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_5c
    return v3
.end method

.method static isSyncRoomForbiddenH(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncManager;)Z
    .registers 8
    .param p0, "op"    # Lcom/android/server/content/SyncOperation;
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 45
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p0, :cond_67

    if-nez p1, :cond_7

    goto :goto_67

    .line 53
    :cond_7
    invoke-static {p0}, Lcom/android/server/content/MiSyncUtils;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 54
    const-string v2, "MiSyncUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 55
    const-string v0, "MiSyncUtils"

    const-string v2, "injector: isSyncRoomAvailable: not xiaomi account, false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1c
    return v1

    .line 61
    :cond_1d
    invoke-static {p0}, Lcom/android/server/content/MiSyncUtils;->checkSyncOperationPass(Lcom/android/server/content/SyncOperation;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 62
    const-string v2, "MiSyncUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 63
    const-string v0, "MiSyncUtils"

    const-string v2, "injector: isSyncRoomAvailable: sync operation pass, false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_32
    return v1

    .line 68
    :cond_33
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "device":Ljava/lang/String;
    const-string v2, "dipper"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 70
    return v1

    .line 73
    :cond_42
    const/4 v2, 0x0

    .line 74
    .local v2, "count":I
    iget-object v3, p1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 75
    .local v4, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v5, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-static {v5}, Lcom/android/server/content/MiSyncUtils;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 78
    .end local v4    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_5f
    goto :goto_49

    .line 79
    :cond_60
    sget v3, Lcom/android/server/content/MiSyncUtils;->XIAOMI_MAX_PARALLEL_SYNC_NUM:I

    if-lt v2, v3, :cond_66

    const/4 v1, 0x1

    nop

    :cond_66
    return v1

    .line 46
    .end local v0    # "device":Ljava/lang/String;
    .end local v2    # "count":I
    :cond_67
    :goto_67
    const-string v2, "MiSyncUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 47
    const-string v0, "MiSyncUtils"

    const-string v2, "injector: isSyncRoomAvailable: null parameter, false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_76
    return v1
.end method
