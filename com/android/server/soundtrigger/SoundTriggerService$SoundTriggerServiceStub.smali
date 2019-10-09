.class Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
.super Lcom/android/internal/app/ISoundTriggerService$Stub;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundTriggerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 162
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Lcom/android/internal/app/ISoundTriggerService$Stub;-><init>()V

    return-void
.end method

.method private startRecognitionForInt(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 12
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p3, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 319
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->isInitialized()Z
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_12

    return v1

    .line 322
    :cond_12
    const-string v0, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecognition(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 326
    :try_start_30
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mLoadedModels:Ljava/util/TreeMap;
    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 327
    .local v2, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    if-nez v2, :cond_5a

    .line 328
    const-string v3, "SoundTriggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not loaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    monitor-exit v0

    return v1

    .line 331
    :cond_5a
    const/4 v3, 0x0

    .line 332
    .local v3, "existingCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacksLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_62
    .catchall {:try_start_30 .. :try_end_62} :catchall_fb

    .line 333
    :try_start_62
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacks:Ljava/util/TreeMap;
    invoke-static {v5}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-object v3, v5

    .line 334
    monitor-exit v4
    :try_end_74
    .catchall {:try_start_62 .. :try_end_74} :catchall_f8

    .line 335
    if-eqz v3, :cond_8e

    .line 336
    :try_start_76
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is already running"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    monitor-exit v0

    return v1

    .line 340
    :cond_8e
    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_100

    .line 352
    const-string v4, "SoundTriggerService"

    goto :goto_f1

    .line 348
    :pswitch_97
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    move-object v6, v2

    check-cast v6, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-virtual {v1, v4, v6, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v1

    .line 350
    .local v1, "ret":I
    goto :goto_bc

    .line 342
    .end local v1    # "ret":I
    :pswitch_a7
    move-object v1, v2

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 343
    .local v1, "keyphraseSoundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v4

    iget-object v6, v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v6, v6, v5

    iget v6, v6, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-virtual {v4, v6, v1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startKeyphraseRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v4

    .end local v1    # "keyphraseSoundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    move v1, v4

    .line 346
    .local v1, "ret":I
    nop

    .line 353
    :goto_bc
    nop

    .line 356
    if-eqz v1, :cond_d7

    .line 357
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start model: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    monitor-exit v0

    return v1

    .line 360
    :cond_d7
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacksLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_de
    .catchall {:try_start_76 .. :try_end_de} :catchall_fb

    .line 361
    :try_start_de
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacks:Ljava/util/TreeMap;
    invoke-static {v6}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    monitor-exit v4
    :try_end_ec
    .catchall {:try_start_de .. :try_end_ec} :catchall_ee

    .line 363
    .end local v1    # "ret":I
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local v3    # "existingCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_start_ec
    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_fb

    .line 364
    return v5

    .line 362
    .restart local v1    # "ret":I
    .restart local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .restart local v3    # "existingCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_ee
    move-exception v5

    :try_start_ef
    monitor-exit v4
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_ee

    :try_start_f0
    throw v5

    .line 352
    .end local v1    # "ret":I
    :goto_f1
    const-string v5, "Unknown model type"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_f0 .. :try_end_f7} :catchall_fb

    return v1

    .line 334
    :catchall_f8
    move-exception v1

    :try_start_f9
    monitor-exit v4
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    :try_start_fa
    throw v1

    .line 363
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local v3    # "existingCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_fb
    move-exception v1

    monitor-exit v0
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_fb

    throw v1

    nop

    nop

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_97
    .end packed-switch
.end method


# virtual methods
.method public deleteSoundModel(Landroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;

    .line 229
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 231
    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSoundModel(): id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 235
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->deleteGenericSoundModel(Ljava/util/UUID;)Z

    .line 236
    return-void
.end method

.method public getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .registers 5
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;

    .line 209
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 211
    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSoundModel(): id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v0

    .line 215
    .local v0, "model":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    return-object v0
.end method

.method public isRecognitionActive(Landroid/os/ParcelUuid;)Z
    .registers 6
    .param p1, "parcelUuid"    # Landroid/os/ParcelUuid;

    .line 452
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->isInitialized()Z
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    .line 454
    :cond_11
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacksLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 455
    :try_start_18
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacks:Ljava/util/TreeMap;
    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 456
    .local v2, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-nez v2, :cond_2c

    .line 457
    monitor-exit v0

    return v1

    .line 459
    .end local v2    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_3c

    .line 460
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionRequested(Ljava/util/UUID;)Z

    move-result v0

    return v0

    .line 459
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I
    .registers 7
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 240
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->isInitialized()Z
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_12

    return v1

    .line 242
    :cond_12
    if-eqz p1, :cond_82

    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    if-nez v0, :cond_19

    goto :goto_82

    .line 247
    :cond_19
    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadGenericSoundModel(): id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 250
    :try_start_39
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mLoadedModels:Ljava/util/TreeMap;
    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 254
    .local v1, "oldModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    if-eqz v1, :cond_71

    invoke-virtual {v1, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 255
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 256
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacksLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_61
    .catchall {:try_start_39 .. :try_end_61} :catchall_7f

    .line 257
    :try_start_61
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacks:Ljava/util/TreeMap;
    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    monitor-exit v2

    goto :goto_71

    :catchall_6e
    move-exception v3

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_61 .. :try_end_70} :catchall_6e

    :try_start_70
    throw v3

    .line 260
    :cond_71
    :goto_71
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mLoadedModels:Ljava/util/TreeMap;
    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .end local v1    # "oldModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    monitor-exit v0

    .line 262
    const/4 v0, 0x0

    return v0

    .line 261
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_70 .. :try_end_81} :catchall_7f

    throw v1

    .line 243
    :cond_82
    :goto_82
    const-string v0, "SoundTriggerService"

    const-string v2, "Invalid sound model"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v1
.end method

.method public loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .registers 8
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 267
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->isInitialized()Z
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_12

    return v1

    .line 269
    :cond_12
    if-eqz p1, :cond_9a

    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    if-nez v0, :cond_1a

    goto/16 :goto_9a

    .line 273
    :cond_1a
    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-eqz v0, :cond_92

    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_25

    goto :goto_92

    .line 278
    :cond_25
    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadKeyphraseSoundModel(): id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 281
    :try_start_45
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mLoadedModels:Ljava/util/TreeMap;
    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 285
    .local v1, "oldModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    const/4 v2, 0x0

    if-eqz v1, :cond_82

    invoke-virtual {v1, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    .line 286
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    .line 287
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacksLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_72
    .catchall {:try_start_45 .. :try_end_72} :catchall_8f

    .line 288
    :try_start_72
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacks:Ljava/util/TreeMap;
    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    monitor-exit v3

    goto :goto_82

    :catchall_7f
    move-exception v2

    monitor-exit v3
    :try_end_81
    .catchall {:try_start_72 .. :try_end_81} :catchall_7f

    :try_start_81
    throw v2

    .line 291
    :cond_82
    :goto_82
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mLoadedModels:Ljava/util/TreeMap;
    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .end local v1    # "oldModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    monitor-exit v0

    .line 293
    return v2

    .line 292
    :catchall_8f
    move-exception v1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_81 .. :try_end_91} :catchall_8f

    throw v1

    .line 274
    :cond_92
    :goto_92
    const-string v0, "SoundTriggerService"

    const-string v2, "Only one keyphrase per model is currently supported."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return v1

    .line 270
    :cond_9a
    :goto_9a
    const-string v0, "SoundTriggerService"

    const-string v2, "Invalid sound model"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ISoundTriggerService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 168
    :catch_5
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 172
    const-string v1, "SoundTriggerService"

    const-string v2, "SoundTriggerService Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :cond_11
    throw v0
.end method

.method public startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 9
    .param p1, "parcelUuid"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p3, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 181
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->isInitialized()Z
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_12

    return v1

    .line 184
    :cond_12
    const-string v0, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecognition(): Uuid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v0

    .line 188
    .local v0, "model":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    if-nez v0, :cond_46

    .line 189
    const-string v2, "SoundTriggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null model in database for id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return v1

    .line 193
    :cond_46
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v1

    return v1
.end method

.method public startRecognitionForIntent(Landroid/os/ParcelUuid;Landroid/app/PendingIntent;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 7
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p3, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 312
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 313
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusIntentCallback;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/util/UUID;Landroid/app/PendingIntent;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 312
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->startRecognitionForInt(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v0

    return v0
.end method

.method public startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 13
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "detectionService"    # Landroid/content/ComponentName;
    .param p4, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 299
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v7, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 304
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 305
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    move-object v0, v7

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 303
    invoke-direct {p0, p1, v7, p4}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->startRecognitionForInt(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v0

    return v0
.end method

.method public stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 6
    .param p1, "parcelUuid"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 199
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 201
    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRecognition(): Uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->isInitialized()Z
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    if-nez v0, :cond_29

    const/high16 v0, -0x80000000

    return v0

    .line 204
    :cond_29
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v0

    return v0
.end method

.method public stopRecognitionForIntent(Landroid/os/ParcelUuid;)I
    .registers 10
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;

    .line 369
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->isInitialized()Z
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_12

    return v1

    .line 372
    :cond_12
    const-string v0, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopRecognition(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 376
    :try_start_30
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mLoadedModels:Ljava/util/TreeMap;
    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 377
    .local v2, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    if-nez v2, :cond_5a

    .line 378
    const-string v3, "SoundTriggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not loaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    monitor-exit v0

    return v1

    .line 381
    :cond_5a
    const/4 v3, 0x0

    .line 382
    .local v3, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacksLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_62
    .catchall {:try_start_30 .. :try_end_62} :catchall_f7

    .line 383
    :try_start_62
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacks:Ljava/util/TreeMap;
    invoke-static {v5}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-object v3, v5

    .line 384
    monitor-exit v4
    :try_end_74
    .catchall {:try_start_62 .. :try_end_74} :catchall_f4

    .line 385
    if-nez v3, :cond_8e

    .line 386
    :try_start_76
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not running"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    monitor-exit v0

    return v1

    .line 390
    :cond_8e
    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_fc

    .line 399
    const-string v4, "SoundTriggerService"

    goto :goto_ed

    .line 396
    :pswitch_97
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v4, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v1

    .line 397
    .local v1, "ret":I
    goto :goto_b8

    .line 392
    .end local v1    # "ret":I
    :pswitch_a4
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    move-object v4, v2

    check-cast v4, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    iget-object v4, v4, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v4, v4, v5

    iget v4, v4, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-virtual {v1, v4, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopKeyphraseRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v1

    .line 394
    .restart local v1    # "ret":I
    nop

    .line 400
    :goto_b8
    nop

    .line 403
    if-eqz v1, :cond_d3

    .line 404
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to stop model: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    monitor-exit v0

    return v1

    .line 407
    :cond_d3
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacksLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_da
    .catchall {:try_start_76 .. :try_end_da} :catchall_f7

    .line 408
    :try_start_da
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacks:Ljava/util/TreeMap;
    invoke-static {v6}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    monitor-exit v4
    :try_end_e8
    .catchall {:try_start_da .. :try_end_e8} :catchall_ea

    .line 410
    .end local v1    # "ret":I
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local v3    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_start_e8
    monitor-exit v0
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_f7

    .line 411
    return v5

    .line 409
    .restart local v1    # "ret":I
    .restart local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .restart local v3    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_ea
    move-exception v5

    :try_start_eb
    monitor-exit v4
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    :try_start_ec
    throw v5

    .line 399
    .end local v1    # "ret":I
    :goto_ed
    const-string v5, "Unknown model type"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_ec .. :try_end_f3} :catchall_f7

    return v1

    .line 384
    :catchall_f4
    move-exception v1

    :try_start_f5
    monitor-exit v4
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    :try_start_f6
    throw v1

    .line 410
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local v3    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_f7
    move-exception v1

    monitor-exit v0
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_f7

    throw v1

    nop

    nop

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_97
    .end packed-switch
.end method

.method public unloadSoundModel(Landroid/os/ParcelUuid;)I
    .registers 8
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;

    .line 416
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->isInitialized()Z
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_12

    return v1

    .line 419
    :cond_12
    const-string v0, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unloadSoundModel(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 423
    :try_start_30
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mLoadedModels:Ljava/util/TreeMap;
    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 424
    .local v2, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    if-nez v2, :cond_5a

    .line 425
    const-string v3, "SoundTriggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not loaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    monitor-exit v0

    return v1

    .line 429
    :cond_5a
    iget v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_aa

    .line 438
    const-string v3, "SoundTriggerService"

    goto :goto_9f

    .line 435
    :pswitch_63
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    iget-object v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    move-result v1

    .line 436
    .local v1, "ret":I
    goto :goto_84

    .line 431
    .end local v1    # "ret":I
    :pswitch_70
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    move-object v3, v2

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    iget-object v3, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-virtual {v1, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    move-result v1

    .line 433
    .restart local v1    # "ret":I
    nop

    .line 439
    :goto_84
    nop

    .line 441
    if-eqz v1, :cond_90

    .line 442
    const-string v3, "SoundTriggerService"

    const-string v4, "Failed to unload model"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    monitor-exit v0

    return v1

    .line 445
    :cond_90
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mLoadedModels:Ljava/util/TreeMap;
    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    monitor-exit v0

    return v4

    .line 438
    .end local v1    # "ret":I
    :goto_9f
    const-string v4, "Unknown model type"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    monitor-exit v0

    return v1

    .line 447
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :catchall_a6
    move-exception v1

    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_30 .. :try_end_a8} :catchall_a6

    throw v1

    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_70
        :pswitch_63
    .end packed-switch
.end method

.method public updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    .registers 5
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 220
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    # invokes: Lcom/android/server/soundtrigger/SoundTriggerService;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 222
    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSoundModel(): model = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    # getter for: Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->updateGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Z

    .line 225
    return-void
.end method
