.class Lcom/android/server/usage/UsageStatsService$H;
.super Landroid/os/Handler;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 625
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 626
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 627
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 631
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_84

    .line 664
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_83

    .line 645
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 646
    .local v0, "uid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 648
    .local v1, "procState":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-gt v1, v2, :cond_14

    move v2, v3

    goto :goto_15

    :cond_14
    const/4 v2, 0x1

    .line 649
    .local v2, "newCounter":I
    :goto_15
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;
    invoke-static {v4}, Lcom/android/server/usage/UsageStatsService;->access$300(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object v4

    monitor-enter v4

    .line 650
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;
    invoke-static {v5}, Lcom/android/server/usage/UsageStatsService;->access$300(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 651
    .local v3, "oldCounter":I
    if-eq v2, v3, :cond_64

    .line 652
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;
    invoke-static {v5}, Lcom/android/server/usage/UsageStatsService;->access$300(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_66

    .line 654
    :try_start_31
    # getter for: Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;
    invoke-static {}, Lcom/android/server/usage/UsageStatsService;->access$400()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4c} :catch_4d
    .catchall {:try_start_31 .. :try_end_4c} :catchall_66

    .line 657
    goto :goto_64

    .line 655
    :catch_4d
    move-exception v5

    .line 656
    .local v5, "e":Ljava/io/IOException;
    :try_start_4e
    const-string v6, "UsageStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update counter set: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .end local v3    # "oldCounter":I
    .end local v5    # "e":Ljava/io/IOException;
    :cond_64
    :goto_64
    monitor-exit v4

    .line 660
    goto :goto_83

    .line 659
    :catchall_66
    move-exception v3

    monitor-exit v4
    :try_end_68
    .catchall {:try_start_4e .. :try_end_68} :catchall_66

    throw v3

    .line 641
    .end local v0    # "uid":I
    .end local v1    # "procState":I
    .end local v2    # "newCounter":I
    :pswitch_69
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService;->onUserRemoved(I)V

    .line 642
    goto :goto_83

    .line 637
    :pswitch_71
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->flushToDisk()V

    .line 638
    goto :goto_83

    .line 633
    :pswitch_77
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    .line 634
    nop

    .line 667
    :goto_83
    return-void

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_77
        :pswitch_71
        :pswitch_69
        :pswitch_a
    .end packed-switch
.end method
