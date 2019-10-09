.class Lcom/android/server/pm/UserManagerService$3;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$newRestrictionsFinal:Landroid/os/Bundle;

.field final synthetic val$prevRestrictionsFinal:Landroid/os/Bundle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .line 1699
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1702
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 1703
    # getter for: Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    .line 1702
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1706
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$700(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1707
    :try_start_16
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$700(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 1708
    .local v1, "listeners":[Landroid/os/UserManagerInternal$UserRestrictionsListener;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$700(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1709
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_5b

    .line 1710
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    array-length v2, v1

    if-ge v0, v2, :cond_3e

    .line 1711
    aget-object v2, v1, v0

    iget v3, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    invoke-interface {v2, v3, v4, v5}, Landroid/os/UserManagerInternal$UserRestrictionsListener;->onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1710
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1715
    .end local v0    # "i":I
    :cond_3e
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 1716
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1717
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1718
    return-void

    .line 1709
    .end local v0    # "broadcast":Landroid/content/Intent;
    .end local v1    # "listeners":[Landroid/os/UserManagerInternal$UserRestrictionsListener;
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method
