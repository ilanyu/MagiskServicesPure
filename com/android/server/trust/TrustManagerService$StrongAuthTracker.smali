.class Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrongAuthTracker"
.end annotation


# instance fields
.field mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 1227
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 1228
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 1225
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    .line 1229
    return-void
.end method


# virtual methods
.method allowTrustFromUnlock(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 1262
    if-ltz p1, :cond_4a

    .line 1265
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v0

    .line 1266
    .local v0, "previous":Z
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1268
    sget-boolean v1, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v1, :cond_3e

    .line 1269
    const-string v1, "TrustManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowTrustFromUnlock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") -> trustAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " agentsCanRun="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1269
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v1

    if-eq v1, v0, :cond_49

    .line 1275
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1277
    :cond_49
    return-void

    .line 1263
    .end local v0    # "previous":Z
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userId must be a valid user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method canAgentsRunForUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1249
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1250
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 1249
    :goto_12
    return v0
.end method

.method public onStrongAuthRequiredChanged(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1233
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1235
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_38

    .line 1236
    const-string v0, "TrustManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStrongAuthRequiredChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") -> trustAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " agentsCanRun="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1236
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_38
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1245
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 1246
    return-void
.end method
