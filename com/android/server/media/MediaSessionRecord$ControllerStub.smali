.class Lcom/android/server/media/MediaSessionRecord$ControllerStub;
.super Landroid/media/session/ISessionController$Stub;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 1146
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Landroid/media/session/ISessionController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;ZII)V
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "asSystemService"    # Z
    .param p4, "direction"    # I
    .param p5, "flags"    # I

    .line 1241
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1242
    .local v10, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1243
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v12, v0

    .line 1245
    .local v12, "token":J
    move-object v14, p0

    :try_start_e
    iget-object v1, v14, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move v3, v10

    move v4, v11

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_25

    .line 1248
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1249
    nop

    .line 1250
    return-void

    .line 1248
    :catchall_25
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public fastForward(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1347
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->fastForward(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1349
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 3

    .line 1401
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1402
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2000(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1403
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getFlags()J
    .registers 3

    .line 1215
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mFlags:J
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1200(Lcom/android/server/media/MediaSessionRecord;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 1210
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1400(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Landroid/media/MediaMetadata;
    .registers 3

    .line 1377
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1378
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$1600(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1379
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1200
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3200(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .registers 2

    .line 1384
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3600(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Landroid/content/pm/ParceledListSlice;
    .registers 3

    .line 1389
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1390
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$1800(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1391
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1396
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1900(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRatingType()I
    .registers 2

    .line 1408
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mRatingType:I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2100(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 1205
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;
    .registers 12

    .line 1222
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1223
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2200(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_47

    .line 1224
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$500(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$500(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    goto :goto_26

    :cond_20
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$600(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    :goto_26
    move v7, v1

    .line 1225
    .local v7, "current":I
    new-instance v1, Landroid/media/session/ParcelableVolumeInfo;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 1226
    # getter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$2200(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$2300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioAttributes;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$2400(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v5

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$2500(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/media/session/ParcelableVolumeInfo;-><init>(ILandroid/media/AudioAttributes;III)V

    monitor-exit v0

    .line 1225
    return-object v1

    .line 1228
    .end local v7    # "current":I
    :cond_47
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2200(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3

    .line 1229
    .local v3, "volumeType":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1230
    .local v1, "attributes":Landroid/media/AudioAttributes;
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_7 .. :try_end_54} :catchall_77

    .line 1231
    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 1232
    .local v0, "stream":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    .line 1233
    .local v8, "max":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    .line 1234
    .local v9, "current":I
    new-instance v10, Landroid/media/session/ParcelableVolumeInfo;

    const/4 v5, 0x2

    move-object v2, v10

    move-object v4, v1

    move v6, v8

    move v7, v9

    invoke-direct/range {v2 .. v7}, Landroid/media/session/ParcelableVolumeInfo;-><init>(ILandroid/media/AudioAttributes;III)V

    return-object v10

    .line 1230
    .end local v0    # "stream":I
    .end local v1    # "attributes":Landroid/media/AudioAttributes;
    .end local v3    # "volumeType":I
    .end local v8    # "max":I
    .end local v9    # "current":I
    :catchall_77
    move-exception v1

    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v1
.end method

.method public isTransportControlEnabled()Z
    .registers 2

    .line 1413
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->isTransportControlEnabled()Z

    move-result v0

    return v0
.end method

.method public next(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1336
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->next(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1337
    return-void
.end method

.method public pause(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1326
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->pause(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1327
    return-void
.end method

.method public play(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1293
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->play(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1294
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1299
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1301
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1306
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1308
    return-void
.end method

.method public playFromUri(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1313
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1315
    return-void
.end method

.method public prepare(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1267
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepare(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1268
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1273
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1273
    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1275
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1280
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1281
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1280
    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1282
    return-void
.end method

.method public prepareFromUri(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1287
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1289
    return-void
.end method

.method public previous(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1341
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->previous(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1343
    return-void
.end method

.method public rate(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Landroid/media/Rating;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "rating"    # Landroid/media/Rating;

    .line 1364
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rate(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/media/Rating;)V

    .line 1366
    return-void
.end method

.method public registerCallbackListener(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .line 1163
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1166
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2800(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_59

    if-eqz v1, :cond_16

    .line 1168
    :try_start_f
    invoke-interface {p2}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13
    .catchall {:try_start_f .. :try_end_12} :catchall_59

    .line 1171
    goto :goto_14

    .line 1169
    :catch_13
    move-exception v1

    .line 1172
    :goto_14
    :try_start_14
    monitor-exit v0

    return-void

    .line 1174
    :cond_16
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    invoke-static {v1, p2}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    move-result v1

    if-gez v1, :cond_57

    .line 1175
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$3000(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 1176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v2, v3, p2, p1, v4}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;I)V

    .line 1175
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    # getter for: Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->access$3100()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1178
    const-string v1, "MediaSessionRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registering controller callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from controller"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_57
    monitor-exit v0

    .line 1183
    return-void

    .line 1182
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_14 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public rewind(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1353
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rewind(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1354
    return-void
.end method

.method public seekTo(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;J)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "pos"    # J

    .line 1358
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->seekTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V

    .line 1360
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "cb"    # Landroid/os/ResultReceiver;

    .line 1150
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCommand(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1152
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;

    .line 1371
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCustomAction(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1373
    return-void
.end method

.method public sendMediaButton(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;ZLandroid/view/KeyEvent;)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "asSystemService"    # Z
    .param p4, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1157
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1158
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1157
    move-object v2, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZLandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setVolumeTo(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;II)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "value"    # I
    .param p4, "flags"    # I

    .line 1255
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1256
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1257
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v9, v0

    .line 1259
    .local v9, "token":J
    :try_start_d
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    move-object v1, p1

    move v2, v7

    move v3, v8

    move-object v4, p2

    move v5, p3

    move v6, p4

    # invokes: Lcom/android/server/media/MediaSessionRecord;->setVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord;->access$3500(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_1d

    .line 1261
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1262
    nop

    .line 1263
    return-void

    .line 1261
    :catchall_1d
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public skipToQueueItem(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;J)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "id"    # J

    .line 1320
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->skipToTrack(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V

    .line 1322
    return-void
.end method

.method public stop(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1331
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->stop(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1332
    return-void
.end method

.method public unregisterCallbackListener(Landroid/media/session/ISessionControllerCallback;)V
    .registers 7
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .line 1187
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1188
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    move-result v1

    .line 1189
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    .line 1190
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$3000(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1192
    :cond_19
    # getter for: Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->access$3100()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1193
    const-string v2, "MediaSessionRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregistering callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    .end local v1    # "index":I
    :cond_3a
    monitor-exit v0

    .line 1196
    return-void

    .line 1195
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw v1
.end method
