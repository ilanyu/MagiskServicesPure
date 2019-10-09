.class public Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "AnnouncementAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;,
        Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.AnnAggr"


# instance fields
.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mIsClosed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mListener:Landroid/hardware/radio/IAnnouncementListener;

.field private final mLock:Ljava/lang/Object;

.field private final mModuleWatchers:Ljava/util/Collection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/radio/IAnnouncementListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/radio/IAnnouncementListener;

    .line 48
    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$1;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/IAnnouncementListener;

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    .line 51
    :try_start_24
    invoke-interface {p1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_2e

    .line 54
    goto :goto_32

    .line 52
    :catch_2e
    move-exception v0

    .line 53
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 55
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    .line 35
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->onListUpdated()V

    return-void
.end method

.method public static synthetic lambda$onListUpdated$0(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Ljava/util/List;)V
    .registers 3
    .param p1, "combined"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {v0, p1}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V

    return-void
.end method

.method private onListUpdated()V
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-eqz v1, :cond_10

    .line 86
    const-string v1, "BcRadio2Srv.AnnAggr"

    const-string v2, "Announcement aggregator is closed, it shouldn\'t receive callbacks"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    monitor-exit v0

    return-void

    .line 89
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "combined":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/Announcement;>;"
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    .line 91
    .local v3, "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    iget-object v4, v3, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->currentList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    .end local v3    # "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    goto :goto_1b

    .line 93
    :cond_2d
    new-instance v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$AnnouncementAggregator$93ommYMMUp8HMTemNRAZV3ajfR0;

    invoke-direct {v2, p0, v1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$AnnouncementAggregator$93ommYMMUp8HMTemNRAZV3ajfR0;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Ljava/util/List;)V

    invoke-static {v2}, Lcom/android/server/broadcastradio/hal2/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;)V

    .line 94
    .end local v1    # "combined":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/Announcement;>;"
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 118
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 120
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {v1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 122
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    .line 123
    .local v2, "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    invoke-virtual {v2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->close()V

    .line 124
    .end local v2    # "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    goto :goto_1e

    .line 125
    :cond_2e
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public watchModule(Lcom/android/server/broadcastradio/hal2/RadioModule;[I)V
    .registers 8
    .param p1, "module"    # Lcom/android/server/broadcastradio/hal2/RadioModule;
    .param p2, "enabledTypes"    # [I

    .line 98
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-nez v1, :cond_27

    .line 101
    new-instance v1, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$1;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2d

    .line 104
    .local v1, "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    :try_start_d
    invoke-virtual {p1, p2, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_1d
    .catchall {:try_start_d .. :try_end_11} :catchall_2d

    .line 108
    .local v2, "closeHandle":Landroid/hardware/radio/ICloseHandle;
    nop

    .line 107
    nop

    .line 109
    :try_start_13
    invoke-virtual {v1, v2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->setCloseHandle(Landroid/hardware/radio/ICloseHandle;)V

    .line 110
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v1    # "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    .end local v2    # "closeHandle":Landroid/hardware/radio/ICloseHandle;
    monitor-exit v0

    .line 112
    return-void

    .line 105
    .restart local v1    # "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    :catch_1d
    move-exception v2

    .line 106
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "BcRadio2Srv.AnnAggr"

    const-string v4, "Failed to add announcement listener"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    monitor-exit v0

    return-void

    .line 99
    .end local v1    # "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 111
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_2d

    throw v1
.end method
