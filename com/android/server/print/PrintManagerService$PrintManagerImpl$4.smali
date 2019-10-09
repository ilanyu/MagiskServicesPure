.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;
.super Ljava/lang/Object;
.source "PrintManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStopped(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 1007
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iput p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1010
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1011
    :try_start_7
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->val$userId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState;

    .line 1012
    .local v1, "userState":Lcom/android/server/print/UserState;
    if-eqz v1, :cond_25

    .line 1013
    invoke-virtual {v1}, Lcom/android/server/print/UserState;->destroyLocked()V

    .line 1014
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->val$userId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1016
    .end local v1    # "userState":Lcom/android/server/print/UserState;
    :cond_25
    monitor-exit v0

    .line 1017
    return-void

    .line 1016
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v1
.end method
