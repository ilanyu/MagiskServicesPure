.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;
.super Landroid/database/ContentObserver;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

.field final synthetic val$enabledPrintServicesUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/os/Handler;Landroid/net/Uri;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 793
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iput-object p3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->val$enabledPrintServicesUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 796
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->val$enabledPrintServicesUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 797
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 798
    :try_start_f
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 799
    .local v1, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v1, :cond_3d

    .line 800
    const/4 v3, -0x1

    if-eq p3, v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 801
    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne p3, v3, :cond_3a

    .line 802
    :cond_2b
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState;

    invoke-virtual {v3}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 799
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 805
    .end local v1    # "userCount":I
    .end local v2    # "i":I
    :cond_3d
    monitor-exit v0

    goto :goto_42

    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_f .. :try_end_41} :catchall_3f

    throw v1

    .line 807
    :cond_42
    :goto_42
    return-void
.end method
