.class final Lcom/android/server/am/VrController;
.super Ljava/lang/Object;
.source "VrController.java"


# static fields
.field private static final FLAG_NON_VR_MODE:I = 0x0

.field private static final FLAG_PERSISTENT_VR_MODE:I = 0x2

.field private static final FLAG_VR_MODE:I = 0x1

.field private static ORIG_ENUMS:[I = null

.field private static PROTO_ENUMS:[I = null

.field private static final TAG:Ljava/lang/String; = "VrController"


# instance fields
.field private final mGlobalAmLock:Ljava/lang/Object;

.field private final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private mVrRenderThreadTid:I

.field private mVrState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/server/am/VrController;->ORIG_ENUMS:[I

    .line 61
    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/server/am/VrController;->PROTO_ENUMS:[I

    return-void

    :array_10
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "globalAmLock"    # Ljava/lang/Object;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    .line 104
    iput v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    .line 108
    new-instance v0, Lcom/android/server/am/VrController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/VrController$1;-><init>(Lcom/android/server/am/VrController;)V

    iput-object v0, p0, Lcom/android/server/am/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 132
    iput-object p1, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/VrController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/VrController;

    .line 47
    iget-object v0, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/VrController;IIZ)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/am/VrController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$272(Lcom/android/server/am/VrController;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/VrController;
    .param p1, "x1"    # I

    .line 47
    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    return v0
.end method

.method static synthetic access$276(Lcom/android/server/am/VrController;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/VrController;
    .param p1, "x1"    # I

    .line 47
    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/VrController;IZ)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/VrController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    move-result v0

    return v0
.end method

.method private changeVrModeLocked(ZLcom/android/server/am/ProcessRecord;)Z
    .registers 8
    .param p1, "vrMode"    # Z
    .param p2, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 288
    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    .line 292
    .local v0, "oldVrState":I
    const/4 v1, 0x1

    if-eqz p1, :cond_b

    .line 293
    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    goto :goto_11

    .line 295
    :cond_b
    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    .line 298
    :goto_11
    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_17

    goto :goto_18

    :cond_17
    move v1, v3

    .line 300
    .local v1, "changed":Z
    :goto_18
    if-eqz v1, :cond_2b

    .line 301
    if-eqz p2, :cond_28

    .line 302
    iget v2, p2, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    if-lez v2, :cond_2b

    .line 303
    iget v2, p2, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v4, p2, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, v2, v4, v3}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_2b

    .line 306
    :cond_28
    invoke-direct {p0, v3}, Lcom/android/server/am/VrController;->clearVrRenderThreadLocked(Z)V

    .line 309
    :cond_2b
    :goto_2b
    return v1
.end method

.method private clearVrRenderThreadLocked(Z)V
    .registers 3
    .param p1, "suppressLogs"    # Z

    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    .line 406
    return-void
.end method

.method private enforceThreadInProcess(II)V
    .registers 5
    .param p1, "tid"    # I
    .param p2, "pid"    # I

    .line 413
    invoke-static {p2, p1}, Landroid/os/Process;->isThreadInProcess(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 416
    return-void

    .line 414
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VR thread does not belong to process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasPersistentVrFlagSet()Z
    .registers 2

    .line 431
    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private inVrMode()Z
    .registers 3

    .line 422
    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method private setPersistentVrRenderThreadLocked(IZ)I
    .registers 5
    .param p1, "newTid"    # I
    .param p2, "suppressLogs"    # Z

    .line 355
    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_12

    .line 356
    if-nez p2, :cond_f

    .line 357
    const-string v0, "VrController"

    const-string v1, "Failed to set persistent VR thread, system not in persistent VR mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_f
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0

    .line 362
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result v0

    return v0
.end method

.method private setVrRenderThreadLocked(IIZ)I
    .registers 10
    .param p1, "newTid"    # I
    .param p2, "schedGroup"    # I
    .param p3, "suppressLogs"    # Z

    .line 381
    invoke-direct {p0}, Lcom/android/server/am/VrController;->inVrMode()Z

    move-result v0

    .line 382
    .local v0, "inVr":Z
    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v1

    .line 383
    .local v1, "inPersistentVr":Z
    if-eqz v0, :cond_15

    if-nez v1, :cond_15

    const/4 v2, 0x3

    if-eq p2, v2, :cond_10

    goto :goto_15

    .line 395
    :cond_10
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result v2

    return v2

    .line 384
    :cond_15
    :goto_15
    if-nez p3, :cond_3a

    .line 385
    const-string v2, "caller is not the current top application."

    .line 386
    .local v2, "reason":Ljava/lang/String;
    if-nez v0, :cond_1f

    .line 387
    const-string/jumbo v2, "system not in VR mode."

    goto :goto_24

    .line 388
    :cond_1f
    if-eqz v1, :cond_24

    .line 389
    const-string/jumbo v2, "system in persistent VR mode."

    .line 391
    :cond_24
    :goto_24
    const-string v3, "VrController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set VR thread, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v2    # "reason":Ljava/lang/String;
    :cond_3a
    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v2
.end method

.method private updateVrRenderThreadLocked(IZ)I
    .registers 4
    .param p1, "newTid"    # I
    .param p2, "suppressLogs"    # Z

    .line 325
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-ne v0, p1, :cond_7

    .line 326
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0

    .line 329
    :cond_7
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-lez v0, :cond_13

    .line 330
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsRegularPriority(IZ)Z

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    .line 334
    :cond_13
    if-lez p1, :cond_1c

    .line 335
    iput p1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    .line 336
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 338
    :cond_1c
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0
.end method


# virtual methods
.method public onSystemReady()V
    .registers 3

    .line 139
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 140
    .local v0, "vrManagerInternal":Lcom/android/server/vr/VrManagerInternal;
    if-eqz v0, :cond_f

    .line 141
    iget-object v1, p0, Lcom/android/server/am/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 143
    :cond_f
    return-void
.end method

.method public onTopProcChangedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 154
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    .line 155
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_17

    .line 157
    :cond_e
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-ne v0, v2, :cond_17

    .line 158
    invoke-direct {p0, v1}, Lcom/android/server/am/VrController;->clearVrRenderThreadLocked(Z)V

    .line 161
    :cond_17
    :goto_17
    return-void
.end method

.method public onVrModeChanged(Lcom/android/server/am/ActivityRecord;)Z
    .registers 13
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;

    .line 172
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 173
    .local v0, "vrService":Lcom/android/server/vr/VrManagerInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 175
    return v1

    .line 181
    :cond_c
    const/4 v2, -0x1

    .line 182
    .local v2, "processId":I
    const/4 v5, 0x0

    .line 183
    .local v5, "changed":Z
    iget-object v7, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    monitor-enter v7

    .line 184
    :try_start_11
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_17

    const/4 v1, 0x1

    nop

    :cond_17
    move v8, v1

    .line 185
    .local v8, "vrMode":Z
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 186
    .local v3, "requestedPackage":Landroid/content/ComponentName;
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 187
    .local v4, "userId":I
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 190
    .local v6, "callingPackage":Landroid/content/ComponentName;
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v8, v1}, Lcom/android/server/am/VrController;->changeVrModeLocked(ZLcom/android/server/am/ProcessRecord;)Z

    move-result v1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_43

    move v9, v1

    .line 192
    .end local v5    # "changed":Z
    .local v9, "changed":Z
    :try_start_29
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_33

    .line 193
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_40

    .line 195
    .end local v2    # "processId":I
    .local v1, "processId":I
    move v10, v1

    goto :goto_34

    .end local v1    # "processId":I
    .restart local v2    # "processId":I
    :cond_33
    move v10, v2

    .end local v2    # "processId":I
    .local v10, "processId":I
    :goto_34
    :try_start_34
    monitor-exit v7
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_3c

    .line 199
    move-object v1, v0

    move v2, v8

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 200
    return v9

    .line 195
    .end local v3    # "requestedPackage":Landroid/content/ComponentName;
    .end local v4    # "userId":I
    .end local v6    # "callingPackage":Landroid/content/ComponentName;
    .end local v8    # "vrMode":Z
    :catchall_3c
    move-exception v1

    move v5, v9

    move v2, v10

    goto :goto_44

    .end local v10    # "processId":I
    .restart local v2    # "processId":I
    :catchall_40
    move-exception v1

    move v5, v9

    goto :goto_44

    .end local v9    # "changed":Z
    .restart local v5    # "changed":Z
    :catchall_43
    move-exception v1

    :goto_44
    :try_start_44
    monitor-exit v7
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public setPersistentVrThreadLocked(IILcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "tid"    # I
    .param p2, "pid"    # I
    .param p3, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 253
    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_e

    .line 254
    const-string v0, "VrController"

    const-string v1, "Persistent VR thread may only be set in persistent VR mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 257
    :cond_e
    if-nez p3, :cond_18

    .line 258
    const-string v0, "VrController"

    const-string v1, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 261
    :cond_18
    if-eqz p1, :cond_1d

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->enforceThreadInProcess(II)V

    .line 264
    :cond_1d
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    .line 265
    return-void
.end method

.method public setVrThreadLocked(IILcom/android/server/am/ProcessRecord;)V
    .registers 7
    .param p1, "tid"    # I
    .param p2, "pid"    # I
    .param p3, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 219
    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 220
    const-string v0, "VrController"

    const-string v1, "VR thread cannot be set in persistent VR mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void

    .line 223
    :cond_e
    if-nez p3, :cond_18

    .line 224
    const-string v0, "VrController"

    const-string v1, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 227
    :cond_18
    if-eqz p1, :cond_1d

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->enforceThreadInProcess(II)V

    .line 230
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/am/VrController;->inVrMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    .line 231
    const-string v0, "VrController"

    const-string v2, "VR thread cannot be set when not in VR mode!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 233
    :cond_2c
    iget v0, p3, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    .line 235
    :goto_31
    if-lez p1, :cond_35

    move v1, p1

    nop

    :cond_35
    iput v1, p3, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    .line 236
    return-void
.end method

.method public shouldDisableNonVrUiLocked()Z
    .registers 2

    .line 273
    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 436
    const-string v0, "[VrState=0x%x,VrRenderThreadTid=%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 440
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 441
    .local v0, "token":J
    iget v5, p0, Lcom/android/server/am/VrController;->mVrState:I

    sget-object v6, Lcom/android/server/am/VrController;->ORIG_ENUMS:[I

    sget-object v7, Lcom/android/server/am/VrController;->PROTO_ENUMS:[I

    const-wide v3, 0x20e00000001L

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 443
    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 444
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 445
    return-void
.end method
