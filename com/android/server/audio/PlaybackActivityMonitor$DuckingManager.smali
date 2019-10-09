.class final Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;
.super Ljava/lang/Object;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DuckingManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    }
.end annotation


# instance fields
.field private final mDuckers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/PlaybackActivityMonitor$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/audio/PlaybackActivityMonitor$1;

    .line 648
    invoke-direct {p0}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized checkDuck(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 4
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;

    monitor-enter p0

    .line 675
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    .line 676
    .local v0, "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    if-nez v0, :cond_15

    .line 677
    monitor-exit p0

    return-void

    .line 679
    :cond_15
    const/4 v1, 0x1

    :try_start_16
    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->addDuck(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    .line 680
    monitor-exit p0

    return-void

    .line 674
    .end local v0    # "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    .end local p1    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :catchall_1b
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;
    throw p1
.end method

.method declared-synchronized duckUid(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .local p2, "apcsToDuck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-enter p0

    .line 653
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 654
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    invoke-direct {v2, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    :cond_1b
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    .line 657
    .local v0, "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 658
    .local v2, "apc":Landroid/media/AudioPlaybackConfiguration;
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->addDuck(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3e

    .line 659
    .end local v2    # "apc":Landroid/media/AudioPlaybackConfiguration;
    goto :goto_2b

    .line 660
    :cond_3c
    monitor-exit p0

    return-void

    .line 652
    .end local v0    # "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    .end local p1    # "uid":I
    .end local p2    # "apcsToDuck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_3e
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;
    throw p1
.end method

.method declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 683
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    .line 684
    .local v1, "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->dump(Ljava/io/PrintWriter;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1d

    .line 685
    .end local v1    # "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    goto :goto_b

    .line 686
    :cond_1b
    monitor-exit p0

    return-void

    .line 682
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_1d
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;
    throw p1
.end method

.method declared-synchronized removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 5
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;

    monitor-enter p0

    .line 689
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    .line 692
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1a

    .line 693
    .local v1, "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    if-nez v1, :cond_15

    .line 694
    monitor-exit p0

    return-void

    .line 696
    :cond_15
    :try_start_15
    invoke-virtual {v1, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1a

    .line 697
    monitor-exit p0

    return-void

    .line 688
    .end local v0    # "uid":I
    .end local v1    # "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    .end local p1    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :catchall_1a
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;
    throw p1
.end method

.method declared-synchronized unduckUid(ILjava/util/HashMap;)V
    .registers 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .local p2, "players":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-enter p0

    .line 664
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_16

    .line 665
    .local v0, "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    if-nez v0, :cond_11

    .line 666
    monitor-exit p0

    return-void

    .line 668
    :cond_11
    :try_start_11
    invoke-virtual {v0, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->removeUnduckAll(Ljava/util/HashMap;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_16

    .line 669
    monitor-exit p0

    return-void

    .line 663
    .end local v0    # "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    .end local p1    # "uid":I
    .end local p2    # "players":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_16
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;
    throw p1
.end method
