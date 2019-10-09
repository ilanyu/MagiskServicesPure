.class Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;
.super Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
.source "TaskSnapshotPersister.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoveObsoleteFilesQueueItem"
.end annotation


# instance fields
.field private final mPersistentTaskIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningUserIds:[I

.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p3, "runningUserIds"    # [I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 405
    .local p2, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Lcom/android/server/wm/TaskSnapshotPersister$1;)V

    .line 409
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mPersistentTaskIds:Landroid/util/ArraySet;

    .line 411
    iput-object p3, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    .line 412
    return-void
.end method


# virtual methods
.method getTaskId(Ljava/lang/String;)I
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 438
    const-string v0, ".proto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_12

    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 439
    return v1

    .line 441
    :cond_12
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 442
    .local v0, "end":I
    if-ne v0, v1, :cond_1b

    .line 443
    return v1

    .line 445
    :cond_1b
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "name":Ljava/lang/String;
    const-string v4, "_reduced"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 447
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "_reduced"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 450
    :cond_37
    :try_start_37
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_3b} :catch_3c

    return v2

    .line 451
    :catch_3c
    move-exception v2

    .line 452
    .local v2, "e":Ljava/lang/NumberFormatException;
    return v1
.end method

.method write()V
    .registers 15

    .line 417
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    # getter for: Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 418
    :try_start_7
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    # getter for: Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;
    invoke-static {v2}, Lcom/android/server/wm/TaskSnapshotPersister;->access$1000(Lcom/android/server/wm/TaskSnapshotPersister;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 419
    .local v1, "newPersistedTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_58

    .line 420
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_57

    aget v5, v0, v4

    .line 421
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    # invokes: Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;
    invoke-static {v6, v5}, Lcom/android/server/wm/TaskSnapshotPersister;->access$800(Lcom/android/server/wm/TaskSnapshotPersister;I)Ljava/io/File;

    move-result-object v6

    .line 422
    .local v6, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 423
    .local v7, "files":[Ljava/lang/String;
    if-nez v7, :cond_29

    .line 424
    goto :goto_54

    .line 426
    :cond_29
    array-length v8, v7

    move v9, v3

    :goto_2b
    if-ge v9, v8, :cond_54

    aget-object v10, v7, v9

    .line 427
    .local v10, "file":Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->getTaskId(Ljava/lang/String;)I

    move-result v11

    .line 428
    .local v11, "taskId":I
    iget-object v12, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mPersistentTaskIds:Landroid/util/ArraySet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_51

    .line 429
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_51

    .line 430
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 426
    .end local v10    # "file":Ljava/lang/String;
    .end local v11    # "taskId":I
    :cond_51
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    .line 420
    .end local v5    # "userId":I
    .end local v6    # "dir":Ljava/io/File;
    .end local v7    # "files":[Ljava/lang/String;
    :cond_54
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 434
    :cond_57
    return-void

    .line 419
    .end local v1    # "newPersistedTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1
.end method
