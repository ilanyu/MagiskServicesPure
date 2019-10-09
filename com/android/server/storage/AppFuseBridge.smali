.class public Lcom/android/server/storage/AppFuseBridge;
.super Ljava/lang/Object;
.source "AppFuseBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/AppFuseBridge$MountScope;
    }
.end annotation


# static fields
.field private static final APPFUSE_MOUNT_NAME_TEMPLATE:Ljava/lang/String; = "/mnt/appfuse/%d_%d"

.field public static final TAG:Ljava/lang/String; = "AppFuseBridge"


# instance fields
.field private mNativeLoop:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mScopes:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/storage/AppFuseBridge$MountScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    .line 55
    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_new()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    .line 56
    return-void
.end method

.method private native native_add_bridge(JII)I
.end method

.method private native native_delete(J)V
.end method

.method private native native_new()J
.end method

.method private native native_start_loop(J)V
.end method

.method private declared-synchronized onClosed(I)V
    .registers 4
    .param p1, "mountId"    # I

    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    .line 125
    .local v0, "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    if-eqz v0, :cond_17

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->setMountResultLocked(Z)V

    .line 127
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 128
    iget-object v1, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 130
    :cond_17
    monitor-exit p0

    return-void

    .line 123
    .end local v0    # "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    .end local p1    # "mountId":I
    :catchall_19
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/storage/AppFuseBridge;
    throw p1
.end method

.method private declared-synchronized onMount(I)V
    .registers 4
    .param p1, "mountId"    # I

    monitor-enter p0

    .line 116
    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    .line 117
    .local v0, "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    if-eqz v0, :cond_f

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->setMountResultLocked(Z)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 120
    :cond_f
    monitor-exit p0

    return-void

    .line 115
    .end local v0    # "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    .end local p1    # "mountId":I
    :catchall_11
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/storage/AppFuseBridge;
    throw p1
.end method


# virtual methods
.method public addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "mountScope"    # Lcom/android/server/storage/AppFuseBridge$MountScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;,
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 61
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_50

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 63
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_45

    .line 66
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    iget v2, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    .line 67
    invoke-virtual {p1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->open()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v3

    .line 66
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/storage/AppFuseBridge;->native_add_bridge(JII)I

    move-result v0

    .line 68
    .local v0, "fd":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3d

    .line 71
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 72
    .local v1, "result":Landroid/os/ParcelFileDescriptor;
    iget-object v2, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    const/4 p1, 0x0

    .line 74
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_4d

    .line 77
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 74
    return-object v1

    .line 69
    .end local v1    # "result":Landroid/os/ParcelFileDescriptor;
    :cond_3d
    :try_start_3d
    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v2, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v1

    .line 64
    .end local v0    # "fd":I
    :cond_45
    new-instance v0, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v0

    .line 75
    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .line 77
    :catchall_50
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public openFile(IIII)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "pid"    # I
    .param p2, "mountId"    # I
    .param p3, "fileId"    # I
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 93
    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    .line 95
    .local v0, "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    if-eqz v0, :cond_3b

    .line 98
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_41

    .line 99
    iget v1, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->pid:I

    if-ne v1, p1, :cond_33

    .line 102
    invoke-virtual {v0}, Lcom/android/server/storage/AppFuseBridge$MountScope;->waitForMount()Z

    move-result v1

    .line 103
    .local v1, "result":Z
    if-eqz v1, :cond_2d

    .line 107
    :try_start_16
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountPoint:Ljava/io/File;

    .line 108
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    invoke-static {v2, p4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_25} :catch_26

    return-object v2

    .line 109
    :catch_26
    move-exception v2

    .line 110
    .local v2, "error":Ljava/io/FileNotFoundException;
    new-instance v3, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {v3, p2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v3

    .line 104
    .end local v2    # "error":Ljava/io/FileNotFoundException;
    :cond_2d
    new-instance v2, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {v2, p2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v2

    .line 100
    .end local v1    # "result":Z
    :cond_33
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "PID does not match"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_3b
    :try_start_3b
    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {v1, p2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v1

    .line 98
    .end local v0    # "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_41

    throw v0
.end method

.method public run()V
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/storage/AppFuseBridge;->native_start_loop(J)V

    .line 84
    monitor-enter p0

    .line 85
    :try_start_6
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/storage/AppFuseBridge;->native_delete(J)V

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 87
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method
