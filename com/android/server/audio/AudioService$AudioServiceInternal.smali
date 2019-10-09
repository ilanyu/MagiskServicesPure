.class final Lcom/android/server/audio/AudioService$AudioServiceInternal;
.super Landroid/media/AudioManagerInternal;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AudioServiceInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .line 7938
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/media/AudioManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustStreamVolumeForUid(IIILjava/lang/String;I)V
    .registers 13
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .line 7962
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 7964
    return-void
.end method

.method public adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V
    .registers 13
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .line 7955
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    move v1, p2

    move v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    move v6, p5

    # invokes: Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$11900(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V

    .line 7957
    return-void
.end method

.method public getRingerModeInternal()I
    .registers 2

    .line 7974
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    return v0
.end method

.method public setAccessibilityServiceUids(Landroid/util/IntArray;)V
    .registers 7
    .param p1, "uids"    # Landroid/util/IntArray;

    .line 7998
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$12100(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7999
    :try_start_7
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-nez v1, :cond_14

    .line 8000
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$12202(Lcom/android/server/audio/AudioService;[I)[I

    goto :goto_58

    .line 8002
    :cond_14
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 8003
    # getter for: Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v3

    if-eq v1, v3, :cond_2b

    goto :goto_2d

    :cond_2b
    move v1, v2

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v1, 0x1

    .line 8004
    .local v1, "changed":Z
    :goto_2e
    if-nez v1, :cond_4d

    .line 8005
    nop

    .local v2, "i":I
    :goto_31
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)[I

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_4d

    .line 8006
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)[I

    move-result-object v4

    aget v4, v4, v2

    if-eq v3, v4, :cond_4a

    .line 8007
    const/4 v1, 0x1

    .line 8008
    goto :goto_4d

    .line 8005
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 8012
    .end local v2    # "i":I
    :cond_4d
    :goto_4d
    if-eqz v1, :cond_58

    .line 8013
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    # setter for: Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$12202(Lcom/android/server/audio/AudioService;[I)[I

    .line 8016
    .end local v1    # "changed":Z
    :cond_58
    :goto_58
    monitor-exit v0

    .line 8017
    return-void

    .line 8016
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_7 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
    .registers 4
    .param p1, "delegate"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 7941
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$11802(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 7942
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 7943
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7944
    :try_start_14
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;)Z

    .line 7945
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_24

    .line 7946
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result v0

    const-string v1, "AudioService.setRingerModeDelegate"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->setRingerModeInternal(ILjava/lang/String;)V

    goto :goto_27

    .line 7945
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1

    .line 7948
    :cond_27
    :goto_27
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .registers 4
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 7979
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 7980
    return-void
.end method

.method public setStreamVolumeForUid(IIILjava/lang/String;I)V
    .registers 13
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .line 7969
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    move v6, p5

    # invokes: Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$12000(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V

    .line 7970
    return-void
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .registers 3
    .param p1, "caller"    # Ljava/lang/String;

    .line 7984
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 7985
    return-void
.end method

.method public updateRingerModeAffectedStreamsInternal()V
    .registers 5

    .line 7989
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7990
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 7991
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v1, v2, v3}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;IZ)V

    .line 7993
    :cond_19
    monitor-exit v0

    .line 7994
    return-void

    .line 7993
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method
