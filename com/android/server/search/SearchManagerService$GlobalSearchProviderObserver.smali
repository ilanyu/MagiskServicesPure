.class Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;
.super Landroid/database/ContentObserver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalSearchProviderObserver"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService;Landroid/content/ContentResolver;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/search/SearchManagerService;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 194
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 196
    iput-object p2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->mResolver:Landroid/content/ContentResolver;

    .line 197
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "search_global_search_activity"

    .line 198
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 197
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 201
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 205
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/search/SearchManagerService;->access$300(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->access$300(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 207
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->access$300(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/search/Searchables;

    invoke-virtual {v2}, Lcom/android/server/search/Searchables;->updateSearchableList()V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 209
    .end local v1    # "i":I
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3f

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/search/SearchManagerService;->access$400(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 213
    return-void

    .line 209
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method
