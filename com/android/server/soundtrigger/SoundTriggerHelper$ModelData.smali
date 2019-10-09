.class Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelData"
.end annotation


# static fields
.field static final MODEL_LOADED:I = 0x1

.field static final MODEL_NOTLOADED:I = 0x0

.field static final MODEL_STARTED:I = 0x2


# instance fields
.field private mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

.field private mModelHandle:I

.field private mModelId:Ljava/util/UUID;

.field private mModelState:I

.field private mModelType:I

.field private mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private mRequested:Z

.field private mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;


# direct methods
.method private constructor <init>(Ljava/util/UUID;I)V
    .registers 5
    .param p1, "modelId"    # Ljava/util/UUID;
    .param p2, "modelType"    # I

    .line 1224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    .line 1212
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I

    .line 1214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 1215
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 1219
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I

    .line 1222
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 1225
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;

    .line 1228
    iput p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I

    .line 1229
    return-void
.end method

.method static createGenericModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 3
    .param p0, "modelId"    # Ljava/util/UUID;

    .line 1236
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    return-object v0
.end method

.method static createKeyphraseModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 3
    .param p0, "modelId"    # Ljava/util/UUID;

    .line 1232
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    return-object v0
.end method

.method static createModelDataOfUnknownType(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 3
    .param p0, "modelId"    # Ljava/util/UUID;

    .line 1242
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    return-object v0
.end method


# virtual methods
.method declared-synchronized callbackToString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1352
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_19

    :cond_16
    const-string/jumbo v1, "null"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized clearCallback()V
    .registers 2

    monitor-enter p0

    .line 1286
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1287
    monitor-exit p0

    return-void

    .line 1285
    :catchall_6
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized clearState()V
    .registers 3

    monitor-enter p0

    .line 1278
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I

    .line 1279
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I

    .line 1280
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 1281
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    .line 1282
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 1283
    monitor-exit p0

    return-void

    .line 1277
    :catchall_11
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .registers 2

    monitor-enter p0

    .line 1250
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized getHandle()I
    .registers 2

    monitor-enter p0

    .line 1298
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized getModelId()Ljava/util/UUID;
    .registers 2

    monitor-enter p0

    .line 1302
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized getModelType()I
    .registers 2

    monitor-enter p0

    .line 1327
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .registers 2

    monitor-enter p0

    .line 1306
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .registers 2

    monitor-enter p0

    .line 1323
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized isGenericModel()Z
    .registers 3

    monitor-enter p0

    .line 1335
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    monitor-exit p0

    return v1

    :catchall_a
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized isKeyphraseModel()Z
    .registers 2

    monitor-enter p0

    .line 1331
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized isModelLoaded()Z
    .registers 4

    monitor-enter p0

    .line 1254
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    goto :goto_e

    :cond_c
    const/4 v1, 0x0

    nop

    :cond_e
    :goto_e
    monitor-exit p0

    return v1

    :catchall_10
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized isModelNotLoaded()Z
    .registers 2

    monitor-enter p0

    .line 1258
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized isModelStarted()Z
    .registers 3

    monitor-enter p0

    .line 1274
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized isRequested()Z
    .registers 2

    monitor-enter p0

    .line 1311
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized modelTypeToString()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1368
    const/4 v0, 0x0

    .line 1369
    .local v0, "type":Ljava/lang/String;
    :try_start_2
    iget v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I

    packed-switch v1, :pswitch_data_2e

    goto :goto_13

    .line 1370
    :pswitch_8
    const-string v1, "Generic"

    move-object v0, v1

    goto :goto_13

    .line 1372
    :pswitch_c
    const-string v1, "Keyphrase"

    move-object v0, v1

    goto :goto_13

    .line 1371
    :pswitch_10
    const-string v1, "Unknown"

    move-object v0, v1

    .line 1374
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object v1

    .line 1367
    .end local v0    # "type":Ljava/lang/String;
    :catchall_2b
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0

    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method declared-synchronized requestedToString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1348
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    if-eqz v1, :cond_12

    const-string v1, "Yes"

    goto :goto_14

    :cond_12
    const-string v1, "No"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized setCallback(Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    monitor-enter p0

    .line 1246
    :try_start_1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1247
    monitor-exit p0

    return-void

    .line 1245
    .end local p1    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_5
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw p1
.end method

.method declared-synchronized setHandle(I)V
    .registers 2
    .param p1, "handle"    # I

    monitor-enter p0

    .line 1290
    :try_start_1
    iput p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1291
    monitor-exit p0

    return-void

    .line 1289
    .end local p1    # "handle":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw p1
.end method

.method declared-synchronized setLoaded()V
    .registers 2

    monitor-enter p0

    .line 1270
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1271
    monitor-exit p0

    return-void

    .line 1269
    :catchall_6
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V
    .registers 2
    .param p1, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    monitor-enter p0

    .line 1294
    :try_start_1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1295
    monitor-exit p0

    return-void

    .line 1293
    .end local p1    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catchall_5
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw p1
.end method

.method declared-synchronized setRequested(Z)V
    .registers 2
    .param p1, "requested"    # Z

    monitor-enter p0

    .line 1315
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1316
    monitor-exit p0

    return-void

    .line 1314
    .end local p1    # "requested":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw p1
.end method

.method declared-synchronized setSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)V
    .registers 2
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    monitor-enter p0

    .line 1319
    :try_start_1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1320
    monitor-exit p0

    return-void

    .line 1318
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :catchall_5
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw p1
.end method

.method declared-synchronized setStarted()V
    .registers 2

    monitor-enter p0

    .line 1262
    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1263
    monitor-exit p0

    return-void

    .line 1261
    :catchall_6
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized setStopped()V
    .registers 2

    monitor-enter p0

    .line 1266
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1267
    monitor-exit p0

    return-void

    .line 1265
    :catchall_6
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized stateToString()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 1339
    :try_start_1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I

    packed-switch v0, :pswitch_data_1a

    .line 1344
    const-string v0, "Unknown state"

    goto :goto_15

    .line 1342
    :pswitch_9
    const-string v0, "STARTED"
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_17

    monitor-exit p0

    return-object v0

    .line 1341
    :pswitch_d
    :try_start_d
    const-string v0, "LOADED"
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_17

    monitor-exit p0

    return-object v0

    .line 1340
    :pswitch_11
    :try_start_11
    const-string v0, "NOT_LOADED"
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_17

    monitor-exit p0

    return-object v0

    .line 1344
    :goto_15
    monitor-exit p0

    return-object v0

    .line 1338
    :catchall_17
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_11
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1360
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nModelState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->requestedToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->callbackToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->uuidToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->modelTypeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    .line 1360
    monitor-exit p0

    return-object v0

    .line 1359
    :catchall_52
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized uuidToString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1356
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method
