.class public Lcom/android/server/soundtrigger/SoundTriggerHelper;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;,
        Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;,
        Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final INVALID_VALUE:I = -0x80000000

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "SoundTriggerHelper"


# instance fields
.field private mCallActive:Z

.field private final mContext:Landroid/content/Context;

.field private mIsPowerSaveMode:Z

.field private mKeyphraseUuidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mModelDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;",
            ">;"
        }
    .end annotation
.end field

.field private mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

.field final mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

.field private mRecognitionRunning:Z

.field private mServiceDisabled:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    invoke-static {v1}, Landroid/hardware/soundtrigger/SoundTrigger;->listModules(Ljava/util/ArrayList;)I

    move-result v2

    .line 114
    .local v2, "status":I
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 115
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 116
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 117
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 118
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    .line 119
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;

    invoke-direct {v3, p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    iput-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 120
    if-nez v2, :cond_5b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_52

    goto :goto_5b

    .line 126
    :cond_52
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    goto :goto_83

    .line 121
    :cond_5b
    :goto_5b
    const-string v0, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listModules status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", # of modules="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 123
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 128
    :goto_83
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 65
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .param p1, "x1"    # Z

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onCallStateChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 65
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .param p1, "x1"    # Z

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onPowerSaveModeChangedLocked(Z)V

    return-void
.end method

.method private cleanUpExistingKeyphraseModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I
    .registers 6
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v0

    .line 218
    .local v0, "status":I
    if-eqz v0, :cond_21

    .line 219
    const-string v1, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to stop or unload previous model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_21
    return v0
.end method

.method private computeRecognitionRunningLocked()Z
    .registers 5

    .line 1166
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v0, :cond_a

    goto :goto_32

    .line 1170
    :cond_a
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1171
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    .line 1173
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    return v0

    .line 1175
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_2c
    goto :goto_14

    .line 1176
    :cond_2d
    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    .line 1177
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    return v0

    .line 1167
    :cond_32
    :goto_32
    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    .line 1168
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    return v0
.end method

.method private createKeyphraseModelDataLocked(Ljava/util/UUID;I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 5
    .param p1, "modelId"    # Ljava/util/UUID;
    .param p2, "keyphraseId"    # I

    .line 1033
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->createKeyphraseModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 1037
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    return-object v0
.end method

.method private dumpModelStateLocked()V
    .registers 7

    .line 1157
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 1158
    .local v1, "modelId":Ljava/util/UUID;
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1159
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Model :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    .end local v1    # "modelId":Ljava/util/UUID;
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    goto :goto_a

    .line 1161
    :cond_39
    return-void
.end method

.method private forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 933
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 934
    return-void
.end method

.method private forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V
    .registers 8
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "exception"    # Ljava/lang/Exception;
    .param p3, "modelDataIterator"    # Ljava/util/Iterator;

    .line 949
    if-eqz p2, :cond_9

    .line 950
    const-string v0, "SoundTriggerHelper"

    const-string v1, "forceStopAndUnloadModel"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 953
    const-string v0, "SoundTriggerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping previously started dangling model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v0

    if-eqz v0, :cond_3d

    .line 955
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 956
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    goto :goto_57

    .line 958
    :cond_3d
    const-string v0, "SoundTriggerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to stop model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_57
    :goto_57
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 962
    const-string v0, "SoundTriggerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unloading previously loaded dangling model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v0

    if-nez v0, :cond_be

    .line 965
    if-eqz p3, :cond_89

    .line 966
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_92

    .line 968
    :cond_89
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    :goto_92
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 971
    .local v0, "it":Ljava/util/Iterator;
    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 972
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 973
    .local v1, "pair":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 974
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 976
    .end local v1    # "pair":Ljava/util/Map$Entry;
    :cond_b9
    goto :goto_9c

    .line 977
    :cond_ba
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    .line 978
    .end local v0    # "it":Ljava/util/Iterator;
    goto :goto_d8

    .line 979
    :cond_be
    const-string v0, "SoundTriggerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unload model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_d8
    :goto_d8
    return-void
.end method

.method private getKeyphraseIdFromEvent(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)I
    .registers 6
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 740
    const/high16 v0, -0x80000000

    if-nez p1, :cond_c

    .line 741
    const-string v1, "SoundTriggerHelper"

    const-string v2, "Null RecognitionEvent received."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return v0

    .line 744
    :cond_c
    iget-object v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 746
    .local v1, "keyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    if-eqz v1, :cond_1a

    array-length v2, v1

    if-nez v2, :cond_14

    goto :goto_1a

    .line 751
    :cond_14
    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    return v0

    .line 747
    :cond_1a
    :goto_1a
    const-string v2, "SoundTriggerHelper"

    const-string v3, "Invalid keyphrase recognition event!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return v0
.end method

.method private getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 4
    .param p1, "keyphraseId"    # I

    .line 1023
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 1024
    .local v0, "uuid":Ljava/util/UUID;
    if-nez v0, :cond_10

    .line 1025
    const/4 v1, 0x0

    return-object v1

    .line 1027
    :cond_10
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    return-object v1
.end method

.method private getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 5
    .param p1, "modelHandle"    # I

    .line 1046
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1047
    .local v1, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    if-ne v2, p1, :cond_1d

    .line 1048
    return-object v1

    .line 1050
    .end local v1    # "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_1d
    goto :goto_a

    .line 1051
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private getOrCreateGenericModelDataLocked(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 5
    .param p1, "modelId"    # Ljava/util/UUID;

    .line 1002
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1003
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-nez v0, :cond_14

    .line 1004
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->createGenericModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 1005
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 1006
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1007
    const-string v1, "SoundTriggerHelper"

    const-string v2, "UUID already used for non-generic model."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v1, 0x0

    return-object v1

    .line 1010
    :cond_23
    :goto_23
    return-object v0
.end method

.method private initializeTelephonyAndPowerStateListeners()V
    .registers 7

    .line 889
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 892
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    iput-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 895
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 899
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    if-nez v2, :cond_33

    .line 900
    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    .line 901
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 904
    :cond_33
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v2

    iget-boolean v2, v2, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_44

    .line 907
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 908
    nop

    .line 909
    return-void

    .line 907
    :catchall_44
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private internalClearGlobalStateLocked()V
    .registers 6

    .line 831
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 833
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1f

    .line 835
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 836
    nop

    .line 839
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    if-eqz v2, :cond_1e

    .line 840
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 841
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    .line 843
    :cond_1e
    return-void

    .line 835
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private internalClearModelStateLocked()V
    .registers 3

    .line 847
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 848
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    .line 849
    .end local v1    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    goto :goto_a

    .line 850
    :cond_1a
    return-void
.end method

.method private isKeyphraseRecognitionEvent(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .line 605
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    return v0
.end method

.method private isRecognitionAllowed()Z
    .registers 2

    .line 1058
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private onCallStateChangedLocked(Z)V
    .registers 3
    .param p1, "callActive"    # Z

    .line 683
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    if-ne v0, p1, :cond_5

    .line 686
    return-void

    .line 688
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 689
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    .line 690
    return-void
.end method

.method private onGenericRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 609
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_generic_recognition_event"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 610
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->status:I

    if-eqz v0, :cond_e

    .line 611
    return-void

    .line 613
    :cond_e
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 614
    .local v0, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v0, :cond_82

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_82

    .line 620
    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v1

    .line 621
    .local v1, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-nez v1, :cond_3c

    .line 622
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generic recognition event: Null callback for model handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void

    .line 627
    :cond_3c
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 629
    :try_start_3f
    invoke-interface {v1, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    :try_end_42
    .catch Landroid/os/DeadObjectException; {:try_start_3f .. :try_end_42} :catch_7d
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_43

    .line 635
    goto :goto_4b

    .line 633
    :catch_43
    move-exception v3

    .line 634
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "SoundTriggerHelper"

    const-string v5, "RemoteException in onGenericSoundTriggerDetected"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4b
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v3

    .line 638
    .local v3, "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    if-nez v3, :cond_6a

    .line 639
    const-string v2, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generic recognition event: Null RecognitionConfig for model handle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-void

    .line 644
    :cond_6a
    iget-boolean v4, v3, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    invoke-virtual {v0, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 646
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 647
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v4

    invoke-direct {p0, v0, v4, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    .line 650
    :cond_7c
    return-void

    .line 630
    .end local v3    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catch_7d
    move-exception v2

    .line 631
    .local v2, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 632
    return-void

    .line 615
    .end local v1    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v2    # "e":Landroid/os/DeadObjectException;
    :cond_82
    :goto_82
    const-string v1, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generic recognition event: Model does not exist for handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method

.method private onKeyphraseRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 755
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition success"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_keyphrase_recognition_event"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 757
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseIdFromEvent(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)I

    move-result v0

    .line 758
    .local v0, "keyphraseId":I
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v1

    .line 760
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v1, :cond_60

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_60

    .line 765
    :cond_21
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v3

    if-nez v3, :cond_2f

    .line 766
    const-string v2, "SoundTriggerHelper"

    const-string v3, "Received onRecognition event without callback for keyphrase model."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    return-void

    .line 769
    :cond_2f
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 772
    :try_start_32
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_39
    .catch Landroid/os/DeadObjectException; {:try_start_32 .. :try_end_39} :catch_5b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_39} :catch_3a

    .line 778
    goto :goto_42

    .line 776
    :catch_3a
    move-exception v3

    .line 777
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "SoundTriggerHelper"

    const-string v5, "RemoteException in onKeyphraseDetected"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_42
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v3

    .line 781
    .local v3, "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    if-eqz v3, :cond_4d

    .line 783
    iget-boolean v4, v3, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    invoke-virtual {v1, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 786
    :cond_4d
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 787
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v4

    invoke-direct {p0, v1, v4, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    .line 789
    :cond_5a
    return-void

    .line 773
    .end local v3    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catch_5b
    move-exception v2

    .line 774
    .local v2, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 775
    return-void

    .line 761
    .end local v2    # "e":Landroid/os/DeadObjectException;
    :cond_60
    :goto_60
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keyphase model data does not exist for ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void
.end method

.method private onPowerSaveModeChangedLocked(Z)V
    .registers 3
    .param p1, "isPowerSaveMode"    # Z

    .line 693
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    if-ne v0, p1, :cond_5

    .line 694
    return-void

    .line 696
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 697
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    .line 698
    return-void
.end method

.method private onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .line 713
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition aborted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_recognition_aborted"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 715
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 716
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 717
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 719
    :try_start_21
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_28
    .catch Landroid/os/DeadObjectException; {:try_start_21 .. :try_end_28} :catch_32
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_36

    .line 722
    :catch_29
    move-exception v1

    .line 723
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SoundTriggerHelper"

    const-string v3, "RemoteException in onRecognitionPaused"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_37

    .line 720
    :catch_32
    move-exception v1

    .line 721
    .local v1, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 724
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :goto_36
    nop

    .line 726
    :cond_37
    :goto_37
    return-void
.end method

.method private onRecognitionFailureLocked()V
    .registers 4

    .line 729
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition failure"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_recognition_failure_event"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 732
    const/high16 v0, -0x80000000

    :try_start_12
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->sendErrorCallbacksToAllLocked(I)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1d

    .line 734
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 735
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 736
    nop

    .line 737
    return-void

    .line 734
    :catchall_1d
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 735
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    throw v0
.end method

.method private onServiceDiedLocked()V
    .registers 5

    .line 816
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_service_died"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 817
    sget v1, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->sendErrorCallbacksToAllLocked(I)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_21

    .line 819
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 820
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 821
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_20

    .line 822
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 823
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 826
    :cond_20
    return-void

    .line 819
    :catchall_21
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 820
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 821
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v2, :cond_33

    .line 822
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 823
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    :cond_33
    throw v1
.end method

.method private onServiceStateChangedLocked(Z)V
    .registers 3
    .param p1, "disabled"    # Z

    .line 705
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    if-ne p1, v0, :cond_5

    .line 706
    return-void

    .line 708
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    .line 709
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    .line 710
    return-void
.end method

.method private onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .line 702
    return-void
.end method

.method private removeKeyphraseModelLocked(I)V
    .registers 5
    .param p1, "keyphraseId"    # I

    .line 1014
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 1015
    .local v0, "uuid":Ljava/util/UUID;
    if-nez v0, :cond_f

    .line 1016
    return-void

    .line 1018
    :cond_f
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    return-void
.end method

.method private sendErrorCallbacksToAllLocked(I)V
    .registers 9
    .param p1, "errorCode"    # I

    .line 913
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 914
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    .line 915
    .local v2, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-eqz v2, :cond_3b

    .line 917
    :try_start_1c
    invoke-interface {v2, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 921
    goto :goto_3b

    .line 918
    :catch_20
    move-exception v3

    .line 919
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "SoundTriggerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException sendErrorCallbacksToAllLocked for model handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 919
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 923
    .end local v1    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local v2    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3b
    :goto_3b
    goto :goto_a

    .line 924
    :cond_3c
    return-void
.end method

.method private startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .registers 11
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "notify"    # Z

    .line 1064
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 1065
    .local v0, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    .line 1066
    .local v1, "handle":I
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v2

    .line 1067
    .local v2, "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    if-eqz v0, :cond_92

    if-eq v1, v3, :cond_92

    if-nez v2, :cond_17

    goto/16 :goto_92

    .line 1074
    :cond_17
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1076
    const-string v3, "SoundTriggerHelper"

    const-string/jumbo v5, "startRecognition requested but not allowed."

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sth_start_recognition_not_allowed"

    invoke-static {v3, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1078
    const/4 v3, 0x0

    return v3

    .line 1081
    :cond_2f
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v3, v1, v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v3

    .line 1082
    .local v3, "status":I
    if-eqz v3, :cond_6a

    .line 1083
    const-string v5, "SoundTriggerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startRecognition failed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sth_start_recognition_error"

    invoke-static {v5, v6, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1086
    if-eqz p2, :cond_91

    .line 1088
    :try_start_58
    invoke-interface {v0, v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_5b
    .catch Landroid/os/DeadObjectException; {:try_start_58 .. :try_end_5b} :catch_65
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 1093
    :goto_5b
    goto :goto_91

    .line 1091
    :catch_5c
    move-exception v4

    .line 1092
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "SoundTriggerHelper"

    const-string v6, "RemoteException in onError"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1092
    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_5b

    .line 1089
    :catch_65
    move-exception v4

    .line 1090
    .local v4, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, p1, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 1090
    .end local v4    # "e":Landroid/os/DeadObjectException;
    goto :goto_5b

    .line 1096
    :cond_6a
    const-string v5, "SoundTriggerHelper"

    const-string/jumbo v6, "startRecognition successful."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sth_start_recognition_success"

    invoke-static {v5, v6, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1098
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStarted()V

    .line 1100
    if-eqz p2, :cond_91

    .line 1102
    :try_start_7f
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionResumed()V
    :try_end_82
    .catch Landroid/os/DeadObjectException; {:try_start_7f .. :try_end_82} :catch_8c
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_82} :catch_83

    .line 1107
    :goto_82
    goto :goto_91

    .line 1105
    :catch_83
    move-exception v4

    .line 1106
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "SoundTriggerHelper"

    const-string v6, "RemoteException in onRecognitionResumed"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1106
    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_91

    .line 1103
    :catch_8c
    move-exception v4

    .line 1104
    .local v4, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, p1, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 1104
    .end local v4    # "e":Landroid/os/DeadObjectException;
    goto :goto_82

    .line 1113
    :cond_91
    :goto_91
    return v3

    .line 1069
    .end local v3    # "status":I
    :cond_92
    :goto_92
    const-string v5, "SoundTriggerHelper"

    const-string/jumbo v6, "startRecognition: Bad data passed in."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sth_start_recognition_error"

    invoke-static {v5, v6, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1071
    return v3
.end method

.method private stopAndUnloadDeadModelsLocked()V
    .registers 6

    .line 985
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 986
    .local v0, "it":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 987
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 988
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v2

    if-nez v2, :cond_23

    .line 989
    goto :goto_a

    .line 991
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 992
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 993
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_64

    .line 995
    :cond_41
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing model "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " that has no clients"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 998
    .end local v1    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_64
    goto :goto_a

    .line 999
    :cond_65
    return-void
.end method

.method private stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 8
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 414
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    const/high16 v1, -0x80000000

    if-nez p2, :cond_b

    .line 416
    :try_start_7
    monitor-exit v0

    return v1

    .line 457
    :catchall_9
    move-exception v1

    goto :goto_73

    .line 418
    :cond_b
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_14

    goto :goto_6a

    .line 423
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    .line 424
    .local v2, "currentCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-eqz p1, :cond_61

    if-eqz v2, :cond_61

    .line 425
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_61

    .line 431
    :cond_29
    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eq v3, v4, :cond_3c

    .line 434
    const-string v3, "SoundTriggerHelper"

    const-string v4, "Attempting stopRecognition for another recognition"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    monitor-exit v0

    return v1

    .line 439
    :cond_3c
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 440
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v3

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v1

    .line 442
    .local v1, "status":I
    if-eqz v1, :cond_4c

    .line 443
    monitor-exit v0

    return v1

    .line 448
    :cond_4c
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setLoaded()V

    .line 449
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearCallback()V

    .line 450
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 452
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->computeRecognitionRunningLocked()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 453
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 456
    :cond_5f
    monitor-exit v0

    return v1

    .line 427
    .end local v1    # "status":I
    :cond_61
    :goto_61
    const-string v3, "SoundTriggerHelper"

    const-string v4, "Attempting stopRecognition without a successful startRecognition"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    monitor-exit v0

    return v1

    .line 419
    .end local v2    # "currentCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :cond_6a
    :goto_6a
    const-string v2, "SoundTriggerHelper"

    const-string v3, "Attempting stopRecognition without the capability"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    monitor-exit v0

    return v1

    .line 457
    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_7 .. :try_end_74} :catchall_9

    throw v1
.end method

.method private stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .registers 9
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "notify"    # Z

    .line 1117
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 1120
    .local v0, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    const/4 v1, 0x0

    .line 1122
    .local v1, "status":I
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v1

    .line 1124
    const/4 v2, 0x1

    if-eqz v1, :cond_45

    .line 1125
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopRecognition call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sth_stop_recognition_error"

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1127
    if-eqz p2, :cond_64

    .line 1129
    :try_start_33
    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_36
    .catch Landroid/os/DeadObjectException; {:try_start_33 .. :try_end_36} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    .line 1134
    :goto_36
    goto :goto_64

    .line 1132
    :catch_37
    move-exception v2

    .line 1133
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SoundTriggerHelper"

    const-string v4, "RemoteException in onError"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1133
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_36

    .line 1130
    :catch_40
    move-exception v2

    .line 1131
    .local v2, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 1131
    .end local v2    # "e":Landroid/os/DeadObjectException;
    goto :goto_36

    .line 1137
    :cond_45
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 1138
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sth_stop_recognition_success"

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1140
    if-eqz p2, :cond_64

    .line 1142
    :try_start_52
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_55
    .catch Landroid/os/DeadObjectException; {:try_start_52 .. :try_end_55} :catch_5f
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_55} :catch_56

    .line 1147
    :goto_55
    goto :goto_64

    .line 1145
    :catch_56
    move-exception v2

    .line 1146
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SoundTriggerHelper"

    const-string v4, "RemoteException in onRecognitionPaused"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1146
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_64

    .line 1143
    :catch_5f
    move-exception v2

    .line 1144
    .local v2, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 1144
    .end local v2    # "e":Landroid/os/DeadObjectException;
    goto :goto_55

    .line 1153
    :cond_64
    :goto_64
    return v1
.end method

.method private tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    .registers 8
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "stopModel"    # Z
    .param p3, "unloadModel"    # Z

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "status":I
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelNotLoaded()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 467
    return v0

    .line 469
    :cond_8
    if-eqz p2, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 470
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v0

    .line 472
    if-eqz v0, :cond_2f

    .line 473
    const-string v1, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopRecognition failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return v0

    .line 478
    :cond_2f
    if-eqz p3, :cond_6e

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 479
    const-string v1, "SoundTriggerHelper"

    const-string v2, "Unloading previously loaded stale model."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v0

    .line 481
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_unloading_stale_model"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 482
    if-eqz v0, :cond_6b

    .line 483
    const-string v1, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unloadSoundModel call failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 486
    :cond_6b
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    .line 489
    :cond_6e
    :goto_6e
    return v0
.end method

.method private updateAllRecognitionsLocked(Z)V
    .registers 6
    .param p1, "notify"    # Z

    .line 792
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v0

    .line 794
    .local v0, "isAllowed":Z
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 795
    .local v1, "modelDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 796
    .local v3, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-direct {p0, v3, v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    .line 797
    .end local v3    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    goto :goto_13

    .line 798
    :cond_23
    return-void
.end method

.method private updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    .registers 7
    .param p1, "model"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "isAllowed"    # Z
    .param p3, "notify"    # Z

    .line 802
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    .line 803
    .local v0, "start":Z
    :goto_c
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v2

    if-ne v0, v2, :cond_13

    .line 805
    return v1

    .line 807
    :cond_13
    if-eqz v0, :cond_1a

    .line 808
    invoke-direct {p0, p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v1

    return v1

    .line 810
    :cond_1a
    invoke-direct {p0, p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v1

    return v1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 878
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 879
    :try_start_3
    const-string v1, "  module properties="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 880
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v1, :cond_10

    const-string/jumbo v1, "null"

    goto :goto_12

    :cond_10
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    :goto_12
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 882
    const-string v1, "  call active="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 883
    const-string v1, "  power save mode active="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 884
    const-string v1, "  service disabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 885
    monitor-exit v0

    .line 886
    return-void

    .line 885
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    return-object v0
.end method

.method isRecognitionRequested(Ljava/util/UUID;)Z
    .registers 5
    .param p1, "modelId"    # Ljava/util/UUID;

    .line 563
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 565
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    monitor-exit v0

    return v2

    .line 566
    .end local v1    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .line 572
    if-nez p1, :cond_a

    .line 573
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Null recognition event!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return-void

    .line 577
    :cond_a
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    if-nez v0, :cond_1a

    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    if-nez v0, :cond_1a

    .line 579
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Invalid recognition event type (not one of generic or keyphrase)!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void

    .line 584
    :cond_1a
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_1d
    iget v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    packed-switch v1, :pswitch_data_44

    goto :goto_3e

    .line 591
    :pswitch_23
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onRecognitionFailureLocked()V

    .line 592
    goto :goto_3e

    .line 587
    :pswitch_27
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V

    .line 588
    goto :goto_3e

    .line 594
    :pswitch_2b
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isKeyphraseRecognitionEvent(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 595
    move-object v1, p1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onKeyphraseRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    goto :goto_3e

    .line 597
    :cond_38
    move-object v1, p1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onGenericRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    .line 601
    :goto_3e
    monitor-exit v0

    .line 602
    return-void

    .line 601
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_40

    throw v1

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_27
        :pswitch_23
    .end packed-switch
.end method

.method public onServiceDied()V
    .registers 4

    .line 675
    const-string v0, "SoundTriggerHelper"

    const-string/jumbo v1, "onServiceDied!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_service_died"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 677
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_14
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onServiceDiedLocked()V

    .line 679
    monitor-exit v0

    .line 680
    return-void

    .line 679
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public onServiceStateChange(I)V
    .registers 4
    .param p1, "state"    # I

    .line 668
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    const/4 v1, 0x1

    if-ne v1, p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    :try_start_8
    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onServiceStateChangedLocked(Z)V

    .line 670
    monitor-exit v0

    .line 671
    return-void

    .line 670
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .line 654
    if-nez p1, :cond_a

    .line 655
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Invalid sound model event!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-void

    .line 659
    :cond_a
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_d
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_sound_model_updated"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 661
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V

    .line 662
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 14
    .param p1, "modelId"    # Ljava/util/UUID;
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 143
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_start_recognition"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 144
    const/high16 v0, -0x80000000

    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    if-eqz p3, :cond_36

    if-nez p4, :cond_14

    goto :goto_36

    .line 150
    :cond_14
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_17
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getOrCreateGenericModelDataLocked(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    .line 152
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-nez v2, :cond_26

    .line 153
    const-string v3, "SoundTriggerHelper"

    const-string v4, "Irrecoverable error occurred, check UUID / sound model data."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    monitor-exit v1

    return v0

    .line 156
    :cond_26
    const/high16 v8, -0x80000000

    move-object v3, p0

    move-object v4, p2

    move-object v5, v2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 158
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_17 .. :try_end_35} :catchall_33

    throw v0

    .line 146
    :cond_36
    :goto_36
    const-string v1, "SoundTriggerHelper"

    const-string v2, "Passed in bad data to startGenericRecognition()."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v0
.end method

.method startKeyphraseRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 13
    .param p1, "keyphraseId"    # I
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 172
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_start_recognition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 174
    const/high16 v1, -0x80000000

    if-eqz p2, :cond_5b

    if-eqz p3, :cond_5b

    if-nez p4, :cond_15

    goto :goto_5b

    .line 186
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    .line 187
    .local v2, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 188
    const-string v3, "SoundTriggerHelper"

    const-string v4, "Generic model with same UUID exists."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    monitor-exit v0

    return v1

    .line 193
    :cond_2a
    if-eqz v2, :cond_44

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v1

    iget-object v3, p2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 195
    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->cleanUpExistingKeyphraseModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I

    move-result v1

    .line 196
    .local v1, "status":I
    if-eqz v1, :cond_40

    .line 197
    monitor-exit v0

    return v1

    .line 199
    :cond_40
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->removeKeyphraseModelLocked(I)V

    .line 200
    const/4 v2, 0x0

    .line 205
    .end local v1    # "status":I
    :cond_44
    if-nez v2, :cond_4e

    .line 206
    iget-object v1, p2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-direct {p0, v1, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->createKeyphraseModelDataLocked(Ljava/util/UUID;I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v1

    move-object v2, v1

    goto :goto_4f

    .line 209
    :cond_4e
    move-object v1, v2

    .line 209
    .end local v2    # "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .local v1, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :goto_4f
    move-object v2, p0

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    move-object v6, p4

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 175
    .end local v1    # "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_5b
    :goto_5b
    monitor-exit v0

    return v1

    .line 211
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I
    .registers 15
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .param p2, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .param p5, "keyphraseId"    # I

    .line 241
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    const/high16 v2, -0x80000000

    if-nez v1, :cond_12

    .line 243
    const-string v1, "SoundTriggerHelper"

    const-string v3, "Attempting startRecognition without the capability"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    monitor-exit v0

    return v2

    .line 246
    :cond_12
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v1, :cond_2f

    .line 247
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iget v1, v1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    const/4 v3, 0x0

    invoke-static {v1, p0, v3}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 248
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v1, :cond_2f

    .line 249
    const-string v1, "SoundTriggerHelper"

    const-string/jumbo v3, "startRecognition cannot attach to sound trigger module"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    monitor-exit v0

    return v2

    .line 255
    :cond_2f
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    if-nez v1, :cond_36

    .line 256
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->initializeTelephonyAndPowerStateListeners()V

    .line 266
    :cond_36
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, "stopModel":Z
    const/4 v3, 0x0

    .line 269
    .local v3, "unloadModel":Z
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 272
    const/4 v1, 0x1

    .line 273
    const/4 v3, 0x0

    goto :goto_65

    .line 274
    :cond_51
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 277
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v4

    move v1, v4

    .line 278
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v4

    move v3, v4

    .line 280
    :cond_65
    :goto_65
    if-nez v1, :cond_69

    if-eqz v3, :cond_8b

    .line 281
    :cond_69
    invoke-direct {p0, p2, v1, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v4

    .line 282
    .local v4, "status":I
    if-eqz v4, :cond_8b

    .line 283
    const-string v2, "SoundTriggerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to stop or unload previous model: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    monitor-exit v0

    return v4

    .line 290
    .end local v1    # "stopModel":Z
    .end local v3    # "unloadModel":Z
    .end local v4    # "status":I
    :cond_8b
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v1

    .line 291
    .local v1, "oldCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-eqz v1, :cond_c4

    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eq v3, v4, :cond_c4

    .line 292
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Canceling previous recognition for model id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 292
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_3 .. :try_end_b5} :catchall_134

    .line 295
    :try_start_b5
    invoke-interface {v1, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_b8} :catch_b9
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_134

    .line 298
    goto :goto_c1

    .line 296
    :catch_b9
    move-exception v3

    .line 297
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_ba
    const-string v4, "SoundTriggerHelper"

    const-string v5, "RemoteException in onDetectionStopped"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_c1
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearCallback()V

    .line 303
    :cond_c4
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_122

    .line 308
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopAndUnloadDeadModelsLocked()V

    .line 309
    new-array v3, v4, [I

    aput v2, v3, v5

    .line 310
    .local v3, "handle":[I
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v6, p1, v3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    move-result v6

    .line 311
    .local v6, "status":I
    if-eqz v6, :cond_f4

    .line 312
    const-string v2, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadSoundModel call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    monitor-exit v0

    return v6

    .line 315
    :cond_f4
    aget v7, v3, v5

    if-ne v7, v2, :cond_102

    .line 316
    const-string v4, "SoundTriggerHelper"

    const-string/jumbo v5, "loadSoundModel call returned invalid sound model handle"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    monitor-exit v0

    return v2

    .line 319
    :cond_102
    aget v2, v3, v5

    invoke-virtual {p2, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setHandle(I)V

    .line 320
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setLoaded()V

    .line 321
    const-string v2, "SoundTriggerHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sound model loaded with handle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v3    # "handle":[I
    .end local v6    # "status":I
    :cond_122
    invoke-virtual {p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setCallback(Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)V

    .line 324
    invoke-virtual {p2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 325
    invoke-virtual {p2, p4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 326
    invoke-virtual {p2, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)V

    .line 328
    invoke-direct {p0, p2, v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v2

    monitor-exit v0

    return v2

    .line 330
    .end local v1    # "oldCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_134
    move-exception v1

    monitor-exit v0
    :try_end_136
    .catchall {:try_start_ba .. :try_end_136} :catchall_134

    throw v1
.end method

.method stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 9
    .param p1, "modelId"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 344
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_stop_recognition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 346
    const/high16 v1, -0x80000000

    if-eqz p2, :cond_5b

    if-nez p1, :cond_13

    goto :goto_5b

    .line 352
    :cond_13
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 353
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_43

    .line 358
    :cond_24
    invoke-direct {p0, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v1

    .line 359
    .local v1, "status":I
    if-eqz v1, :cond_41

    .line 360
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopGenericRecognition failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_41
    monitor-exit v0

    return v1

    .line 354
    .end local v1    # "status":I
    :cond_43
    :goto_43
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting stopRecognition on invalid model with id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    monitor-exit v0

    return v1

    .line 347
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_5b
    :goto_5b
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null callbackreceived for stopGenericRecognition() for modelid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    monitor-exit v0

    return v1

    .line 363
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_73

    throw v1
.end method

.method stopKeyphraseRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 9
    .param p1, "keyphraseId"    # I
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 377
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_stop_recognition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 379
    const/high16 v1, -0x80000000

    if-nez p2, :cond_28

    .line 380
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null callback received for stopKeyphraseRecognition() for keyphraseId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    monitor-exit v0

    return v1

    .line 385
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    .line 386
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_3f

    .line 397
    :cond_35
    invoke-direct {p0, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v1

    .line 398
    .local v1, "status":I
    if-eqz v1, :cond_3d

    .line 399
    monitor-exit v0

    return v1

    .line 402
    :cond_3d
    monitor-exit v0

    return v1

    .line 387
    .end local v1    # "status":I
    :cond_3f
    :goto_3f
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No model exists for given keyphrase Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    monitor-exit v0

    return v1

    .line 403
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v1
.end method

.method unloadGenericSoundModel(Ljava/util/UUID;)I
    .registers 8
    .param p1, "modelId"    # Ljava/util/UUID;

    .line 525
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_unload_generic_sound_model"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 527
    const/high16 v1, -0x80000000

    if-eqz p1, :cond_b3

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_16

    goto/16 :goto_b3

    .line 530
    :cond_16
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 531
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v2, :cond_9b

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_9b

    .line 536
    :cond_27
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_46

    .line 538
    const-string v1, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unload: Given generic model is not loaded:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    monitor-exit v0

    return v3

    .line 541
    :cond_46
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 542
    invoke-direct {p0, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v1

    .line 544
    .local v1, "status":I
    if-eqz v1, :cond_69

    .line 545
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopGenericRecognition failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local v1    # "status":I
    :cond_69
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v1

    .line 550
    .restart local v1    # "status":I
    if-eqz v1, :cond_94

    .line 551
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unloadGenericSoundModel() call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v3, "SoundTriggerHelper"

    const-string/jumbo v4, "unloadGenericSoundModel() force-marking model as unloaded."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_94
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    monitor-exit v0

    return v1

    .line 532
    .end local v1    # "status":I
    :cond_9b
    :goto_9b
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unload error: Attempting unload invalid generic model with id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    monitor-exit v0

    return v1

    .line 528
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_b3
    :goto_b3
    monitor-exit v0

    return v1

    .line 559
    :catchall_b5
    move-exception v1

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_3 .. :try_end_b7} :catchall_b5

    throw v1
.end method

.method unloadKeyphraseSoundModel(I)I
    .registers 8
    .param p1, "keyphraseId"    # I

    .line 497
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_unload_keyphrase_sound_model"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 499
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v1

    .line 500
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_72

    if-eqz v1, :cond_72

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    if-eq v2, v3, :cond_72

    .line 501
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_72

    .line 506
    :cond_25
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 507
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v3

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v2

    .line 509
    .local v2, "status":I
    if-eqz v2, :cond_49

    .line 510
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop recognition failed for keyphrase ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_49
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v3

    move v2, v3

    .line 514
    if-eqz v2, :cond_6d

    .line 515
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unloadKeyphraseSoundModel call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_6d
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->removeKeyphraseModelLocked(I)V

    .line 520
    monitor-exit v0

    return v2

    .line 502
    .end local v2    # "status":I
    :cond_72
    :goto_72
    monitor-exit v0

    return v3

    .line 521
    .end local v1    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw v1
.end method
