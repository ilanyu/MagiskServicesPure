.class final Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.super Ljava/lang/Object;
.source "VoiceInteractionSessionConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceManager"


# instance fields
.field final mAm:Landroid/app/IActivityManager;

.field final mAppOps:Landroid/app/AppOpsManager;

.field mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

.field final mBindIntent:Landroid/content/Intent;

.field mBound:Z

.field final mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

.field final mCallingUid:I

.field mCanceled:Z

.field final mContext:Landroid/content/Context;

.field final mFullConnection:Landroid/content/ServiceConnection;

.field mFullyBound:Z

.field final mHandler:Landroid/os/Handler;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final mLock:Ljava/lang/Object;

.field mPendingShowCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionOwner:Landroid/os/IBinder;

.field mService:Landroid/service/voice/IVoiceInteractionSessionService;

.field mSession:Landroid/service/voice/IVoiceInteractionSession;

.field final mSessionComponentName:Landroid/content/ComponentName;

.field mShowArgs:Landroid/os/Bundle;

.field private mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

.field mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

.field mShowFlags:I

.field mShown:Z

.field final mToken:Landroid/os/IBinder;

.field final mUser:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/Context;Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;ILandroid/os/Handler;)V
    .registers 26
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "user"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "callback"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;
    .param p6, "callingUid"    # I
    .param p7, "handler"    # Landroid/os/Handler;

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;

    invoke-direct {v0, v10}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 124
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;

    invoke-direct {v0, v10}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    .line 483
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;

    invoke-direct {v0, v10}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    .line 135
    move-object/from16 v12, p1

    iput-object v12, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    .line 136
    move-object/from16 v13, p2

    iput-object v13, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 137
    move/from16 v14, p3

    iput v14, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    .line 138
    iput-object v11, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    .line 139
    move-object/from16 v15, p5

    iput-object v15, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    .line 140
    move/from16 v9, p6

    iput v9, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    .line 141
    move-object/from16 v8, p7

    iput-object v8, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    .line 142
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    .line 143
    const-string/jumbo v0, "window"

    .line 144
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    .line 145
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    .line 146
    new-instance v0, Lcom/android/server/am/AssistDataRequester;

    iget-object v2, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v3, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    iget-object v4, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    const-string v5, "appops"

    .line 147
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/app/AppOpsManager;

    iget-object v7, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    const/16 v16, 0x31

    const/16 v17, 0x32

    move-object v1, v0

    move-object v6, v10

    move/from16 v8, v16

    move/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V

    iput-object v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 149
    const/4 v0, 0x0

    move-object v1, v0

    .line 151
    .local v1, "permOwner":Landroid/os/IBinder;
    :try_start_87
    iget-object v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voicesession:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_a3} :catch_a5

    move-object v1, v0

    .line 155
    goto :goto_ae

    .line 153
    :catch_a5
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "voicesession"

    const-string v3, "AM dead"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_ae
    iput-object v1, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    .line 158
    iget-object v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    iget-object v2, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 159
    iget-object v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    const/16 v3, 0x31

    new-instance v4, Landroid/os/UserHandle;

    iget v5, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v10, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    .line 162
    iget-boolean v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v0, :cond_eb

    .line 164
    :try_start_d7
    iget-object v0, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x7ef

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_e1} :catch_e2

    goto :goto_ea

    .line 165
    :catch_e2
    move-exception v0

    .line 166
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "VoiceInteractionServiceManager"

    const-string v3, "Failed adding window token"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_ea
    goto :goto_103

    .line 169
    :cond_eb
    const-string v0, "VoiceInteractionServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed binding to voice interaction session service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_103
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 69
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyPendingShowCallbacksFailedLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 69
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyPendingShowCallbacksShownLocked()V

    return-void
.end method

.method private notifyPendingShowCallbacksFailedLocked()V
    .registers 3

    .line 438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 440
    :try_start_9
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 442
    goto :goto_16

    .line 441
    :catch_15
    move-exception v1

    .line 438
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 444
    .end local v0    # "i":I
    :cond_19
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 445
    return-void
.end method

.method private notifyPendingShowCallbacksShownLocked()V
    .registers 3

    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 430
    :try_start_9
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onShown()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 432
    goto :goto_16

    .line 431
    :catch_15
    move-exception v1

    .line 428
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 434
    .end local v0    # "i":I
    :cond_19
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 435
    return-void
.end method


# virtual methods
.method public canHandleReceivedAssistDataLocked()Z
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public cancelLocked(Z)V
    .registers 6
    .param p1, "finishTask"    # Z

    .line 378
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->hideLocked()Z

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z

    .line 380
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    .line 381
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1d

    .line 383
    :try_start_f
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->destroy()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 386
    goto :goto_1d

    .line 384
    :catch_15
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "VoiceInteractionServiceManager"

    const-string v3, "Voice interation session already dead"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_2c

    .line 390
    :try_start_23
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_2b

    .line 392
    goto :goto_2c

    .line 391
    :catch_2b
    move-exception v0

    .line 394
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 396
    :try_start_31
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_38} :catch_39

    .line 399
    goto :goto_41

    .line 397
    :catch_39
    move-exception v0

    .line 398
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "VoiceInteractionServiceManager"

    const-string v3, "Failed removing window token"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_41
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 402
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 403
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 405
    :cond_4a
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-eqz v0, :cond_57

    .line 406
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 407
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 409
    :cond_57
    return-void
.end method

.method public deliverNewSessionLocked(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 6
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 413
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 414
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 415
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz v0, :cond_1e

    .line 417
    :try_start_8
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {p1, v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_18

    .line 421
    goto :goto_19

    .line 420
    :catch_18
    move-exception v0

    .line 422
    :goto_19
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {v0}, Lcom/android/server/am/AssistDataRequester;->processPendingAssistData()V

    .line 424
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 470
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 471
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 472
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowArgs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 473
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBound="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 475
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v0, :cond_78

    .line 476
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 477
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSession="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 478
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInteractor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 480
    :cond_78
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AssistDataRequester;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 481
    return-void
.end method

.method public getUserDisabledShowContextLocked()I
    .registers 6

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_structure_enabled"

    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_14

    .line 178
    or-int/lit8 v0, v0, 0x1

    .line 180
    :cond_14
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_screenshot_enabled"

    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_26

    .line 182
    or-int/lit8 v0, v0, 0x2

    .line 184
    :cond_26
    return v0
.end method

.method grantClipDataItemPermission(Landroid/content/ClipData$Item;IIILjava/lang/String;)V
    .registers 14
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "mode"    # I
    .param p3, "srcUid"    # I
    .param p4, "destUid"    # I
    .param p5, "destPkg"    # Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 324
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    .line 326
    :cond_12
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 327
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 328
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    .line 330
    :cond_2a
    return-void
.end method

.method grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V
    .registers 14
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "mode"    # I
    .param p3, "srcUid"    # I
    .param p4, "destUid"    # I
    .param p5, "destPkg"    # Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 335
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 336
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataItemPermission(Landroid/content/ClipData$Item;IIILjava/lang/String;)V

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 338
    .end local v1    # "i":I
    :cond_16
    return-void
.end method

.method grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # I
    .param p3, "srcUid"    # I
    .param p4, "destUid"    # I
    .param p5, "destPkg"    # Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    .line 299
    const-string v0, "content"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 300
    return-void

    .line 302
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 305
    .local v3, "ident":J
    :try_start_13
    iget-object v5, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    const/4 v7, 0x0

    invoke-static {v2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 306
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v10

    .line 305
    move/from16 v6, p3

    move v9, p2

    invoke-interface/range {v5 .. v10}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 308
    iget v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v11

    .line 309
    .local v11, "sourceUserId":I
    invoke-static {v2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_32} :catch_5e
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_32} :catch_51
    .catchall {:try_start_13 .. :try_end_32} :catchall_4f

    .line 310
    .end local p1    # "uri":Landroid/net/Uri;
    .local v9, "uri":Landroid/net/Uri;
    :try_start_32
    iget-object v5, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    iget-object v6, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v10, 0x1

    iget v12, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    move/from16 v7, p3

    move-object/from16 v8, p5

    invoke-interface/range {v5 .. v12}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_40} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_40} :catch_49
    .catchall {:try_start_32 .. :try_end_40} :catchall_46

    .line 316
    .end local v11    # "sourceUserId":I
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 317
    nop

    .line 319
    move-object v2, v9

    goto :goto_63

    .line 316
    :catchall_46
    move-exception v0

    move-object v2, v9

    goto :goto_5a

    .line 313
    :catch_49
    move-exception v0

    move-object v2, v9

    goto :goto_52

    .line 312
    :catch_4c
    move-exception v0

    move-object v2, v9

    goto :goto_5f

    .line 316
    .end local v9    # "uri":Landroid/net/Uri;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_4f
    move-exception v0

    goto :goto_5a

    .line 313
    :catch_51
    move-exception v0

    .line 314
    .end local p1    # "uri":Landroid/net/Uri;
    .local v0, "e":Ljava/lang/SecurityException;
    .local v2, "uri":Landroid/net/Uri;
    :goto_52
    :try_start_52
    const-string v5, "VoiceInteractionServiceManager"

    const-string v6, "Can\'t propagate permission"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_4f

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_5f

    .line 316
    :goto_5a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 312
    .end local v2    # "uri":Landroid/net/Uri;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_5e
    move-exception v0

    .line 316
    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v2    # "uri":Landroid/net/Uri;
    :goto_5f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 317
    nop

    .line 319
    :goto_63
    return-void
.end method

.method public hideLocked()Z
    .registers 7

    .line 341
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 342
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz v0, :cond_43

    .line 343
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 345
    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    .line 346
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {v2}, Lcom/android/server/am/AssistDataRequester;->cancel()V

    .line 347
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 348
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v2, :cond_25

    .line 350
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v2}, Landroid/service/voice/IVoiceInteractionSession;->hide()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_24

    .line 352
    goto :goto_25

    .line 351
    :catch_24
    move-exception v2

    .line 355
    :cond_25
    :goto_25
    :try_start_25
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2f} :catch_30

    .line 359
    goto :goto_31

    .line 358
    :catch_30
    move-exception v0

    .line 360
    :goto_31
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_3e

    .line 362
    :try_start_35
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3d

    .line 364
    goto :goto_3e

    .line 363
    :catch_3d
    move-exception v0

    .line 366
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    invoke-interface {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->onSessionHidden(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 368
    :cond_43
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-eqz v0, :cond_50

    .line 369
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 370
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 372
    :cond_50
    const/4 v0, 0x1

    return v0

    .line 374
    :cond_52
    return v1
.end method

.method public onAssistDataReceivedLocked(Landroid/os/Bundle;II)V
    .registers 18
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "activityIndex"    # I
    .param p3, "activityCount"    # I

    move-object v7, p0

    move-object v8, p1

    .line 245
    iget-object v0, v7, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_7

    .line 246
    return-void

    .line 249
    :cond_7
    if-nez v8, :cond_17

    .line 251
    :try_start_9
    iget-object v1, v7, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_15

    .line 252
    :catch_14
    move-exception v0

    .line 254
    :goto_15
    goto/16 :goto_86

    .line 256
    :cond_17
    const-string v0, "data"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 257
    .local v9, "assistData":Landroid/os/Bundle;
    const-string/jumbo v0, "structure"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/assist/AssistStructure;

    .line 258
    .local v10, "structure":Landroid/app/assist/AssistStructure;
    const-string v0, "content"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/assist/AssistContent;

    .line 259
    .local v11, "content":Landroid/app/assist/AssistContent;
    const-string v0, "android.intent.extra.ASSIST_UID"

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 260
    .local v12, "uid":I
    if-ltz v12, :cond_78

    if-eqz v11, :cond_78

    .line 261
    invoke-virtual {v11}, Landroid/app/assist/AssistContent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 262
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_63

    .line 263
    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v13

    .line 264
    .local v13, "clipData":Landroid/content/ClipData;
    if-eqz v13, :cond_63

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-static {v1}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 265
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    iget v5, v7, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object v1, v7, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 266
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 265
    move-object v1, v7

    move-object v2, v13

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    .line 269
    .end local v13    # "clipData":Landroid/content/ClipData;
    :cond_63
    invoke-virtual {v11}, Landroid/app/assist/AssistContent;->getClipData()Landroid/content/ClipData;

    move-result-object v13

    .line 270
    .restart local v13    # "clipData":Landroid/content/ClipData;
    if-eqz v13, :cond_78

    .line 271
    const/4 v3, 0x1

    iget v5, v7, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object v1, v7, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 272
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 271
    move-object v1, v7

    move-object v2, v13

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    .line 276
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v13    # "clipData":Landroid/content/ClipData;
    :cond_78
    :try_start_78
    iget-object v1, v7, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_84} :catch_85

    .line 280
    goto :goto_86

    .line 278
    :catch_85
    move-exception v0

    .line 282
    .end local v9    # "assistData":Landroid/os/Bundle;
    .end local v10    # "structure":Landroid/app/assist/AssistStructure;
    .end local v11    # "content":Landroid/app/assist/AssistContent;
    .end local v12    # "uid":I
    :goto_86
    return-void
.end method

.method public onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 287
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_5

    .line 288
    return-void

    .line 292
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0, p1}, Landroid/service/voice/IVoiceInteractionSession;->handleScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 295
    goto :goto_c

    .line 293
    :catch_b
    move-exception v0

    .line 296
    :goto_c
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 449
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_3
    invoke-static {p2}, Landroid/service/voice/IVoiceInteractionSessionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSessionService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 451
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_23

    if-nez v1, :cond_21

    .line 453
    :try_start_d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    invoke-interface {v1, v2, v3, v4}, Landroid/service/voice/IVoiceInteractionSessionService;->newSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19
    .catchall {:try_start_d .. :try_end_18} :catchall_23

    .line 456
    goto :goto_21

    .line 454
    :catch_19
    move-exception v1

    .line 455
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1a
    const-string v2, "VoiceInteractionServiceManager"

    const-string v3, "Failed adding window token"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_21
    :goto_21
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_23

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 463
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    invoke-interface {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->sessionConnectionGone(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 464
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    const/4 v1, 0x0

    :try_start_9
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 466
    monitor-exit v0

    .line 467
    return-void

    .line 466
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public showLocked(Landroid/os/Bundle;IILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Ljava/util/List;)Z
    .registers 16
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I
    .param p3, "disabledContext"    # I
    .param p4, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "II",
            "Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;)Z"
        }
    .end annotation

    .line 189
    .local p5, "topActivities":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a3

    .line 190
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-nez v0, :cond_1f

    .line 191
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    const v4, 0xc000001

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 197
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 198
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 199
    iput p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    .line 201
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getUserDisabledShowContextLocked()I

    move-result v2

    or-int/2addr p3, v2

    .line 202
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_33

    move v4, v0

    goto :goto_34

    :cond_33
    move v4, v1

    :goto_34
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_3a

    move v5, v0

    goto :goto_3b

    :cond_3a
    move v5, v1

    :goto_3b
    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_41

    move v6, v0

    goto :goto_42

    :cond_41
    move v6, v1

    :goto_42
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_48

    move v7, v0

    goto :goto_49

    :cond_48
    move v7, v1

    :goto_49
    iget v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 207
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 202
    move-object v3, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {v2}, Lcom/android/server/am/AssistDataRequester;->getPendingDataCount()I

    move-result v2

    if-gtz v2, :cond_68

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 210
    invoke-virtual {v2}, Lcom/android/server/am/AssistDataRequester;->getPendingScreenshotCount()I

    move-result v2

    if-lez v2, :cond_66

    goto :goto_68

    :cond_66
    move v2, v1

    goto :goto_69

    :cond_68
    :goto_68
    move v2, v0

    .line 211
    .local v2, "needDisclosure":Z
    :goto_69
    if-eqz v2, :cond_7c

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-static {v3, v4}, Lcom/android/internal/app/AssistUtils;->shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 212
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    :cond_7c
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v3, :cond_96

    .line 216
    :try_start_80
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    invoke-interface {v3, v4, v5, p4}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 217
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 218
    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_8e} :catch_8f

    .line 220
    goto :goto_90

    .line 219
    :catch_8f
    move-exception v1

    .line 221
    :goto_90
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {v1}, Lcom/android/server/am/AssistDataRequester;->processPendingAssistData()V

    goto :goto_9d

    .line 222
    :cond_96
    if-eqz p4, :cond_9d

    .line 223
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_9d
    :goto_9d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    invoke-interface {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->onSessionShown(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 226
    return v0

    .line 228
    .end local v2    # "needDisclosure":Z
    :cond_a3
    if-eqz p4, :cond_aa

    .line 230
    :try_start_a5
    invoke-interface {p4}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_a8} :catch_a9

    .line 232
    goto :goto_aa

    .line 231
    :catch_a9
    move-exception v0

    .line 234
    :cond_aa
    :goto_aa
    return v1
.end method
