.class Lcom/android/server/search/SearchManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/search/SearchManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/search/SearchManagerService;

    .line 160
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private updateSearchables()V
    .registers 5

    .line 173
    invoke-virtual {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v0

    .line 174
    .local v0, "changingUserId":I
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/search/SearchManagerService;->access$300(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 176
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->access$300(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 177
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->access$300(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne v0, v3, :cond_34

    .line 178
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->access$300(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/search/Searchables;

    invoke-virtual {v3}, Lcom/android/server/search/Searchables;->updateSearchableList()V

    .line 179
    goto :goto_37

    .line 176
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 182
    .end local v2    # "i":I
    :cond_37
    :goto_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_53

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.search.action.SEARCHABLES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->access$400(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 188
    return-void

    .line 182
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    .line 170
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 1

    .line 164
    invoke-direct {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    .line 165
    return-void
.end method
