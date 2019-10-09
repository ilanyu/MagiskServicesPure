.class public final Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;
.super Lcom/android/server/soundtrigger/SoundTriggerInternal;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalSoundTriggerService"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/soundtrigger/SoundTriggerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 1193
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerInternal;-><init>()V

    .line 1194
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mContext:Landroid/content/Context;

    .line 1195
    return-void
.end method

.method private declared-synchronized isInitialized()Z
    .registers 3

    monitor-enter p0

    .line 1234
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    if-nez v0, :cond_f

    .line 1235
    const-string v0, "SoundTriggerService"

    const-string v1, "SoundTriggerHelper not initialized."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_12

    .line 1236
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1238
    :cond_f
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1233
    :catchall_12
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;
    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1229
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1230
    :cond_7
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1231
    return-void
.end method

.method public getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 2

    .line 1217
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 1218
    :cond_8
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized setSoundTriggerHelper(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V
    .registers 2
    .param p1, "helper"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;

    monitor-enter p0

    .line 1198
    :try_start_1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1199
    monitor-exit p0

    return-void

    .line 1197
    .end local p1    # "helper":Lcom/android/server/soundtrigger/SoundTriggerHelper;
    :catchall_5
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;
    throw p1
.end method

.method public startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 6
    .param p1, "keyphraseId"    # I
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .param p3, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 1204
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    const/high16 v0, -0x80000000

    return v0

    .line 1205
    :cond_9
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startKeyphraseRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 4
    .param p1, "keyphraseId"    # I
    .param p2, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    monitor-enter p0

    .line 1211
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_13

    if-nez v0, :cond_b

    const/high16 v0, -0x80000000

    monitor-exit p0

    return v0

    .line 1212
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopKeyphraseRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_13

    monitor-exit p0

    return v0

    .line 1210
    .end local p1    # "keyphraseId":I
    .end local p2    # "listener":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_13
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;
    throw p1
.end method

.method public unloadKeyphraseModel(I)I
    .registers 3
    .param p1, "keyphraseId"    # I

    .line 1223
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    const/high16 v0, -0x80000000

    return v0

    .line 1224
    :cond_9
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    move-result v0

    return v0
.end method
