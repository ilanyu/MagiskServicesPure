.class Lcom/android/server/StorageManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 696
    iput-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 699
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 701
    .local v1, "userId":I
    const/4 v2, 0x0

    if-ltz v1, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    move v3, v2

    :goto_11
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 704
    :try_start_14
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 705
    iget-object v2, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 706
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v3

    .line 707
    .local v3, "userSerialNumber":I
    iget-object v4, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/os/IVold;->onUserAdded(II)V

    .line 708
    .end local v2    # "um":Landroid/os/UserManager;
    .end local v3    # "userSerialNumber":I
    goto :goto_88

    :cond_38
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 709
    iget-object v3, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$1700(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    monitor-enter v3
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_47} :catch_89

    .line 710
    :try_start_47
    iget-object v4, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$1700(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 711
    .local v4, "size":I
    nop

    .local v2, "i":I
    :goto_52
    if-ge v2, v4, :cond_7a

    .line 712
    iget-object v5, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;
    invoke-static {v5}, Lcom/android/server/StorageManagerService;->access$1700(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 713
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    iget v6, v5, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-ne v6, v1, :cond_77

    .line 714
    const/16 v6, -0x2710

    iput v6, v5, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 715
    iget-object v6, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 711
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 718
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_7a
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_47 .. :try_end_7b} :catchall_85

    .line 719
    :try_start_7b
    iget-object v2, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/os/IVold;->onUserRemoved(I)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_84} :catch_89

    goto :goto_88

    .line 718
    :catchall_85
    move-exception v2

    :try_start_86
    monitor-exit v3
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    :try_start_87
    throw v2
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_88} :catch_89

    .line 723
    :cond_88
    :goto_88
    goto :goto_8f

    .line 721
    :catch_89
    move-exception v2

    .line 722
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "StorageManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_8f
    return-void
.end method
