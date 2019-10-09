.class Lcom/android/server/am/MiuiApplicationThreadManager;
.super Ljava/lang/Object;
.source "MiuiApplicationThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiApplicationThreadManager$CallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessManager"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mMiuiApplicationThreads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmiui/process/IMiuiApplicationThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MiuiApplicationThreadManager;->mMiuiApplicationThreads:Landroid/util/SparseArray;

    .line 22
    iput-object p1, p0, Lcom/android/server/am/MiuiApplicationThreadManager;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V
    .registers 7
    .param p1, "applicationThread"    # Lmiui/process/IMiuiApplicationThread;
    .param p2, "pid"    # I

    monitor-enter p0

    .line 26
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MiuiApplicationThreadManager;->mMiuiApplicationThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_33

    .line 28
    :try_start_6
    new-instance v0, Lcom/android/server/am/MiuiApplicationThreadManager$CallBack;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/am/MiuiApplicationThreadManager$CallBack;-><init>(Lcom/android/server/am/MiuiApplicationThreadManager;ILmiui/process/IMiuiApplicationThread;)V

    .line 29
    .local v0, "callback":Lcom/android/server/am/MiuiApplicationThreadManager$CallBack;
    invoke-interface {p1}, Lmiui/process/IMiuiApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_14
    .catchall {:try_start_6 .. :try_end_13} :catchall_33

    .line 32
    .end local v0    # "callback":Lcom/android/server/am/MiuiApplicationThreadManager$CallBack;
    goto :goto_31

    .line 30
    :catch_14
    move-exception v0

    .line 31
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v1, "ProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is dead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_33

    .line 33
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_31
    monitor-exit p0

    return-void

    .line 25
    .end local p1    # "applicationThread":Lmiui/process/IMiuiApplicationThread;
    .end local p2    # "pid":I
    :catchall_33
    move-exception p1

    monitor-exit p0

    .line 25
    .end local p0    # "this":Lcom/android/server/am/MiuiApplicationThreadManager;
    throw p1
.end method

.method public declared-synchronized getMiuiApplicationThread(I)Lmiui/process/IMiuiApplicationThread;
    .registers 3
    .param p1, "pid"    # I

    monitor-enter p0

    .line 40
    if-eqz p1, :cond_f

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MiuiApplicationThreadManager;->mMiuiApplicationThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/IMiuiApplicationThread;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    goto :goto_10

    .end local p1    # "pid":I
    :catchall_c
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/MiuiApplicationThreadManager;
    throw p1

    .restart local p0    # "this":Lcom/android/server/am/MiuiApplicationThreadManager;
    .restart local p1    # "pid":I
    :cond_f
    const/4 v0, 0x0

    :goto_10
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized removeMiuiApplicationThread(I)V
    .registers 3
    .param p1, "pid"    # I

    monitor-enter p0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MiuiApplicationThreadManager;->mMiuiApplicationThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 37
    monitor-exit p0

    return-void

    .line 35
    .end local p1    # "pid":I
    :catchall_8
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/MiuiApplicationThreadManager;
    throw p1
.end method
