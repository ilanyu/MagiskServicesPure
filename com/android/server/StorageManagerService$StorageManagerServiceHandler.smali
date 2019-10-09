.class Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageManagerServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 573
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    .line 574
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 575
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 579
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_172

    goto/16 :goto_171

    .line 685
    :pswitch_8
    const-string v0, "StorageManagerService"

    const-string v1, "Aborting idle maintenance"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    goto/16 :goto_171

    .line 680
    :pswitch_1a
    const-string v0, "StorageManagerService"

    const-string v1, "Running idle maintenance"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 682
    goto/16 :goto_171

    .line 676
    :pswitch_2c
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->resetIfReadyAndConnected()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1600(Lcom/android/server/StorageManagerService;)V

    .line 677
    goto/16 :goto_171

    .line 671
    :pswitch_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 672
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    # invokes: Lcom/android/server/StorageManagerService;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/StorageManagerService;->access$1500(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    goto/16 :goto_171

    .line 641
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :pswitch_42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 642
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V

    .line 643
    goto/16 :goto_171

    .line 665
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_51
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 666
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 668
    goto/16 :goto_171

    .line 646
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_64
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 647
    .local v0, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "envState":Ljava/lang/String;
    const-string v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " broadcasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 648
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {v1}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 652
    .local v2, "action":Ljava/lang/String;
    if-eqz v2, :cond_171

    .line 653
    new-instance v3, Landroid/content/Intent;

    .line 654
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 655
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 656
    const/high16 v4, 0x5000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 658
    iget-object v4, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 659
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_171

    .line 628
    .end local v0    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v1    # "envState":Ljava/lang/String;
    .end local v2    # "action":Ljava/lang/String;
    :pswitch_c6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 629
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService;->access$1300(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 630
    const-string v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring mount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    goto/16 :goto_171

    .line 634
    :cond_f3
    :try_start_f3
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v1

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget v3, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget v4, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IVold;->mount(Ljava/lang/String;II)V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_102} :catch_104

    .line 637
    goto/16 :goto_171

    .line 635
    :catch_104
    move-exception v1

    .line 636
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_171

    .line 589
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_10b
    const-string v0, "StorageManagerService"

    const-string v2, "Running fstrim idle maintenance"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :try_start_112
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/StorageManagerService;->mLastMaintenance:J
    invoke-static {v0, v2, v3}, Lcom/android/server/StorageManagerService;->access$1002(Lcom/android/server/StorageManagerService;J)J

    .line 594
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1100(Lcom/android/server/StorageManagerService;)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLastMaintenance:J
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$1000(Lcom/android/server/StorageManagerService;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_12a} :catch_12b

    .line 597
    goto :goto_133

    .line 595
    :catch_12b
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    const-string v3, "Unable to record last fstrim!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_133
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StorageManagerService;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 604
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 605
    .local v0, "callback":Ljava/lang/Runnable;
    if-eqz v0, :cond_171

    .line 606
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_171

    .line 611
    .end local v0    # "callback":Ljava/lang/Runnable;
    :pswitch_143
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/IStorageShutdownObserver;

    .line 612
    .local v0, "obs":Landroid/os/storage/IStorageShutdownObserver;
    move v2, v1

    .line 614
    .local v2, "success":Z
    :try_start_148
    iget-object v3, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->shutdown()V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_151} :catch_153

    .line 615
    const/4 v2, 0x1

    .line 618
    goto :goto_159

    .line 616
    :catch_153
    move-exception v3

    .line 617
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "StorageManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_159
    if-eqz v0, :cond_171

    .line 621
    if-eqz v2, :cond_15e

    goto :goto_15f

    :cond_15e
    const/4 v1, -0x1

    :goto_15f
    :try_start_15f
    invoke-interface {v0, v1}, Landroid/os/storage/IStorageShutdownObserver;->onShutDownComplete(I)V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_162} :catch_163

    .line 623
    .end local v0    # "obs":Landroid/os/storage/IStorageShutdownObserver;
    .end local v2    # "success":Z
    :goto_162
    goto :goto_171

    .line 622
    .restart local v0    # "obs":Landroid/os/storage/IStorageShutdownObserver;
    .restart local v2    # "success":Z
    :catch_163
    move-exception v1

    goto :goto_162

    .line 585
    .end local v0    # "obs":Landroid/os/storage/IStorageShutdownObserver;
    .end local v2    # "success":Z
    :pswitch_165
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->handleDaemonConnected()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$900(Lcom/android/server/StorageManagerService;)V

    .line 586
    goto :goto_171

    .line 581
    :pswitch_16b
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->handleSystemReady()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$800(Lcom/android/server/StorageManagerService;)V

    .line 582
    nop

    .line 691
    :cond_171
    :goto_171
    return-void

    :pswitch_data_172
    .packed-switch 0x1
        :pswitch_16b
        :pswitch_165
        :pswitch_143
        :pswitch_10b
        :pswitch_c6
        :pswitch_64
        :pswitch_51
        :pswitch_42
        :pswitch_33
        :pswitch_2c
        :pswitch_1a
        :pswitch_8
    .end packed-switch
.end method
