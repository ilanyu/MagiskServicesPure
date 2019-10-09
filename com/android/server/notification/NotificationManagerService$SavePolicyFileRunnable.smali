.class final Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SavePolicyFileRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 591
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "x1"    # Lcom/android/server/notification/NotificationManagerService$1;

    .line 591
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 594
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "NotificationService"

    const-string v1, "handleSavePolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$000(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;

    move-result-object v0

    monitor-enter v0

    .line 598
    :try_start_12
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$000(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_50
    .catchall {:try_start_12 .. :try_end_1c} :catchall_4e

    .line 602
    .local v1, "stream":Ljava/io/FileOutputStream;
    nop

    .line 601
    nop

    .line 605
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->access$100(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;Z)V

    .line 606
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$000(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2d} :catch_2e
    .catchall {:try_start_1e .. :try_end_2d} :catchall_4e

    .line 610
    goto :goto_3f

    .line 607
    :catch_2e
    move-exception v2

    .line 608
    .local v2, "e":Ljava/io/IOException;
    :try_start_2f
    const-string v3, "NotificationService"

    const-string v4, "Failed to save policy file, restoring backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$000(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 611
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_4e

    .line 612
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 613
    return-void

    .line 611
    :catchall_4e
    move-exception v1

    goto :goto_5a

    .line 599
    :catch_50
    move-exception v1

    .line 600
    .local v1, "e":Ljava/io/IOException;
    :try_start_51
    const-string v2, "NotificationService"

    const-string v3, "Failed to save policy file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    monitor-exit v0

    return-void

    .line 611
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_4e

    throw v1
.end method
