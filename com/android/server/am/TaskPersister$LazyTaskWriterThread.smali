.class Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .line 636
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    .line 637
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method private processNextItem()V
    .registers 11

    .line 677
    iget-object v0, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    monitor-enter v0

    .line 678
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->access$500(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    .line 680
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    # setter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/am/TaskPersister;->access$502(Lcom/android/server/am/TaskPersister;J)J

    .line 685
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    iget-object v1, v1, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 686
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->access$500(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3b

    .line 687
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    # setter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v1, v3, v4}, Lcom/android/server/am/TaskPersister;->access$502(Lcom/android/server/am/TaskPersister;J)J

    .line 688
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_16c

    .line 692
    :cond_3b
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_40} :catch_41
    .catchall {:try_start_3b .. :try_end_40} :catchall_16c

    goto :goto_42

    .line 693
    :catch_41
    move-exception v1

    .line 694
    :goto_42
    goto :goto_1b

    .line 698
    :cond_43
    :try_start_43
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    iget-object v1, v1, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 700
    .local v1, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 703
    .local v2, "now":J
    :goto_52
    iget-object v4, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v4}, Lcom/android/server/am/TaskPersister;->access$500(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v4
    :try_end_58
    .catchall {:try_start_43 .. :try_end_58} :catchall_16c

    cmp-long v4, v2, v4

    if-gez v4, :cond_70

    .line 707
    :try_start_5c
    iget-object v4, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v5}, Lcom/android/server/am/TaskPersister;->access$500(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_68} :catch_69
    .catchall {:try_start_5c .. :try_end_68} :catchall_16c

    .line 709
    goto :goto_6a

    .line 708
    :catch_69
    move-exception v4

    .line 710
    :goto_6a
    :try_start_6a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide v2, v4

    goto :goto_52

    .line 714
    .end local v2    # "now":J
    :cond_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_16c

    move-object v0, v1

    .line 716
    .end local v1    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v1, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_d3

    .line 717
    move-object v1, v0

    check-cast v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .line 718
    .local v1, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v3, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    .line 719
    .local v3, "filePath":Ljava/lang/String;
    # invokes: Lcom/android/server/am/TaskPersister;->createParentDirectory(Ljava/lang/String;)Z
    invoke-static {v3}, Lcom/android/server/am/TaskPersister;->access$600(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_99

    .line 720
    const-string v2, "TaskPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while creating images directory for file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void

    .line 723
    :cond_99
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 725
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 727
    .local v2, "imageFile":Ljava/io/FileOutputStream;
    :try_start_9c
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v5

    .line 728
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_ae} :catch_b4
    .catchall {:try_start_9c .. :try_end_ae} :catchall_b2

    .line 732
    .end local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v2    # "imageFile":Ljava/io/FileOutputStream;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :goto_ae
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 733
    goto :goto_cd

    .line 732
    .restart local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v2    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_b2
    move-exception v5

    goto :goto_cf

    .line 729
    :catch_b4
    move-exception v5

    .line 730
    .local v5, "e":Ljava/lang/Exception;
    :try_start_b5
    const-string v6, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveImage: unable to save "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cc
    .catchall {:try_start_b5 .. :try_end_cc} :catchall_b2

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_ae

    .line 734
    .end local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v2    # "imageFile":Ljava/io/FileOutputStream;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :goto_cd
    goto/16 :goto_16b

    .line 732
    .restart local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v2    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    :goto_cf
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 734
    .end local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v2    # "imageFile":Ljava/io/FileOutputStream;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_d3
    instance-of v1, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    if-eqz v1, :cond_16b

    .line 736
    const/4 v1, 0x0

    .line 737
    .local v1, "stringWriter":Ljava/io/StringWriter;
    move-object v3, v0

    check-cast v3, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    iget-object v3, v3, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    .line 739
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v4, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v4}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    monitor-enter v4

    :try_start_e4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 740
    iget-boolean v5, v3, Lcom/android/server/am/TaskRecord;->inRecents:Z
    :try_end_e9
    .catchall {:try_start_e4 .. :try_end_e9} :catchall_165

    if-eqz v5, :cond_f7

    .line 744
    :try_start_eb
    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    # invokes: Lcom/android/server/am/TaskPersister;->saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    invoke-static {v5, v3}, Lcom/android/server/am/TaskPersister;->access$700(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;

    move-result-object v5
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_f1} :catch_f5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_eb .. :try_end_f1} :catch_f3
    .catchall {:try_start_eb .. :try_end_f1} :catchall_165

    move-object v1, v5

    .line 747
    :goto_f2
    goto :goto_f7

    .line 746
    :catch_f3
    move-exception v5

    goto :goto_f7

    .line 745
    :catch_f5
    move-exception v5

    goto :goto_f2

    .line 749
    :cond_f7
    :goto_f7
    :try_start_f7
    monitor-exit v4
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_165

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 750
    if-eqz v1, :cond_16b

    .line 752
    const/4 v4, 0x0

    .line 753
    .local v4, "file":Ljava/io/FileOutputStream;
    nop

    .line 755
    .local v2, "atomicFile":Landroid/util/AtomicFile;
    :try_start_ff
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    iget v7, v3, Lcom/android/server/am/TaskRecord;->userId:I

    .line 756
    invoke-static {v7}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 757
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_task.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v2, v5

    .line 758
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 759
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 760
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 761
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_13f} :catch_140

    .line 768
    goto :goto_16b

    .line 762
    :catch_140
    move-exception v5

    .line 763
    .local v5, "e":Ljava/io/IOException;
    if-eqz v4, :cond_146

    .line 764
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 766
    :cond_146
    const-string v6, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for persisting. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "stringWriter":Ljava/io/StringWriter;
    .end local v2    # "atomicFile":Landroid/util/AtomicFile;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "file":Ljava/io/FileOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_16b

    .line 749
    .restart local v1    # "stringWriter":Ljava/io/StringWriter;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_165
    move-exception v2

    :try_start_166
    monitor-exit v4
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_165

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 771
    .end local v1    # "stringWriter":Ljava/io/StringWriter;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_16b
    :goto_16b
    return-void

    .line 714
    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catchall_16c
    move-exception v1

    :try_start_16d
    monitor-exit v0
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_16c

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 642
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 643
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 649
    .local v0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :goto_a
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    monitor-enter v1

    .line 650
    :try_start_d
    iget-object v2, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    iget-object v2, v2, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 651
    .local v2, "probablyDone":Z
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_5c

    .line 652
    if-eqz v2, :cond_53

    .line 654
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 655
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    :try_start_22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 657
    iget-object v3, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    # getter for: Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;
    invoke-static {v3}, Lcom/android/server/am/TaskPersister;->access$200(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/am/RecentTasks;->getPersistableTaskIds(Landroid/util/ArraySet;)V

    .line 658
    iget-object v3, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    .line 659
    # getter for: Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;
    invoke-static {v4}, Lcom/android/server/am/TaskPersister;->access$200(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v4

    .line 658
    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/WindowManagerService;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V

    .line 660
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_4d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 661
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    # invokes: Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V
    invoke-static {v1, v0}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    goto :goto_53

    .line 660
    :catchall_4d
    move-exception v3

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 663
    :cond_53
    :goto_53
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    # invokes: Lcom/android/server/am/TaskPersister;->writeTaskIdsFiles()V
    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;)V

    .line 665
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->processNextItem()V

    .line 666
    .end local v2    # "probablyDone":Z
    goto :goto_a

    .line 651
    :catchall_5c
    move-exception v2

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v2
.end method
