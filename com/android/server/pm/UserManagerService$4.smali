.class Lcom/android/server/pm/UserManagerService$4;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .line 1738
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1744
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_24

    .line 1748
    .local v0, "runningUsers":[I
    nop

    .line 1747
    nop

    .line 1753
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$800(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1754
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    :try_start_12
    array-length v3, v0

    if-ge v2, v3, :cond_1f

    .line 1755
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 1754
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1757
    .end local v2    # "i":I
    :cond_1f
    monitor-exit v1

    .line 1758
    return-void

    .line 1757
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    throw v2

    .line 1745
    .end local v0    # "runningUsers":[I
    :catch_24
    move-exception v0

    .line 1746
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UserManagerService"

    const-string v2, "Unable to access ActivityManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    return-void
.end method
