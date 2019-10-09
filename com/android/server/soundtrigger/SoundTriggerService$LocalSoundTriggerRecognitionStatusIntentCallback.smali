.class final Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalSoundTriggerRecognitionStatusIntentCallback"
.end annotation


# instance fields
.field private mCallbackIntent:Landroid/app/PendingIntent;

.field private mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private mUuid:Ljava/util/UUID;

.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/util/UUID;Landroid/app/PendingIntent;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V
    .registers 5
    .param p2, "modelUuid"    # Ljava/util/UUID;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p4, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 472
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    .line 473
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mUuid:Ljava/util/UUID;

    .line 474
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    .line 475
    iput-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 476
    return-void
.end method

.method private removeCallback(Z)V
    .registers 5
    .param p1, "releaseWakeLock"    # Z

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    .line 587
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacksLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 588
    :try_start_a
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacks:Ljava/util/TreeMap;
    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mUuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    if-eqz p1, :cond_20

    .line 590
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$1000(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 592
    :cond_20
    monitor-exit v0

    .line 593
    return-void

    .line 592
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_22

    throw v1
.end method


# virtual methods
.method public onError(I)V
    .registers 10
    .param p1, "status"    # I

    .line 529
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_5

    .line 530
    return-void

    .line 532
    :cond_5
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->grabWakeLock()V
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    .line 534
    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 536
    .local v0, "extras":Landroid/content/Intent;
    const-string v1, "android.media.soundtrigger.MESSAGE_TYPE"

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    const-string v1, "android.media.soundtrigger.STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    :try_start_31
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbackCompletedHandler:Landroid/app/PendingIntent$OnFinished;
    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 543
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V
    :try_end_47
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_31 .. :try_end_47} :catch_48

    .line 546
    goto :goto_4c

    .line 544
    :catch_48
    move-exception v1

    .line 545
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-direct {p0, v7}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V

    .line 547
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_4c
    return-void
.end method

.method public onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 507
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_5

    .line 508
    return-void

    .line 510
    :cond_5
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->grabWakeLock()V
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    .line 512
    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generic sound trigger event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 514
    .local v0, "extras":Landroid/content/Intent;
    const-string v1, "android.media.soundtrigger.MESSAGE_TYPE"

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 516
    const-string v1, "android.media.soundtrigger.RECOGNITION_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 518
    :try_start_30
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbackCompletedHandler:Landroid/app/PendingIntent$OnFinished;
    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 519
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v1, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    if-nez v1, :cond_4b

    .line 520
    invoke-direct {p0, v7}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V
    :try_end_4b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_30 .. :try_end_4b} :catch_4c

    .line 524
    :cond_4b
    goto :goto_51

    .line 522
    :catch_4c
    move-exception v1

    .line 523
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V

    .line 525
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_51
    return-void
.end method

.method public onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 485
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_5

    .line 486
    return-void

    .line 488
    :cond_5
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->grabWakeLock()V
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    .line 490
    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keyphrase sound trigger event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 492
    .local v0, "extras":Landroid/content/Intent;
    const-string v1, "android.media.soundtrigger.MESSAGE_TYPE"

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    const-string v1, "android.media.soundtrigger.RECOGNITION_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 496
    :try_start_30
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbackCompletedHandler:Landroid/app/PendingIntent$OnFinished;
    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 497
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v1, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    if-nez v1, :cond_4b

    .line 498
    invoke-direct {p0, v7}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V
    :try_end_4b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_30 .. :try_end_4b} :catch_4c

    .line 502
    :cond_4b
    goto :goto_51

    .line 500
    :catch_4c
    move-exception v1

    .line 501
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V

    .line 503
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_51
    return-void
.end method

.method public onRecognitionPaused()V
    .registers 8

    .line 551
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_5

    .line 552
    return-void

    .line 554
    :cond_5
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->grabWakeLock()V
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    .line 556
    const-string v0, "SoundTriggerService"

    const-string/jumbo v1, "onRecognitionPaused"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 558
    .local v0, "extras":Landroid/content/Intent;
    const-string v1, "android.media.soundtrigger.MESSAGE_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbackCompletedHandler:Landroid/app/PendingIntent$OnFinished;
    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_2f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1d .. :try_end_2f} :catch_30

    .line 564
    goto :goto_35

    .line 562
    :catch_30
    move-exception v1

    .line 563
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V

    .line 565
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_35
    return-void
.end method

.method public onRecognitionResumed()V
    .registers 8

    .line 569
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_5

    .line 570
    return-void

    .line 572
    :cond_5
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->grabWakeLock()V
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    .line 574
    const-string v0, "SoundTriggerService"

    const-string/jumbo v1, "onRecognitionResumed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 576
    .local v0, "extras":Landroid/content/Intent;
    const-string v1, "android.media.soundtrigger.MESSAGE_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbackCompletedHandler:Landroid/app/PendingIntent$OnFinished;
    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_2f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1d .. :try_end_2f} :catch_30

    .line 582
    goto :goto_35

    .line 580
    :catch_30
    move-exception v1

    .line 581
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->removeCallback(Z)V

    .line 583
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_35
    return-void
.end method

.method public pingBinder()Z
    .registers 2

    .line 480
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
