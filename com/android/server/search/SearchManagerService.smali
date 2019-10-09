.class public Lcom/android/server/search/SearchManagerService;
.super Landroid/app/ISearchManager$Stub;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;,
        Lcom/android/server/search/SearchManagerService$MyPackageMonitor;,
        Lcom/android/server/search/SearchManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final mSearchables:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSearchables"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/search/Searchables;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Landroid/app/ISearchManager$Stub;-><init>()V

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 106
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;-><init>(Lcom/android/server/search/SearchManagerService;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 108
    new-instance v0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;-><init>(Lcom/android/server/search/SearchManagerService;Landroid/content/ContentResolver;)V

    .line 109
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/search/SearchManagerService;->mHandler:Landroid/os/Handler;

    .line 110
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/search/SearchManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/search/SearchManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService;->onCleanupUser(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;

    .line 59
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;

    .line 59
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getLegacyAssistComponent(I)Landroid/content/ComponentName;
    .registers 10
    .param p1, "userHandle"    # I

    .line 277
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 278
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getLegacyAssistComponent"

    const/4 v7, 0x0

    .line 277
    move v3, p1

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move p1, v1

    .line 280
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 281
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.voice.VoiceInteractionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v2, "intentAssistProbe":Landroid/content/Intent;
    const/high16 v3, 0x100000

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 284
    .local v3, "infoListVis":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_47

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_47

    .line 287
    :cond_30
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 288
    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_46} :catch_48

    return-object v5

    .line 285
    .end local v4    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_47
    :goto_47
    return-object v0

    .line 293
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "intentAssistProbe":Landroid/content/Intent;
    .end local v3    # "infoListVis":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_48
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SearchManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getLegacyAssistComponent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private getSearchables(I)Lcom/android/server/search/Searchables;
    .registers 3
    .param p1, "userId"    # I

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(IZ)Lcom/android/server/search/Searchables;

    move-result-object v0

    return-object v0
.end method

.method private getSearchables(IZ)Lcom/android/server/search/Searchables;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "forceUpdate"    # Z

    .line 117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 119
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 120
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_62

    .line 123
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_7e

    if-eqz v3, :cond_46

    .line 127
    .end local v2    # "um":Landroid/os/UserManager;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    nop

    .line 129
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v3

    .line 130
    :try_start_21
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/search/Searchables;

    .line 131
    .local v2, "searchables":Lcom/android/server/search/Searchables;
    if-nez v2, :cond_3c

    .line 132
    new-instance v4, Lcom/android/server/search/Searchables;

    iget-object v5, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p1}, Lcom/android/server/search/Searchables;-><init>(Landroid/content/Context;I)V

    move-object v2, v4

    .line 133
    invoke-virtual {v2}, Lcom/android/server/search/Searchables;->updateSearchableList()V

    .line 134
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_41

    .line 135
    :cond_3c
    if-eqz p2, :cond_41

    .line 136
    invoke-virtual {v2}, Lcom/android/server/search/Searchables;->updateSearchableList()V

    .line 138
    :cond_41
    :goto_41
    monitor-exit v3

    return-object v2

    .line 139
    .end local v2    # "searchables":Lcom/android/server/search/Searchables;
    :catchall_43
    move-exception v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_21 .. :try_end_45} :catchall_43

    throw v2

    .line 124
    .local v2, "um":Landroid/os/UserManager;
    :cond_46
    :try_start_46
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isn\'t unlocked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :cond_62
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7e
    .catchall {:try_start_46 .. :try_end_7e} :catchall_7e

    .line 127
    .end local v2    # "um":Landroid/os/UserManager;
    :catchall_7e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private onCleanupUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 152
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private onUnlockUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 144
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(IZ)Lcom/android/server/search/Searchables;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_4} :catch_5

    .line 148
    goto :goto_6

    .line 145
    :catch_5
    move-exception v0

    .line 149
    :goto_6
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    const-string v1, "SearchManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 329
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 330
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v1

    .line 331
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    :try_start_16
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 332
    const-string v3, "\nUser: "

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 333
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 334
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/search/Searchables;

    invoke-virtual {v3, p1, v0, p3}, Lcom/android/server/search/Searchables;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 337
    .end local v2    # "i":I
    :cond_40
    monitor-exit v1

    .line 338
    return-void

    .line 337
    :catchall_42
    move-exception v2

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_16 .. :try_end_44} :catchall_42

    throw v2
.end method

.method public getGlobalSearchActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 246
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getGlobalSearchActivities()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalSearchActivity()Landroid/content/ComponentName;
    .registers 2

    .line 254
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .registers 4
    .param p1, "launchActivity"    # Landroid/content/ComponentName;

    .line 229
    if-nez p1, :cond_b

    .line 230
    const-string v0, "SearchManagerService"

    const-string v1, "getSearchableInfo(), activity == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    return-object v0

    .line 233
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/search/Searchables;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getSearchablesInGlobalSearchList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWebSearchActivity()Landroid/content/ComponentName;
    .registers 2

    .line 262
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public launchAssist(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "args"    # Landroid/os/Bundle;

    .line 267
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 268
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 269
    .local v0, "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_d

    .line 270
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    .line 272
    :cond_d
    return-void
.end method

.method public launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 15
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 301
    invoke-direct {p0, p2}, Lcom/android/server/search/SearchManagerService;->getLegacyAssistComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 302
    .local v0, "comp":Landroid/content/ComponentName;
    if-nez v0, :cond_8

    .line 303
    const/4 v1, 0x0

    return v1

    .line 305
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 307
    .local v1, "ident":J
    :try_start_c
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.voice.VoiceInteractionService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 310
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    .line 311
    .local v5, "am":Landroid/app/IActivityManager;
    if-eqz p3, :cond_23

    .line 312
    const-string v4, "android.intent.extra.KEY_EVENT"

    const/16 v6, 0xdb

    invoke-virtual {p3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    :cond_23
    invoke-virtual {v3, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 316
    const/4 v7, 0x0

    move-object v6, v3

    move-object v8, p1

    move v9, p2

    move-object v10, p3

    invoke-interface/range {v5 .. v10}, Landroid/app/IActivityManager;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v4
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2f} :catch_38
    .catchall {:try_start_c .. :try_end_2f} :catchall_33

    .line 320
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 316
    return v4

    .line 320
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "am":Landroid/app/IActivityManager;
    :catchall_33
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 318
    :catch_38
    move-exception v3

    .line 320
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 321
    nop

    .line 322
    const/4 v3, 0x1

    return v3
.end method
