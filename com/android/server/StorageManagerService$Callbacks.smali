.class Lcom/android/server/StorageManagerService$Callbacks;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callbacks"
.end annotation


# static fields
.field private static final MSG_DISK_DESTROYED:I = 0x6

.field private static final MSG_DISK_SCANNED:I = 0x5

.field private static final MSG_STORAGE_STATE_CHANGED:I = 0x1

.field private static final MSG_VOLUME_FORGOTTEN:I = 0x4

.field private static final MSG_VOLUME_RECORD_CHANGED:I = 0x3

.field private static final MSG_VOLUME_STATE_CHANGED:I = 0x2


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/storage/IStorageEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 3637
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3633
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 3638
    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/StorageManagerService$Callbacks;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 3625
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService$Callbacks;
    .param p1, "x1"    # Landroid/os/storage/DiskInfo;

    .line 3625
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/StorageManagerService$Callbacks;
    .param p1, "x1"    # Landroid/os/storage/DiskInfo;
    .param p2, "x2"    # I

    .line 3625
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$Callbacks;->notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeInfo;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/StorageManagerService$Callbacks;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 3625
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService$Callbacks;
    .param p1, "x1"    # Landroid/os/storage/VolumeRecord;

    .line 3625
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService$Callbacks;
    .param p1, "x1"    # Ljava/lang/String;

    .line 3625
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeForgotten(Ljava/lang/String;)V

    return-void
.end method

.method private invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    .registers 7
    .param p1, "callback"    # Landroid/os/storage/IStorageEventListener;
    .param p2, "what"    # I
    .param p3, "args"    # Lcom/android/internal/os/SomeArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3665
    packed-switch p2, :pswitch_data_44

    goto :goto_42

    .line 3688
    :pswitch_4
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/DiskInfo;

    invoke-interface {p1, v0}, Landroid/os/storage/IStorageEventListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    goto :goto_42

    .line 3684
    :pswitch_c
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/DiskInfo;

    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {p1, v0, v1}, Landroid/os/storage/IStorageEventListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    .line 3685
    goto :goto_42

    .line 3680
    :pswitch_16
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/os/storage/IStorageEventListener;->onVolumeForgotten(Ljava/lang/String;)V

    .line 3681
    goto :goto_42

    .line 3676
    :pswitch_1e
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeRecord;

    invoke-interface {p1, v0}, Landroid/os/storage/IStorageEventListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    .line 3677
    goto :goto_42

    .line 3672
    :pswitch_26
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v2, p3, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {p1, v0, v1, v2}, Landroid/os/storage/IStorageEventListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    .line 3673
    goto :goto_42

    .line 3667
    :pswitch_32
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Landroid/os/storage/IStorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3669
    nop

    .line 3692
    :goto_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_32
        :pswitch_26
        :pswitch_1e
        :pswitch_16
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method private notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .registers 4
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .line 3730
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3731
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3732
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3733
    return-void
.end method

.method private notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .registers 5
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .line 3723
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3724
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3725
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3726
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3727
    return-void
.end method

.method private notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .line 3695
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3696
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3697
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 3698
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 3699
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3700
    return-void
.end method

.method private notifyVolumeForgotten(Ljava/lang/String;)V
    .registers 4
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 3717
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3718
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3719
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3720
    return-void
.end method

.method private notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .registers 4
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .line 3711
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3712
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->clone()Landroid/os/storage/VolumeRecord;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3713
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3714
    return-void
.end method

.method private notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 3703
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3704
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3705
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3706
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 3707
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3708
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 3650
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3651
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 3652
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1f

    .line 3653
    iget-object v3, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/storage/IStorageEventListener;

    .line 3655
    .local v3, "callback":Landroid/os/storage/IStorageEventListener;
    :try_start_15
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/StorageManagerService$Callbacks;->invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 3657
    goto :goto_1c

    .line 3656
    :catch_1b
    move-exception v4

    .line 3652
    .end local v3    # "callback":Landroid/os/storage/IStorageEventListener;
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3659
    .end local v2    # "i":I
    :cond_1f
    iget-object v2, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3660
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3661
    return-void
.end method

.method public register(Landroid/os/storage/IStorageEventListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/storage/IStorageEventListener;

    .line 3641
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3642
    return-void
.end method

.method public unregister(Landroid/os/storage/IStorageEventListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/storage/IStorageEventListener;

    .line 3645
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3646
    return-void
.end method
