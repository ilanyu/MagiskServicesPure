.class public Lcom/android/server/am/TaskPersister;
.super Ljava/lang/Object;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;,
        Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$WriteQueueItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final FLUSH_QUEUE:J = -0x1L

.field private static final IMAGES_DIRNAME:Ljava/lang/String; = "recent_images"

.field static final IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final INTER_WRITE_DELAY_MS:J = 0x1f4L

.field private static final MAX_WRITE_QUEUE_LENGTH:I = 0x6

.field private static final PERSISTED_TASK_IDS_FILENAME:Ljava/lang/String; = "persisted_taskIds.txt"

.field private static final PRE_TASK_DELAY_MS:J = 0xbb8L

.field static final TAG:Ljava/lang/String; = "TaskPersister"

.field private static final TAG_TASK:Ljava/lang/String; = "task"

.field private static final TASKS_DIRNAME:Ljava/lang/String; = "recent_tasks"

.field private static final TASK_FILENAME_SUFFIX:Ljava/lang/String; = "_task.xml"


# instance fields
.field private final mIoLock:Ljava/lang/Object;

.field private final mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

.field private mNextWriteTime:J

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mTaskIdsDir:Ljava/io/File;

.field private final mTaskIdsInFile:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field mWriteQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskPersister$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "workingDir"    # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    .line 153
    iput-object p1, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 155
    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 156
    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 157
    new-instance v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    const-string v1, "LazyTaskWriterThreadTest"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;-><init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    .line 158
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V
    .registers 10
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p4, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "recent_images"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v0, "legacyImagesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 132
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 133
    :cond_36
    const-string v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure deleting legacy images directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_4c
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "recent_tasks"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .local v1, "legacyTasksDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 139
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_7c

    .line 140
    :cond_66
    const-string v2, "TaskPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure deleting legacy tasks directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_7c
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system_de"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 145
    iput-object p2, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 146
    iput-object p3, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 147
    iput-object p4, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 148
    new-instance v2, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    const-string v3, "LazyTaskWriterThread"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;-><init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    .line 149
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;

    .line 59
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;

    .line 59
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;
    .param p1, "x1"    # Landroid/util/ArraySet;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/TaskPersister;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;

    .line 59
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->writeTaskIdsFiles()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/TaskPersister;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;

    .line 59
    iget-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/server/am/TaskPersister;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;
    .param p1, "x1"    # J

    .line 59
    iput-wide p1, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    return-wide p1
.end method

.method static synthetic access$600(Ljava/lang/String;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 59
    invoke-static {p0}, Lcom/android/server/am/TaskPersister;->createParentDirectory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;
    .param p1, "x1"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method private static createParentDirectory(Ljava/lang/String;)Z
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 630
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 631
    .local v0, "parentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    :goto_19
    return v1
.end method

.method private fileToString(Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .param p1, "file"    # Ljava/io/File;

    .line 381
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "newline":Ljava/lang/String;
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 384
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 386
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_34

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 389
    :cond_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 390
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3b} :catch_3c

    return-object v3

    .line 391
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "line":Ljava/lang/String;
    :catch_3c
    move-exception v1

    .line 392
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "TaskPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v2, 0x0

    return-object v2
.end method

.method static getUserImagesDir(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 626
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "recent_images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPersistedTaskIdsFile(I)Ljava/io/File;
    .registers 6
    .param p1, "userId"    # I

    .line 606
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 607
    .local v0, "userTaskIdsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 608
    const-string v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while creating user directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_2d
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "persisted_taskIds.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static getUserTasksDir(I)Ljava/io/File;
    .registers 5
    .param p0, "userId"    # I

    .line 614
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "recent_tasks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 616
    .local v0, "userTasksDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_36

    .line 617
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_36

    .line 618
    const-string v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure creating tasks directory for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_36
    return-object v0
.end method

.method private removeObsoleteFiles(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 589
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 592
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v1}, Lcom/android/server/am/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v1

    .line 593
    .local v1, "candidateUserIds":[I
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 594
    array-length v0, v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_2f

    aget v3, v1, v2

    .line 595
    .local v3, "userId":I
    invoke-static {v3}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 596
    invoke-static {v3}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 594
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 598
    :cond_2f
    return-void

    .line 593
    .end local v1    # "candidateUserIds":[I
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V
    .registers 11
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 540
    .local p0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-nez p1, :cond_a

    .line 541
    const-string v0, "TaskPersister"

    const-string v1, "File error accessing recents directory (directory doesn\'t exist?)."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void

    .line 544
    :cond_a
    const/4 v0, 0x0

    move v1, v0

    .line 544
    .local v1, "fileNdx":I
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_58

    .line 545
    aget-object v2, p1, v1

    .line 546
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, "filename":Ljava/lang/String;
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 548
    .local v4, "taskIdEnd":I
    if-lez v4, :cond_55

    .line 551
    :try_start_1d
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_35

    .line 557
    .local v5, "taskId":I
    nop

    .line 556
    nop

    .line 558
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    .line 560
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 560
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "taskIdEnd":I
    .end local v5    # "taskId":I
    goto :goto_55

    .line 553
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "taskIdEnd":I
    :catch_35
    move-exception v5

    .line 554
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeObsoleteFiles: Can\'t parse file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 556
    nop

    .line 544
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "taskIdEnd":I
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_55
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 564
    .end local v1    # "fileNdx":I
    :cond_58
    return-void
.end method

.method private removeThumbnails(Lcom/android/server/am/TaskRecord;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 167
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "taskString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "queueNdx":I
    :goto_e
    if-ltz v1, :cond_38

    .line 169
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 170
    .local v2, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v3, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v3, :cond_35

    .line 171
    new-instance v3, Ljava/io/File;

    move-object v4, v2

    check-cast v4, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    iget-object v4, v4, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v3, "thumbnailFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 177
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 168
    .end local v2    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .end local v3    # "thumbnailFile":Ljava/io/File;
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 181
    .end local v1    # "queueNdx":I
    :cond_38
    return-void
.end method

.method static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 602
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 360
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 361
    .local v0, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 362
    .local v1, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 368
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 370
    const-string/jumbo v2, "task"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 371
    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 372
    const-string/jumbo v2, "task"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 375
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 377
    return-object v1
.end method

.method private taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;
    .registers 7
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    .line 398
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 399
    return-object v0

    .line 401
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_a
    if-ltz v1, :cond_1a

    .line 402
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 403
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_17

    .line 404
    return-object v2

    .line 401
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 407
    .end local v1    # "taskNdx":I
    :cond_1a
    const-string v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore affiliation error looking for taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-object v0
.end method

.method private writeTaskIdsFiles()V
    .registers 12

    .line 567
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 568
    .local v0, "changedTaskIdsPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 569
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/am/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_14
    if-ge v5, v3, :cond_3e

    aget v6, v2, v5

    .line 570
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v7, v6}, Lcom/android/server/am/RecentTasks;->getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 571
    .local v7, "taskIdsToSave":Landroid/util/SparseBooleanArray;
    iget-object v8, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseBooleanArray;

    .line 572
    .local v8, "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    if-eqz v8, :cond_2f

    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 573
    goto :goto_3b

    .line 575
    :cond_2f
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v9

    .line 576
    .local v9, "taskIdsToSaveCopy":Landroid/util/SparseBooleanArray;
    iget-object v10, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v10, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 577
    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 569
    .end local v6    # "userId":I
    .end local v7    # "taskIdsToSave":Landroid/util/SparseBooleanArray;
    .end local v8    # "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    .end local v9    # "taskIdsToSaveCopy":Landroid/util/SparseBooleanArray;
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 580
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_5b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 581
    nop

    .local v4, "i":I
    :goto_43
    move v1, v4

    .end local v4    # "i":I
    .local v1, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 582
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 583
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 582
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/TaskPersister;->writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V

    .line 581
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .restart local v4    # "i":I
    goto :goto_43

    .line 585
    .end local v4    # "i":I
    :cond_5a
    return-void

    .line 580
    :catchall_5b
    move-exception v2

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private yieldIfQueueTooDeep()V
    .registers 6

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "stall":Z
    monitor-enter p0

    .line 186
    :try_start_2
    iget-wide v1, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_b

    .line 187
    const/4 v0, 0x1

    .line 189
    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_12

    .line 190
    if-eqz v0, :cond_11

    .line 191
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 193
    :cond_11
    return-void

    .line 189
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method flush()V
    .registers 5

    .line 291
    monitor-enter p0

    .line 292
    const-wide/16 v0, -0x1

    :try_start_3
    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    .line 296
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c
    .catchall {:try_start_8 .. :try_end_b} :catchall_15

    .line 298
    goto :goto_d

    .line 297
    :catch_c
    move-exception v2

    .line 299
    :goto_d
    :try_start_d
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_8

    .line 300
    monitor-exit p0

    .line 301
    return-void

    .line 300
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v0
.end method

.method getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;

    .line 344
    monitor-enter p0

    .line 345
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "queueNdx":I
    :goto_9
    if-ltz v0, :cond_29

    .line 346
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 347
    .local v1, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v2, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v2, :cond_26

    .line 348
    move-object v2, v1

    check-cast v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .line 349
    .local v2, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v3, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 350
    iget-object v3, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object v3

    .line 345
    .end local v1    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .end local v2    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 354
    .end local v0    # "queueNdx":I
    :cond_29
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 355
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 337
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 338
    return-object v0

    .line 340
    :cond_7
    invoke-static {p1}, Lcom/android/server/am/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .registers 12
    .param p1, "userId"    # I

    .line 197
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 198
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0

    .line 200
    :cond_15
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 201
    .local v0, "persistedTaskIds":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    const/4 v2, 0x0

    .line 205
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1e
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 206
    :cond_2d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_4b

    .line 207
    const-string v3, "\\s+"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_3c
    if-ge v6, v5, :cond_2d

    aget-object v7, v3, v6

    .line 208
    .local v7, "taskIdString":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 209
    .local v8, "id":I
    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_48} :catch_70
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_48} :catch_51
    .catchall {:try_start_1e .. :try_end_48} :catchall_4f

    .line 207
    .end local v7    # "taskIdString":Ljava/lang/String;
    .end local v8    # "id":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 217
    :cond_4b
    :try_start_4b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_80

    goto :goto_74

    .end local v4    # "line":Ljava/lang/String;
    :catchall_4f
    move-exception v3

    goto :goto_6c

    .line 214
    :catch_51
    move-exception v3

    .line 215
    .local v3, "e":Ljava/lang/Exception;
    :try_start_52
    const-string v4, "TaskPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while reading taskIds file for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_52 .. :try_end_68} :catchall_4f

    .line 217
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_68
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_74

    :goto_6c
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 212
    :catch_70
    move-exception v3

    .line 217
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 218
    :goto_74
    nop

    .line 219
    .end local v2    # "reader":Ljava/io/BufferedReader;
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_80

    .line 220
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v1

    return-object v1

    .line 219
    :catchall_80
    move-exception v2

    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v2
.end method

.method restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;
    .registers 21
    .param p1, "userId"    # I
    .param p2, "preaddedTasks"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseBooleanArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 413
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v0

    .line 415
    .local v4, "recoveredTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v5

    .line 417
    .local v5, "userTasksDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 418
    .local v6, "recentFiles":[Ljava/io/File;
    if-nez v6, :cond_32

    .line 419
    const-string v0, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreTasksForUserLocked: Unable to list files from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-object v3

    .line 423
    :cond_32
    const/4 v7, 0x0

    move v0, v7

    .line 423
    .local v0, "taskNdx":I
    :goto_34
    move v8, v0

    .line 423
    .end local v0    # "taskNdx":I
    .local v8, "taskNdx":I
    array-length v0, v6

    const/4 v9, 0x1

    if-ge v8, v0, :cond_210

    .line 424
    aget-object v10, v6, v8

    .line 430
    .local v10, "taskFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "_task.xml"

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 431
    nop

    .line 423
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .end local v10    # "taskFile":Ljava/io/File;
    .local v16, "recentFiles":[Ljava/io/File;
    .local v17, "taskNdx":I
    :goto_48
    move-object/from16 v16, v6

    move/from16 v17, v8

    goto/16 :goto_209

    .line 434
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v10    # "taskFile":Ljava/io/File;
    :cond_4e
    :try_start_4e
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, "_task.xml"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    .line 434
    invoke-virtual {v0, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 437
    .local v0, "taskId":I
    move-object/from16 v11, p2

    invoke-virtual {v11, v0, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12
    :try_end_6f
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_6f} :catch_1fc

    if-eqz v12, :cond_94

    .line 438
    :try_start_71
    const-string v9, "TaskPersister"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Task #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " has already been created so we don\'t restore again"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_8c} :catch_8d

    .line 440
    goto :goto_48

    .line 442
    .end local v0    # "taskId":I
    :catch_8d
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v17, v8

    goto/16 :goto_201

    .line 445
    :cond_94
    nop

    .line 447
    const/4 v12, 0x0

    .line 448
    .local v12, "reader":Ljava/io/BufferedReader;
    move v13, v7

    .line 450
    .local v13, "deleteFile":Z
    :try_start_97
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    invoke-direct {v14, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v12, v0

    .line 451
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 452
    .local v0, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 455
    :goto_a9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move v15, v14

    .line 455
    .local v15, "event":I
    if-eq v14, v9, :cond_19e

    const/4 v14, 0x3

    if-eq v15, v14, :cond_19e

    .line 457
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 458
    .local v14, "name":Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v15, v7, :cond_18a

    .line 460
    const-string/jumbo v7, "task"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_166

    .line 461
    iget-object v7, v1, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v0, v7}, Lcom/android/server/am/TaskRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;

    move-result-object v7

    .line 464
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v7, :cond_13e

    .line 470
    iget v9, v7, Lcom/android/server/am/TaskRecord;->taskId:I
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_cd} :catch_1b1
    .catchall {:try_start_97 .. :try_end_cd} :catchall_1ab

    .line 471
    .local v9, "taskId":I
    move-object/from16 v16, v6

    :try_start_cf
    iget-object v6, v1, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 471
    .end local v6    # "recentFiles":[Ljava/io/File;
    .restart local v16    # "recentFiles":[Ljava/io/File;
    const/4 v11, 0x1

    invoke-virtual {v6, v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eqz v6, :cond_f6

    .line 474
    const-string v6, "TaskPersister"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_df} :catch_139
    .catchall {:try_start_cf .. :try_end_df} :catchall_134

    move/from16 v17, v8

    :try_start_e1
    const-string v8, "Existing task with taskId "

    .line 474
    .end local v8    # "taskNdx":I
    .restart local v17    # "taskNdx":I
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "found"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_133

    .line 475
    .end local v17    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    :cond_f6
    move/from16 v17, v8

    .line 475
    .end local v8    # "taskNdx":I
    .restart local v17    # "taskNdx":I
    iget v6, v7, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v2, v6, :cond_121

    .line 477
    const-string v6, "TaskPersister"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Task with userId "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " found in "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 477
    invoke-static {v6, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_133

    .line 481
    :cond_121
    iget-object v6, v1, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v9, v2}, Lcom/android/server/am/ActivityStackSupervisor;->setNextTaskIdForUserLocked(II)V

    .line 482
    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 483
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 486
    .end local v9    # "taskId":I
    :goto_133
    goto :goto_165

    .line 502
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "event":I
    .end local v17    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    :catchall_134
    move-exception v0

    move/from16 v17, v8

    .line 502
    .end local v8    # "taskNdx":I
    .restart local v17    # "taskNdx":I
    goto/16 :goto_1f3

    .line 497
    .end local v17    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    :catch_139
    move-exception v0

    move/from16 v17, v8

    .line 497
    .end local v8    # "taskNdx":I
    .restart local v17    # "taskNdx":I
    goto/16 :goto_1b6

    .line 487
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v7    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v8    # "taskNdx":I
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v15    # "event":I
    :cond_13e
    move-object/from16 v16, v6

    move/from16 v17, v8

    .line 487
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "taskNdx":I
    const-string v6, "TaskPersister"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreTasksForUserLocked: Unable to restore taskFile="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-direct {v1, v10}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 487
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :goto_165
    goto :goto_18e

    .line 491
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    :cond_166
    move-object/from16 v16, v6

    move/from16 v17, v8

    .line 491
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "taskNdx":I
    const-string v6, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreTasksForUserLocked: Unknown xml event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18e

    .line 495
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    :cond_18a
    move-object/from16 v16, v6

    move/from16 v17, v8

    .line 495
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "taskNdx":I
    :goto_18e
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_191} :catch_19c
    .catchall {:try_start_e1 .. :try_end_191} :catchall_1f2

    .line 496
    .end local v14    # "name":Ljava/lang/String;
    nop

    .line 455
    move-object/from16 v6, v16

    move/from16 v8, v17

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v11, p2

    goto/16 :goto_a9

    .line 497
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "event":I
    :catch_19c
    move-exception v0

    goto :goto_1b6

    .line 502
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    :cond_19e
    move-object/from16 v16, v6

    move/from16 v17, v8

    .line 502
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "taskNdx":I
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 503
    if-eqz v13, :cond_209

    .line 505
    :goto_1a7
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_209

    .line 502
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    :catchall_1ab
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v17, v8

    .line 502
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "taskNdx":I
    goto :goto_1f3

    .line 497
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    :catch_1b1
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v17, v8

    .line 498
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "taskNdx":I
    :goto_1b6
    :try_start_1b6
    const-string v6, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ". Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    const-string v6, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failing file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1eb
    .catchall {:try_start_1b6 .. :try_end_1eb} :catchall_1f2

    .line 500
    const/4 v0, 0x1

    .line 502
    .end local v13    # "deleteFile":Z
    .local v0, "deleteFile":Z
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 503
    if-eqz v0, :cond_209

    goto :goto_1a7

    .line 502
    .end local v0    # "deleteFile":Z
    .restart local v13    # "deleteFile":Z
    :catchall_1f2
    move-exception v0

    :goto_1f3
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 503
    if-eqz v13, :cond_1fb

    .line 505
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_1fb
    throw v0

    .line 442
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "deleteFile":Z
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    :catch_1fc
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v17, v8

    .line 443
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "taskNdx":I
    :goto_201
    const-string v6, "TaskPersister"

    const-string v7, "Unexpected task file name"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    nop

    .line 423
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "taskFile":Ljava/io/File;
    :cond_209
    :goto_209
    add-int/lit8 v0, v17, 0x1

    .line 423
    .end local v17    # "taskNdx":I
    .local v0, "taskNdx":I
    move-object/from16 v6, v16

    const/4 v7, 0x0

    goto/16 :goto_34

    .line 511
    .end local v0    # "taskNdx":I
    .end local v16    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "recentFiles":[Ljava/io/File;
    :cond_210
    move-object/from16 v16, v6

    .line 511
    .end local v6    # "recentFiles":[Ljava/io/File;
    .restart local v16    # "recentFiles":[Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 515
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    .line 515
    .restart local v0    # "taskNdx":I
    :goto_21f
    if-ltz v0, :cond_23c

    .line 516
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 517
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget v7, v6, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-direct {v1, v7, v3}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 518
    iget v7, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-direct {v1, v7, v3}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 515
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_21f

    .line 521
    .end local v0    # "taskNdx":I
    :cond_23c
    new-instance v0, Lcom/android/server/am/TaskPersister$1;

    invoke-direct {v0, v1}, Lcom/android/server/am/TaskPersister$1;-><init>(Lcom/android/server/am/TaskPersister;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 534
    return-object v3
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 8
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 304
    monitor-enter p0

    .line 306
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "queueNdx":I
    :goto_9
    if-ltz v0, :cond_28

    .line 307
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 308
    .local v1, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v2, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v2, :cond_25

    .line 309
    move-object v2, v1

    check-cast v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .line 310
    .local v2, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v3, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 312
    iput-object p1, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 313
    goto :goto_28

    .line 306
    .end local v1    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .end local v2    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 317
    :cond_28
    :goto_28
    if-gez v0, :cond_34

    .line 318
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    invoke-direct {v2, p2, p1}, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_34
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_42

    .line 321
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    goto :goto_53

    .line 322
    :cond_42
    iget-wide v1, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_53

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 328
    :cond_53
    :goto_53
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 329
    .end local v0    # "queueNdx":I
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_5b

    .line 331
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    .line 332
    return-void

    .line 329
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method startPersisting()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_d

    .line 162
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->start()V

    .line 164
    :cond_d
    return-void
.end method

.method unloadUserDataFromMemory(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 250
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 251
    return-void
.end method

.method wakeup(Lcom/android/server/am/TaskRecord;Z)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flush"    # Z

    .line 254
    monitor-enter p0

    .line 255
    if-eqz p1, :cond_3e

    .line 257
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "queueNdx":I
    :goto_b
    if-ltz v0, :cond_2b

    .line 258
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 259
    .local v1, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v2, v1, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    if-eqz v2, :cond_28

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    iget-object v2, v2, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    if-ne v2, p1, :cond_28

    .line 261
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v2, :cond_2b

    .line 263
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeThumbnails(Lcom/android/server/am/TaskRecord;)V

    goto :goto_2b

    .line 257
    .end local v1    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 268
    :cond_2b
    :goto_2b
    if-gez v0, :cond_3b

    iget-boolean v1, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v1, :cond_3b

    .line 269
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    invoke-direct {v2, p1}, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v0    # "queueNdx":I
    :cond_3b
    goto :goto_49

    .line 285
    :catchall_3c
    move-exception v0

    goto :goto_73

    .line 274
    :cond_3e
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/am/TaskPersister$WriteQueueItem;-><init>(Lcom/android/server/am/TaskPersister$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :goto_49
    if-nez p2, :cond_67

    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_55

    goto :goto_67

    .line 278
    :cond_55
    iget-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6b

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    goto :goto_6b

    .line 277
    :cond_67
    :goto_67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 284
    :cond_6b
    :goto_6b
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 285
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_3c

    .line 287
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    .line 288
    return-void

    .line 285
    :goto_73
    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_3c

    throw v0
.end method

.method writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V
    .registers 10
    .param p1, "taskIds"    # Landroid/util/SparseBooleanArray;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 227
    if-gez p2, :cond_3

    .line 228
    return-void

    .line 230
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/am/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v0

    .line 231
    .local v0, "persistedTaskIdsFile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    const/4 v2, 0x0

    .line 234
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_b
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 235
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 236
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 237
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_31} :catch_3a
    .catchall {:try_start_b .. :try_end_31} :catchall_38

    .line 235
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 244
    .end local v3    # "i":I
    :cond_34
    :try_start_34
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_5b

    .line 245
    :goto_37
    goto :goto_55

    .line 244
    :catchall_38
    move-exception v3

    goto :goto_57

    .line 241
    :catch_3a
    move-exception v3

    .line 242
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3b
    const-string v4, "TaskPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while writing taskIds file for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_38

    .line 244
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_51
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_37

    .line 246
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    :goto_55
    monitor-exit v1

    .line 247
    return-void

    .line 244
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :goto_57
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 246
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_5b
    move-exception v2

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_51 .. :try_end_5d} :catchall_5b

    throw v2
.end method
