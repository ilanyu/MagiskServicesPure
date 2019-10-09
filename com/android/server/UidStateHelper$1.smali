.class Lcom/android/server/UidStateHelper$1;
.super Landroid/app/IProcessObserver$Stub;
.source "UidStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UidStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UidStateHelper;


# direct methods
.method constructor <init>(Lcom/android/server/UidStateHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/UidStateHelper;

    .line 150
    iput-object p1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 153
    # getter for: Lcom/android/server/UidStateHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/UidStateHelper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 154
    # getter for: Lcom/android/server/UidStateHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UidStateHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foreground changed:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_33
    iget-object v0, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    # getter for: Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/UidStateHelper;->access$200(Lcom/android/server/UidStateHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 161
    :try_start_3a
    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    # getter for: Lcom/android/server/UidStateHelper;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/UidStateHelper;->access$300(Lcom/android/server/UidStateHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 162
    .local v1, "pidForeground":Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_58

    .line 163
    new-instance v2, Landroid/util/SparseBooleanArray;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v1, v2

    .line 164
    iget-object v2, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    # getter for: Lcom/android/server/UidStateHelper;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/UidStateHelper;->access$300(Lcom/android/server/UidStateHelper;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    :cond_58
    invoke-virtual {v1, p1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 167
    iget-object v2, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    # invokes: Lcom/android/server/UidStateHelper;->computeUidForegroundLocked(I)V
    invoke-static {v2, p2}, Lcom/android/server/UidStateHelper;->access$400(Lcom/android/server/UidStateHelper;I)V

    .line 168
    .end local v1    # "pidForeground":Landroid/util/SparseBooleanArray;
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3a .. :try_end_64} :catchall_62

    throw v1
.end method

.method public onProcessDied(II)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 172
    # getter for: Lcom/android/server/UidStateHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/UidStateHelper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 173
    # getter for: Lcom/android/server/UidStateHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UidStateHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "process died:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_2c
    iget-object v0, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    # getter for: Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/UidStateHelper;->access$200(Lcom/android/server/UidStateHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 177
    :try_start_33
    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    # getter for: Lcom/android/server/UidStateHelper;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/UidStateHelper;->access$300(Lcom/android/server/UidStateHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 178
    .local v1, "pidForeground":Landroid/util/SparseBooleanArray;
    if-eqz v1, :cond_49

    .line 179
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 180
    iget-object v2, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    # invokes: Lcom/android/server/UidStateHelper;->computeUidForegroundLocked(I)V
    invoke-static {v2, p2}, Lcom/android/server/UidStateHelper;->access$400(Lcom/android/server/UidStateHelper;I)V

    .line 182
    .end local v1    # "pidForeground":Landroid/util/SparseBooleanArray;
    :cond_49
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_4b

    throw v1
.end method
