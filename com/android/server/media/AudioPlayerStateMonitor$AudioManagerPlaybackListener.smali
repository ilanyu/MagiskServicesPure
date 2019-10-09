.class Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "AudioPlayerStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/AudioPlayerStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioManagerPlaybackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/AudioPlayerStateMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/media/AudioPlayerStateMonitor;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/AudioPlayerStateMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/media/AudioPlayerStateMonitor;
    .param p2, "x1"    # Lcom/android/server/media/AudioPlayerStateMonitor$1;

    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;-><init>(Lcom/android/server/media/AudioPlayerStateMonitor;)V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    # getter for: Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->access$100(Lcom/android/server/media/AudioPlayerStateMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 225
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v1, v1, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 226
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 228
    .local v1, "activeAudioPlaybackConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 229
    .local v3, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 230
    iget-object v4, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v4, v4, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .end local v3    # "config":Landroid/media/AudioPlaybackConfiguration;
    :cond_43
    goto :goto_17

    .line 236
    :cond_44
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_46
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_a8

    .line 237
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 238
    .local v4, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    .line 239
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v6, v6, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    .line 240
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 239
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a5

    .line 241
    # getter for: Lcom/android/server/media/AudioPlayerStateMonitor;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/AudioPlayerStateMonitor;->access$200()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 242
    # getter for: Lcom/android/server/media/AudioPlayerStateMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/media/AudioPlayerStateMonitor;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found a new active media playback. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {v4}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyString(Landroid/media/AudioPlaybackConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 242
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_8a
    iget-object v6, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v6, v6, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v6, v5}, Landroid/util/IntArray;->indexOf(I)I

    move-result v6

    .line 247
    .local v6, "index":I
    if-nez v6, :cond_95

    .line 249
    goto :goto_a5

    .line 250
    :cond_95
    if-lez v6, :cond_9e

    .line 251
    iget-object v7, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v7, v7, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v7, v6}, Landroid/util/IntArray;->remove(I)V

    .line 253
    :cond_9e
    iget-object v7, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v7, v7, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v7, v2, v5}, Landroid/util/IntArray;->add(II)V

    .line 236
    .end local v4    # "config":Landroid/media/AudioPlaybackConfiguration;
    .end local v5    # "uid":I
    .end local v6    # "index":I
    :cond_a5
    :goto_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 257
    .end local v3    # "i":I
    :cond_a8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ac
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_d9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 258
    .restart local v4    # "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v6

    .line 259
    .local v6, "pii":I
    iget-object v7, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v7, v7, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_cc

    goto :goto_cd

    :cond_cc
    move v5, v2

    .line 260
    .local v5, "wasActive":Z
    :goto_cd
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v7

    if-eq v5, v7, :cond_d8

    .line 261
    iget-object v7, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    # invokes: Lcom/android/server/media/AudioPlayerStateMonitor;->sendAudioPlayerActiveStateChangedMessageLocked(Landroid/media/AudioPlaybackConfiguration;Z)V
    invoke-static {v7, v4, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->access$400(Lcom/android/server/media/AudioPlayerStateMonitor;Landroid/media/AudioPlaybackConfiguration;Z)V

    .line 264
    .end local v4    # "config":Landroid/media/AudioPlaybackConfiguration;
    .end local v5    # "wasActive":Z
    .end local v6    # "pii":I
    :cond_d8
    goto :goto_ac

    .line 265
    :cond_d9
    iget-object v2, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v2, v2, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 266
    .local v3, "config":Landroid/media/AudioPlaybackConfiguration;
    iget-object v4, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    # invokes: Lcom/android/server/media/AudioPlayerStateMonitor;->sendAudioPlayerActiveStateChangedMessageLocked(Landroid/media/AudioPlaybackConfiguration;Z)V
    invoke-static {v4, v3, v5}, Lcom/android/server/media/AudioPlayerStateMonitor;->access$400(Lcom/android/server/media/AudioPlayerStateMonitor;Landroid/media/AudioPlaybackConfiguration;Z)V

    .line 267
    .end local v3    # "config":Landroid/media/AudioPlaybackConfiguration;
    goto :goto_e5

    .line 270
    :cond_f7
    iget-object v2, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    iput-object v1, v2, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    .line 271
    .end local v1    # "activeAudioPlaybackConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :catchall_fd
    move-exception v1

    monitor-exit v0
    :try_end_ff
    .catchall {:try_start_7 .. :try_end_ff} :catchall_fd

    throw v1
.end method
