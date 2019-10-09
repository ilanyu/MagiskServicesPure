.class Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;
.super Landroid/os/Handler;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecurityWriteHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/server/SecurityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 317
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    .line 318
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 319
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_b4

    goto/16 :goto_b3

    .line 357
    :pswitch_a
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    monitor-enter v0

    .line 358
    :try_start_d
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 359
    .local v1, "userId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 360
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    invoke-static {v3, v1}, Lcom/miui/server/SecurityManagerService;->access$800(Lcom/miui/server/SecurityManagerService;I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v3

    .line 361
    .local v3, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v4, v3, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 362
    .end local v1    # "userId":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    monitor-exit v0

    goto/16 :goto_b3

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    throw v1

    .line 343
    :pswitch_24
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 344
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/miui/server/SecurityManagerService;->access$500(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 345
    const/4 v2, 0x3

    :try_start_2f
    invoke-virtual {p0, v2}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->removeMessages(I)V

    .line 346
    const-string/jumbo v3, "vendor"

    invoke-static {v3, v2}, Lmiui/util/FeatureParser;->hasFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 347
    const-string/jumbo v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "vendor":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/miui/server/SecurityManagerService;->access$000(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mWakeTime:J
    invoke-static {v4}, Lcom/miui/server/SecurityManagerService;->access$700(Lcom/miui/server/SecurityManagerService;)J

    move-result-wide v4

    invoke-static {v3, v2, v4, v5}, Lmiui/security/SecurityManagerCompat;->writeBootTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 349
    const-string v3, "SecurityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wake up time updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mWakeTime:J
    invoke-static {v5}, Lcom/miui/server/SecurityManagerService;->access$700(Lcom/miui/server/SecurityManagerService;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v2    # "vendor":Ljava/lang/String;
    goto :goto_75

    .line 351
    :cond_6e
    const-string v2, "SecurityManagerService"

    const-string v3, "There is no corresponding feature!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_2f .. :try_end_76} :catchall_7a

    .line 354
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 355
    goto :goto_b3

    .line 353
    :catchall_7a
    move-exception v1

    :try_start_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v1

    .line 334
    :pswitch_7d
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 335
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/miui/server/SecurityManagerService;->access$500(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 336
    const/4 v2, 0x2

    :try_start_88
    invoke-virtual {p0, v2}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->removeMessages(I)V

    .line 337
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->writeWakeUpTime()V
    invoke-static {v2}, Lcom/miui/server/SecurityManagerService;->access$600(Lcom/miui/server/SecurityManagerService;)V

    .line 338
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_88 .. :try_end_91} :catchall_95

    .line 339
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 340
    goto :goto_b3

    .line 338
    :catchall_95
    move-exception v1

    :try_start_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v1

    .line 325
    :pswitch_98
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 326
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;
    invoke-static {v0}, Lcom/miui/server/SecurityManagerService;->access$300(Lcom/miui/server/SecurityManagerService;)Lcom/android/internal/os/AtomicFile;

    move-result-object v0

    monitor-enter v0

    .line 327
    const/4 v2, 0x1

    :try_start_a3
    invoke-virtual {p0, v2}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->removeMessages(I)V

    .line 328
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->writeSettings()V
    invoke-static {v2}, Lcom/miui/server/SecurityManagerService;->access$400(Lcom/miui/server/SecurityManagerService;)V

    .line 329
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_b0

    .line 330
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 331
    goto :goto_b3

    .line 329
    :catchall_b0
    move-exception v1

    :try_start_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v1

    .line 366
    :goto_b3
    return-void

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_98
        :pswitch_7d
        :pswitch_24
        :pswitch_a
    .end packed-switch
.end method
