.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 5550
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 5550
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$AudioHandler;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .line 5550
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 5803
    if-eqz p1, :cond_20

    .line 5805
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 5806
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_8} :catch_9

    .line 5809
    goto :goto_20

    .line 5807
    :catch_9
    move-exception v0

    .line 5808
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5811
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_20
    :goto_20
    return-void
.end method

.method private getSoundEffectFilePath(I)Ljava/lang/String;
    .registers 7
    .param p1, "effectType"    # I

    .line 5590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5591
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5800()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5592
    .local v0, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_64

    .line 5593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/media/audio/ui/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5594
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5800()Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, p1

    aget v3, v4, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5596
    :cond_64
    return-object v0
.end method

.method private onLoadSoundEffects()Z
    .registers 18

    .line 5602
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5603
    :try_start_9
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5900(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1c

    .line 5604
    const-string v0, "AudioService"

    const-string/jumbo v4, "onLoadSoundEffects() called before boot complete"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5605
    monitor-exit v2

    return v3

    .line 5608
    :cond_1c
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_27

    .line 5609
    monitor-exit v2

    return v4

    .line 5612
    :cond_27
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6000(Lcom/android/server/audio/AudioService;)V

    .line 5614
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v5, Landroid/media/SoundPool$Builder;

    invoke-direct {v5}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 5615
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v5

    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v8, 0xd

    .line 5617
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 5618
    invoke-virtual {v7, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 5619
    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    .line 5616
    invoke-virtual {v5, v6}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v5

    .line 5620
    invoke-virtual {v5}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v5

    .line 5614
    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$2302(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 5621
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$2402(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 5622
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v6, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {v6, v7}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;-><init>(Lcom/android/server/audio/AudioService;)V

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v0, v6}, Lcom/android/server/audio/AudioService;->access$6102(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 5623
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->start()V

    .line 5624
    const/4 v0, 0x3

    .line 5625
    .local v0, "attempts":I
    :goto_72
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v6
    :try_end_78
    .catchall {:try_start_9 .. :try_end_78} :catchall_20e

    const-wide/16 v7, 0x1388

    if-nez v6, :cond_96

    add-int/lit8 v6, v0, -0x1

    .line 5625
    .local v6, "attempts":I
    if-lez v0, :cond_95

    .line 5628
    .end local v0    # "attempts":I
    :try_start_80
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_89
    .catch Ljava/lang/InterruptedException; {:try_start_80 .. :try_end_89} :catch_8a
    .catchall {:try_start_80 .. :try_end_89} :catchall_20e

    .line 5631
    :goto_89
    goto :goto_93

    .line 5629
    :catch_8a
    move-exception v0

    .line 5630
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_8b
    const-string v7, "AudioService"

    const-string v8, "Interrupted while waiting sound pool listener thread."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5630
    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_89

    .line 5624
    :goto_93
    move v0, v6

    goto :goto_72

    .line 5634
    :cond_95
    move v0, v6

    .line 5634
    .end local v6    # "attempts":I
    .local v0, "attempts":I
    :cond_96
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v6

    if-nez v6, :cond_d1

    .line 5635
    const-string v4, "AudioService"

    const-string/jumbo v6, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5636
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v4

    if-eqz v4, :cond_bc

    .line 5637
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    .line 5638
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$2102(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 5640
    :cond_bc
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$6102(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 5641
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/SoundPool;->release()V

    .line 5642
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$2302(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 5643
    monitor-exit v2

    return v3

    .line 5651
    :cond_d1
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5800()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 5652
    .local v6, "poolId":[I
    move v9, v3

    .line 5652
    .local v9, "fileIdx":I
    :goto_dc
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5800()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, -0x1

    if-ge v9, v10, :cond_ec

    .line 5653
    aput v11, v6, v9

    .line 5652
    add-int/lit8 v9, v9, 0x1

    goto :goto_dc

    .line 5661
    .end local v9    # "fileIdx":I
    :cond_ec
    const/4 v9, 0x0

    .line 5662
    .local v9, "numSamples":I
    move v10, v9

    move v9, v3

    .line 5662
    .local v9, "effect":I
    .local v10, "numSamples":I
    :goto_ef
    const/16 v12, 0xa

    if-ge v9, v12, :cond_168

    .line 5664
    iget-object v12, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v9

    aget v12, v12, v4

    if-nez v12, :cond_100

    .line 5665
    goto :goto_164

    .line 5667
    :cond_100
    iget-object v12, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v9

    aget v12, v12, v3

    aget v12, v6, v12

    if-ne v12, v11, :cond_14e

    .line 5668
    invoke-direct {v1, v9}, Lcom/android/server/audio/AudioService$AudioHandler;->getSoundEffectFilePath(I)Ljava/lang/String;

    move-result-object v12

    .line 5669
    .local v12, "filePath":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v13

    invoke-virtual {v13, v12, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v13

    .line 5670
    .local v13, "sampleId":I
    if-gtz v13, :cond_135

    .line 5671
    const-string v14, "AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Soundpool could not load file: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14d

    .line 5673
    :cond_135
    iget-object v11, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v9

    aput v13, v11, v4

    .line 5674
    iget-object v11, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v9

    aget v11, v11, v3

    aput v13, v6, v11

    .line 5675
    add-int/lit8 v10, v10, 0x1

    .line 5677
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v13    # "sampleId":I
    :goto_14d
    goto :goto_164

    .line 5678
    :cond_14e
    iget-object v11, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v9

    iget-object v12, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 5679
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v9

    aget v12, v12, v3

    aget v12, v6, v12

    aput v12, v11, v4

    .line 5662
    :goto_164
    add-int/lit8 v9, v9, 0x1

    const/4 v11, -0x1

    goto :goto_ef

    .line 5683
    .end local v9    # "effect":I
    :cond_168
    if-lez v10, :cond_19f

    .line 5684
    iget-object v9, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_173
    .catchall {:try_start_8b .. :try_end_173} :catchall_20e

    .line 5686
    const/4 v0, 0x3

    .line 5687
    move v9, v0

    move v0, v4

    .line 5687
    .local v0, "status":I
    .local v9, "attempts":I
    :goto_176
    move v11, v0

    .line 5688
    .end local v0    # "status":I
    .local v11, "status":I
    if-ne v11, v4, :cond_19d

    add-int/lit8 v13, v9, -0x1

    .line 5688
    .local v13, "attempts":I
    if-lez v9, :cond_1a1

    .line 5690
    .end local v9    # "attempts":I
    :try_start_17d
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 5691
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->status()I

    move-result v0
    :try_end_190
    .catch Ljava/lang/InterruptedException; {:try_start_17d .. :try_end_190} :catch_191
    .catchall {:try_start_17d .. :try_end_190} :catchall_20e

    .line 5694
    .end local v11    # "status":I
    .restart local v0    # "status":I
    goto :goto_19b

    .line 5692
    .end local v0    # "status":I
    .restart local v11    # "status":I
    :catch_191
    move-exception v0

    .line 5693
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_192
    const-string v9, "AudioService"

    const-string v14, "Interrupted while waiting sound pool callback."

    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5694
    .end local v0    # "e":Ljava/lang/InterruptedException;
    nop

    .line 5687
    move v0, v11

    .line 5687
    .end local v11    # "status":I
    .end local v13    # "attempts":I
    .local v0, "status":I
    .restart local v9    # "attempts":I
    :goto_19b
    move v9, v13

    goto :goto_176

    .line 5697
    .end local v0    # "status":I
    .restart local v11    # "status":I
    :cond_19d
    move v13, v9

    goto :goto_1a1

    .line 5697
    .end local v9    # "attempts":I
    .end local v11    # "status":I
    .local v0, "attempts":I
    :cond_19f
    move v13, v0

    const/4 v11, -0x1

    .line 5697
    .end local v0    # "attempts":I
    .restart local v11    # "status":I
    .restart local v13    # "attempts":I
    :cond_1a1
    :goto_1a1
    move v0, v11

    .line 5700
    .end local v11    # "status":I
    .local v0, "status":I
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v7

    if-eqz v7, :cond_1b8

    .line 5701
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->quit()V

    .line 5702
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v7, v5}, Lcom/android/server/audio/AudioService;->access$2102(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 5704
    :cond_1b8
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v7, v5}, Lcom/android/server/audio/AudioService;->access$6102(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 5705
    if-eqz v0, :cond_208

    .line 5706
    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onLoadSoundEffects(), Error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " while loading samples"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5708
    move v7, v3

    .line 5708
    .local v7, "effect":I
    :goto_1dc
    if-ge v7, v12, :cond_1fa

    .line 5709
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v8

    aget-object v8, v8, v7

    aget v8, v8, v4

    if-lez v8, :cond_1f6

    .line 5710
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v8

    aget-object v8, v8, v7

    const/4 v9, -0x1

    aput v9, v8, v4

    goto :goto_1f7

    .line 5708
    :cond_1f6
    const/4 v9, -0x1

    :goto_1f7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1dc

    .line 5714
    .end local v7    # "effect":I
    :cond_1fa
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/SoundPool;->release()V

    .line 5715
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v7, v5}, Lcom/android/server/audio/AudioService;->access$2302(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 5717
    .end local v6    # "poolId":[I
    .end local v10    # "numSamples":I
    .end local v13    # "attempts":I
    :cond_208
    monitor-exit v2

    .line 5718
    if-nez v0, :cond_20d

    move v3, v4

    nop

    :cond_20d
    return v3

    .line 5717
    .end local v0    # "status":I
    :catchall_20e
    move-exception v0

    monitor-exit v2
    :try_end_210
    .catchall {:try_start_192 .. :try_end_210} :catchall_20e

    throw v0
.end method

.method private onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V
    .registers 4
    .param p1, "apc"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "direction"    # I

    .line 5828
    :try_start_0
    invoke-interface {p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyVolumeAdjust(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 5831
    goto :goto_5

    .line 5829
    :catch_4
    move-exception v0

    .line 5832
    :goto_5
    return-void
.end method

.method private onPersistSafeVolumeState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 5820
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5823
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .registers 12
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    .line 5753
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5755
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 5757
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-nez v1, :cond_14

    .line 5758
    monitor-exit v0

    return-void

    .line 5762
    :cond_14
    if-gez p2, :cond_27

    .line 5763
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    # getter for: Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6200()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .local v1, "volFloat":F
    goto :goto_2b

    .line 5765
    .end local v1    # "volFloat":F
    :cond_27
    int-to-float v1, p2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 5768
    .restart local v1    # "volFloat":F
    :goto_2b
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    const/4 v3, 0x1

    aget v2, v2, v3

    if-lez v2, :cond_52

    .line 5769
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, p1

    aget v3, v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v4, v1

    move v5, v1

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_c3

    .line 5772
    :cond_52
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_c5

    .line 5774
    .local v2, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_57
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->getSoundEffectFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 5775
    .local v4, "filePath":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 5776
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 5777
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 5778
    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 5779
    new-instance v3, Lcom/android/server/audio/AudioService$AudioHandler$1;

    invoke-direct {v3, p0}, Lcom/android/server/audio/AudioService$AudioHandler$1;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 5784
    new-instance v3, Lcom/android/server/audio/AudioService$AudioHandler$2;

    invoke-direct {v3, p0}, Lcom/android/server/audio/AudioService$AudioHandler$2;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 5790
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_7a} :catch_ab
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_7a} :catch_93
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_7a} :catch_7b
    .catchall {:try_start_57 .. :try_end_7a} :catchall_c5

    .end local v4    # "filePath":Ljava/lang/String;
    goto :goto_c2

    .line 5795
    :catch_7b
    move-exception v3

    .line 5796
    .local v3, "ex":Ljava/lang/IllegalStateException;
    :try_start_7c
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaPlayer IllegalStateException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "volFloat":F
    .end local v2    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v3    # "ex":Ljava/lang/IllegalStateException;
    goto :goto_c3

    .line 5793
    .restart local v1    # "volFloat":F
    .restart local v2    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catch_93
    move-exception v3

    .line 5794
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_c2

    .line 5791
    :catch_ab
    move-exception v3

    .line 5792
    .local v3, "ex":Ljava/io/IOException;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaPlayer IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5797
    .end local v1    # "volFloat":F
    .end local v2    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_c2
    nop

    .line 5799
    :goto_c3
    monitor-exit v0

    .line 5800
    return-void

    .line 5799
    :catchall_c5
    move-exception v1

    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_7c .. :try_end_c7} :catchall_c5

    throw v1
.end method

.method private onUnloadSoundEffects()V
    .registers 8

    .line 5727
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5728
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-nez v1, :cond_11

    .line 5729
    monitor-exit v0

    return-void

    .line 5732
    :cond_11
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5800()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 5733
    .local v1, "poolId":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "fileIdx":I
    :goto_1d
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5800()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 5734
    aput v2, v1, v3

    .line 5733
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 5737
    .end local v3    # "fileIdx":I
    :cond_2c
    move v3, v2

    .local v3, "effect":I
    :goto_2d
    const/16 v4, 0xa

    if-ge v3, v4, :cond_7a

    .line 5738
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_3f

    .line 5739
    goto :goto_77

    .line 5741
    :cond_3f
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    aget v4, v4, v2

    aget v4, v1, v4

    if-nez v4, :cond_77

    .line 5742
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v6

    aget-object v6, v6, v3

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Landroid/media/SoundPool;->unload(I)Z

    .line 5743
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 5744
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    aget v4, v4, v2

    aput v6, v1, v4

    .line 5737
    :cond_77
    :goto_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 5747
    .end local v3    # "effect":I
    :cond_7a
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/SoundPool;->release()V

    .line 5748
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$2302(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 5749
    .end local v1    # "poolId":[I
    monitor-exit v0

    .line 5750
    return-void

    .line 5749
    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_7 .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method private persistRingerMode(I)V
    .registers 4
    .param p1, "ringerMode"    # I

    .line 5583
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5584
    return-void

    .line 5586
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5587
    return-void
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 7
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .line 5568
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5569
    return-void

    .line 5571
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_19

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 5572
    return-void

    .line 5574
    :cond_19
    # invokes: Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$5600(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 5575
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 5576
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    .line 5577
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    const/4 v3, -0x2

    .line 5575
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5580
    :cond_35
    return-void
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .registers 6
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5555
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 5558
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 5559
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_9
    if-ltz v1, :cond_29

    .line 5560
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_26

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    .line 5561
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_26

    .line 5562
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 5559
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 5565
    .end local v1    # "streamType":I
    :cond_29
    return-void
.end method

.method private setForceUse(IILjava/lang/String;)V
    .registers 6
    .param p1, "usage"    # I
    .param p2, "config"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 5814
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 5815
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(IILjava/lang/String;)V
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/audio/AudioService;->access$6400(Lcom/android/server/audio/AudioService;IILjava/lang/String;)V

    .line 5816
    monitor-exit v0

    .line 5817
    return-void

    .line 5816
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 5836
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_220

    packed-switch v0, :pswitch_data_228

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_232

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_23e

    packed-switch v0, :pswitch_data_258

    packed-switch v0, :pswitch_data_26a

    goto/16 :goto_21d

    .line 5887
    :pswitch_19
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 5888
    :try_start_20
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 5889
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_35

    .line 5890
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5891
    goto/16 :goto_21d

    .line 5889
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1

    .line 5924
    :pswitch_38
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$7400(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 5925
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5926
    goto/16 :goto_21d

    .line 5934
    :pswitch_4e
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_5a

    move v2, v3

    nop

    :cond_5a
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->disableAudioForUid(ZI)V

    .line 5936
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5937
    goto/16 :goto_21d

    .line 5929
    :pswitch_6a
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/server/audio/AudioService;->onBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$7500(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V

    .line 5930
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5931
    goto/16 :goto_21d

    .line 5919
    :pswitch_7e
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/audio/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 5920
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5921
    goto/16 :goto_21d

    .line 5914
    :pswitch_96
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$7200(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 5915
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5916
    goto/16 :goto_21d

    .line 5904
    :pswitch_ac
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    .line 5906
    .local v0, "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mWiredDevLogger:Lcom/android/server/audio/AudioEventLogger;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;-><init>(Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 5907
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    iget v5, v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mState:I

    iget-object v6, v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->access$7100(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5909
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5911
    .end local v0    # "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    goto/16 :goto_21d

    .line 6013
    :pswitch_d8
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    # invokes: Lcom/android/server/audio/AudioService;->onEnableSurroundFormats(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$8400(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V

    goto/16 :goto_21d

    .line 5861
    :pswitch_e3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_eb

    move v2, v3

    nop

    :cond_eb
    # invokes: Lcom/android/server/audio/AudioService;->onDispatchAudioServerStateChange(Z)V
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;Z)V

    .line 5862
    goto/16 :goto_21d

    .line 6009
    :pswitch_f0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V

    .line 6010
    goto/16 :goto_21d

    .line 5990
    :pswitch_fb
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onAccessoryPlugMediaUnmute(I)V
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$8100(Lcom/android/server/audio/AudioService;I)V

    .line 5991
    goto/16 :goto_21d

    .line 5986
    :pswitch_104
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 5987
    goto/16 :goto_21d

    .line 6005
    :pswitch_10b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$8300(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 6006
    goto/16 :goto_21d

    .line 6001
    :pswitch_118
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$8200(Lcom/android/server/audio/AudioService;II)V

    .line 6002
    goto/16 :goto_21d

    .line 5994
    :pswitch_123
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5995
    .local v0, "musicActiveMs":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "unsafe_volume_music_active_ms"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5998
    goto/16 :goto_21d

    .line 5982
    .end local v0    # "musicActiveMs":I
    :pswitch_134
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    .line 5983
    goto/16 :goto_21d

    .line 5865
    :pswitch_13b
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onUnloadSoundEffects()V

    .line 5866
    goto/16 :goto_21d

    .line 5978
    :pswitch_140
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onBroadcastScoConnectionState(I)V
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$8000(Lcom/android/server/audio/AudioService;I)V

    .line 5979
    goto/16 :goto_21d

    .line 5974
    :pswitch_149
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    .line 5975
    goto/16 :goto_21d

    .line 5970
    :pswitch_150
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x11

    if-ne v1, v4, :cond_15a

    move v2, v3

    nop

    :cond_15a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V
    invoke-static {v0, v2, v1}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    .line 5972
    goto/16 :goto_21d

    .line 5965
    :pswitch_163
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7800(Lcom/android/server/audio/AudioService;)V

    .line 5966
    goto/16 :goto_21d

    .line 5961
    :pswitch_16a
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$7700(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 5962
    goto/16 :goto_21d

    .line 5940
    :pswitch_175
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 5941
    .local v0, "N":I
    if-lez v0, :cond_1a5

    .line 5943
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 5944
    :try_start_184
    new-instance v3, Landroid/media/AudioRoutesInfo;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v3, v4}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 5945
    .local v3, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v2
    :try_end_18e
    .catchall {:try_start_184 .. :try_end_18e} :catchall_1a2

    .line 5946
    :goto_18e
    if-lez v0, :cond_1a5

    .line 5947
    add-int/lit8 v0, v0, -0x1

    .line 5948
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/IAudioRoutesObserver;

    .line 5950
    .local v2, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_19c
    invoke-interface {v2, v3}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_19f
    .catch Landroid/os/RemoteException; {:try_start_19c .. :try_end_19f} :catch_1a0

    .line 5952
    goto :goto_1a1

    .line 5951
    :catch_1a0
    move-exception v4

    .line 5953
    .end local v2    # "obs":Landroid/media/IAudioRoutesObserver;
    :goto_1a1
    goto :goto_18e

    .line 5945
    .end local v3    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_1a2
    move-exception v1

    :try_start_1a3
    monitor-exit v2
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a2

    throw v1

    .line 5955
    :cond_1a5
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5956
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;I)V

    .line 5957
    goto/16 :goto_21d

    .line 5843
    .end local v0    # "N":I
    :pswitch_1b3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 5844
    goto :goto_21d

    .line 5899
    :pswitch_1bb
    const-string v0, "AudioService"

    const-string v1, "In handleMessage(), calling resetBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5900
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->resetBluetoothSco()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;)V

    .line 5901
    goto :goto_21d

    .line 5895
    :pswitch_1c8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->setForceUse(IILjava/lang/String;)V

    .line 5896
    goto :goto_21d

    .line 5871
    :pswitch_1d4
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v0

    .line 5872
    .local v0, "loaded":Z
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_21d

    .line 5873
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 5874
    .local v3, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v3

    .line 5875
    if-eqz v0, :cond_1e5

    move v1, v2

    nop

    :cond_1e5
    :try_start_1e5
    iput v1, v3, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 5876
    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 5877
    monitor-exit v3

    .line 5878
    .end local v3    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    goto :goto_21d

    .line 5877
    .restart local v3    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :catchall_1ec
    move-exception v1

    monitor-exit v3
    :try_end_1ee
    .catchall {:try_start_1e5 .. :try_end_1ee} :catchall_1ec

    throw v1

    .line 5882
    .end local v0    # "loaded":Z
    .end local v3    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :pswitch_1ef
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    .line 5883
    goto :goto_21d

    .line 5857
    :pswitch_1f7
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    .line 5858
    goto :goto_21d

    .line 5853
    :pswitch_1fd
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    .line 5854
    goto :goto_21d

    .line 5847
    :pswitch_207
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 5848
    goto :goto_21d

    .line 5839
    :pswitch_211
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 5840
    nop

    .line 6016
    :cond_21d
    :goto_21d
    return-void

    nop

    nop

    :pswitch_data_220
    .packed-switch 0x0
        :pswitch_211
        :pswitch_207
    .end packed-switch

    :pswitch_data_228
    .packed-switch 0x3
        :pswitch_1fd
        :pswitch_1f7
        :pswitch_1ef
    .end packed-switch

    :pswitch_data_232
    .packed-switch 0x7
        :pswitch_1d4
        :pswitch_1c8
        :pswitch_1bb
        :pswitch_1b3
    .end packed-switch

    :pswitch_data_23e
    .packed-switch 0xc
        :pswitch_175
        :pswitch_1c8
        :pswitch_16a
        :pswitch_163
        :pswitch_150
        :pswitch_150
        :pswitch_149
        :pswitch_140
        :pswitch_13b
        :pswitch_134
        :pswitch_123
    .end packed-switch

    :pswitch_data_258
    .packed-switch 0x18
        :pswitch_118
        :pswitch_10b
        :pswitch_104
        :pswitch_fb
        :pswitch_f0
        :pswitch_e3
        :pswitch_d8
    .end packed-switch

    :pswitch_data_26a
    .packed-switch 0x64
        :pswitch_ac
        :pswitch_96
        :pswitch_7e
        :pswitch_6a
        :pswitch_4e
        :pswitch_38
        :pswitch_19
    .end packed-switch
.end method
