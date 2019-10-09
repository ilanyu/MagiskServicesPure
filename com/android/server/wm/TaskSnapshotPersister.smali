.class Lcom/android/server/wm/TaskSnapshotPersister;
.super Ljava/lang/Object;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;
    }
.end annotation


# static fields
.field private static final BITMAP_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final DELAY_MS:J = 0x64L

.field static final DISABLE_FULL_SIZED_BITMAPS:Z

.field private static final MAX_STORE_QUEUE_DEPTH:I = 0x2

.field private static final PROTO_EXTENSION:Ljava/lang/String; = ".proto"

.field private static final QUALITY:I = 0x5f

.field private static final REDUCED_POSTFIX:Ljava/lang/String; = "_reduced"

.field static final REDUCED_SCALE:F

.field private static final SNAPSHOTS_DIRNAME:Ljava/lang/String; = "snapshots"

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

.field private final mLock:Ljava/lang/Object;

.field private mPaused:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPersister:Ljava/lang/Thread;

.field private mQueueIdling:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mStarted:Z

.field private final mStoreQueueItems:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteQueue:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x3f19999a    # 0.6f

    goto :goto_c

    :cond_a
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_c
    sput v0, Lcom/android/server/wm/TaskSnapshotPersister;->REDUCED_SCALE:F

    .line 54
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/TaskSnapshotPersister;->DISABLE_FULL_SIZED_BITMAPS:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V
    .registers 4
    .param p1, "resolver"    # Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 63
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    .line 219
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister$1;

    const-string v1, "TaskSnapshotPersister"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister$1;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersister:Ljava/lang/Thread;

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    .line 82
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/TaskSnapshotPersister;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskSnapshotPersister;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 48
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mQueueIdling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/TaskSnapshotPersister;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->createDirectory(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/TaskSnapshotPersister;I)Ljava/io/File;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/TaskSnapshotPersister;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->deleteSnapshot(II)V

    return-void
.end method

.method private createDirectory(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 198
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 199
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method private deleteSnapshot(II)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v0

    .line 204
    .local v0, "protoFile":Ljava/io/File;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v1

    .line 205
    .local v1, "bitmapReducedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 206
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 209
    sget-boolean v2, Lcom/android/server/wm/TaskSnapshotPersister;->DISABLE_FULL_SIZED_BITMAPS:Z

    if-nez v2, :cond_19

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getBitmapFile(II)Ljava/io/File;

    move-result-object v2

    .line 211
    .local v2, "bitmapFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 213
    .end local v2    # "bitmapFile":Ljava/io/File;
    :cond_19
    return-void
.end method

.method private ensureStoreQueueDepthLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_31

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;

    .line 171
    .local v0, "item":Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 172
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queue is too deep! Purged item with taskid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->access$000(Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v0    # "item":Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;
    goto :goto_0

    .line 174
    :cond_31
    return-void
.end method

.method private getDirectory(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 177
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;->getSystemDirectoryForUser(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "snapshots"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V
    .registers 3
    .param p1, "item"    # Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->onQueuedLocked()V

    .line 161
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotPersister;->ensureStoreQueueDepthLocked()V

    .line 162
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    if-nez v0, :cond_14

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 165
    :cond_14
    return-void
.end method


# virtual methods
.method getBitmapFile(II)Ljava/io/File;
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 186
    sget-boolean v0, Lcom/android/server/wm/TaskSnapshotPersister;->DISABLE_FULL_SIZED_BITMAPS:Z

    if-eqz v0, :cond_d

    .line 187
    const-string v0, "WindowManager"

    const-string v1, "This device does not support full sized resolution bitmaps."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProtoFile(II)Ljava/io/File;
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 181
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".proto"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getReducedResolutionBitmapFile(II)Ljava/io/File;
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 194
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_reduced"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method onTaskRemovedFromRecents(II)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;II)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method persistSnapshot(IILandroid/app/ActivityManager$TaskSnapshot;)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;IILandroid/app/ActivityManager$TaskSnapshot;)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method removeObsoleteFiles(Landroid/util/ArraySet;[I)V
    .registers 5
    .param p2, "runningUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 130
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 132
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[I)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method setPaused(Z)V
    .registers 4
    .param p1, "paused"    # Z

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    .line 139
    if-nez p1, :cond_c

    .line 140
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 142
    :cond_c
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method start()V
    .registers 2

    .line 88
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStarted:Z

    if-nez v0, :cond_c

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStarted:Z

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersister:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    :cond_c
    return-void
.end method

.method waitForQueueEmpty()V
    .registers 3

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mQueueIdling:Z

    if-eqz v1, :cond_11

    .line 150
    monitor-exit v0

    return-void

    .line 152
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    .line 153
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 152
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method
