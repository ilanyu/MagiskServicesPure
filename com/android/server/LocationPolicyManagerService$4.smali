.class Lcom/android/server/LocationPolicyManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "LocationPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 295
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$4;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 300
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 301
    .local v0, "uid":I
    if-ne v0, v1, :cond_a

    return-void

    .line 304
    :cond_a
    const-string v1, "LocationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_UID_REMOVED for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$4;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # getter for: Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->access$000(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 306
    :try_start_27
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$4;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # getter for: Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;
    invoke-static {v2}, Lcom/android/server/LocationPolicyManagerService;->access$500(Lcom/android/server/LocationPolicyManagerService;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 307
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$4;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # invokes: Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V
    invoke-static {v2, v0}, Lcom/android/server/LocationPolicyManagerService;->access$100(Lcom/android/server/LocationPolicyManagerService;I)V

    .line 308
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$4;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # invokes: Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V
    invoke-static {v2}, Lcom/android/server/LocationPolicyManagerService;->access$600(Lcom/android/server/LocationPolicyManagerService;)V

    .line 309
    monitor-exit v1

    .line 310
    return-void

    .line 309
    :catchall_3c
    move-exception v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_3c

    throw v2
.end method
