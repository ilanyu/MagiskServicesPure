.class public Lcom/android/server/camera/CameraServiceProxy;
.super Lcom/android/server/SystemService;
.source "CameraServiceProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    }
.end annotation


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final CAMERA_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "media.camera.proxy"

.field private static final DEBUG:Z = false

.field public static final DISABLE_POLLING_FLAGS:I = 0x1000

.field public static final ENABLE_POLLING_FLAGS:I = 0x0

.field private static final MAX_USAGE_HISTORY:I = 0x64

.field private static final MSG_SWITCH_USER:I = 0x1

.field private static final NFC_NOTIFICATION_PROP:Ljava/lang/String; = "ro.camera.notify_nfc"

.field private static final NFC_SERVICE_BINDER_NAME:Ljava/lang/String; = "nfc"

.field private static final RETRY_DELAY_TIME:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CameraService_proxy"

.field private static final nfcInterfaceToken:Landroid/os/IBinder;


# instance fields
.field private final mActiveCameraUsage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

.field private mCameraServiceRaw:Landroid/hardware/ICameraService;

.field private final mCameraUsageHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnabledCameraUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastUser:I

.field private final mLock:Ljava/lang/Object;

.field private final mLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNotifyNfc:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 140
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$1;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$2;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$2;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    .line 195
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 196
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "CameraService_proxy"

    const/4 v2, 0x0

    const/4 v3, -0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 197
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 198
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    .line 200
    const-string/jumbo v0, "ro.camera.notify_nfc"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_57

    const/4 v2, 0x1

    nop

    :cond_57
    iput-boolean v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 56
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 56
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/camera/CameraServiceProxy;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 56
    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/camera/CameraServiceProxy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/camera/CameraServiceProxy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    return-void
.end method

.method static synthetic access$500(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 56
    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 56
    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraFacingToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/camera/CameraServiceProxy;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/android/server/camera/CameraServiceProxy;->updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method private static cameraFacingToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "cameraFacing"    # I

    .line 464
    packed-switch p0, :pswitch_data_10

    .line 470
    const-string v0, "CAMERA_FACING_UNKNOWN"

    return-object v0

    .line 467
    :pswitch_6
    const-string v0, "CAMERA_FACING_EXTERNAL"

    return-object v0

    .line 466
    :pswitch_9
    const-string v0, "CAMERA_FACING_FRONT"

    return-object v0

    .line 465
    :pswitch_c
    const-string v0, "CAMERA_FACING_BACK"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static cameraStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "newCameraState"    # I

    .line 453
    packed-switch p0, :pswitch_data_12

    .line 460
    const-string v0, "CAMERA_STATE_UNKNOWN"

    return-object v0

    .line 457
    :pswitch_6
    const-string v0, "CAMERA_STATE_CLOSED"

    return-object v0

    .line 456
    :pswitch_9
    const-string v0, "CAMERA_STATE_IDLE"

    return-object v0

    .line 455
    :pswitch_c
    const-string v0, "CAMERA_STATE_ACTIVE"

    return-object v0

    .line 454
    :pswitch_f
    const-string v0, "CAMERA_STATE_OPEN"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private getEnabledUserHandles(I)Ljava/util/Set;
    .registers 8
    .param p1, "currentUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 334
    .local v0, "userProfiles":[I
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 336
    .local v1, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1c

    aget v4, v0, v3

    .line 337
    .local v4, "id":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v4    # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 340
    :cond_1c
    return-object v1
.end method

.method private notifyMediaserverLocked(ILjava/util/Set;)Z
    .registers 8
    .param p1, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 363
    .local p2, "updatedUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 364
    const-string/jumbo v0, "media.camera"

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 365
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_16

    .line 366
    const-string v2, "CameraService_proxy"

    const-string v3, "Could not notify mediaserver, camera service not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return v1

    .line 370
    :cond_16
    :try_start_16
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_21

    .line 374
    nop

    .line 376
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 376
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    goto :goto_2a

    .line 371
    .restart local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    :catch_21
    move-exception v2

    .line 372
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CameraService_proxy"

    const-string v4, "Could not link to death of native camera service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return v1

    .line 380
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2a
    :goto_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    invoke-static {p2}, Lcom/android/server/camera/CameraServiceProxy;->toArray(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_33} :catch_36

    .line 385
    nop

    .line 386
    const/4 v0, 0x1

    return v0

    .line 381
    :catch_36
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CameraService_proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not notify mediaserver, remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return v1
.end method

.method private notifyNfcService(Z)V
    .registers 9
    .param p1, "enablePolling"    # Z

    .line 427
    const-string/jumbo v0, "nfc"

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 428
    .local v0, "nfcServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_11

    .line 429
    const-string v1, "CameraService_proxy"

    const-string v2, "Could not connect to NFC service to notify it of camera state"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void

    .line 432
    :cond_11
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    .line 433
    .local v1, "nfcAdapterRaw":Landroid/nfc/INfcAdapter;
    if-eqz p1, :cond_19

    const/4 v2, 0x0

    goto :goto_1b

    :cond_19
    const/16 v2, 0x1000

    .line 436
    .local v2, "flags":I
    :goto_1b
    :try_start_1b
    sget-object v3, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4, v2, v4}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    .line 439
    goto :goto_39

    .line 437
    :catch_22
    move-exception v3

    .line 438
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "CameraService_proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not notify NFC service, remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_39
    return-void
.end method

.method private notifySwitchWithRetries(I)V
    .registers 8
    .param p1, "retries"    # I

    .line 344
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v1, :cond_9

    .line 346
    monitor-exit v0

    return-void

    .line 348
    :cond_9
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifyMediaserverLocked(ILjava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 349
    const/4 p1, 0x0

    .line 351
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_30

    .line 352
    if-gtz p1, :cond_17

    .line 353
    return-void

    .line 355
    :cond_17
    const-string v0, "CameraService_proxy"

    const-string v1, "Could not notify camera service of user switch, retrying..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 358
    return-void

    .line 351
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private switchUserLocked(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 323
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->getEnabledUserHandles(I)Ljava/util/Set;

    move-result-object v0

    .line 324
    .local v0, "currentUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    .line 325
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 327
    :cond_12
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    .line 328
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyMediaserverLocked(ILjava/util/Set;)Z

    .line 330
    :cond_18
    return-void
.end method

.method private static toArray(Ljava/util/Collection;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 443
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 444
    .local v0, "len":I
    new-array v1, v0, [I

    .line 445
    .local v1, "ret":[I
    const/4 v2, 0x0

    .line 446
    .local v2, "idx":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 447
    .local v4, "i":Ljava/lang/Integer;
    add-int/lit8 v5, v2, 0x1

    .local v5, "idx":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2

    .line 448
    .end local v2    # "idx":I
    .end local v4    # "i":Ljava/lang/Integer;
    nop

    .line 446
    move v2, v5

    goto :goto_b

    .line 449
    .end local v5    # "idx":I
    .restart local v2    # "idx":I
    :cond_22
    return-object v1
.end method

.method private updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 13
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I
    .param p3, "facing"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "apiLevel"    # I

    .line 391
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 394
    .local v1, "wasEmpty":Z
    packed-switch p2, :pswitch_data_76

    goto :goto_61

    .line 408
    :pswitch_d
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 409
    .local v2, "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    if-eqz v2, :cond_61

    .line 410
    invoke-virtual {v2}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted()V

    .line 411
    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_61

    .line 413
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpUsageEvents()V

    .end local v2    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    goto :goto_61

    .line 398
    :pswitch_2d
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    invoke-direct {v2, p3, p4, p5}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(ILjava/lang/String;I)V

    .line 399
    .local v2, "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 400
    .local v3, "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    if-eqz v3, :cond_61

    .line 401
    const-string v4, "CameraService_proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " was already marked as active"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v3}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted()V

    .line 403
    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 396
    .end local v2    # "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v3    # "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :pswitch_60
    nop

    .line 418
    :cond_61
    :goto_61
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    .line 419
    .local v2, "isEmpty":Z
    iget-boolean v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v3, :cond_70

    if-eq v1, v2, :cond_70

    .line 420
    invoke-direct {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 422
    .end local v1    # "wasEmpty":Z
    .end local v2    # "isEmpty":Z
    :cond_70
    monitor-exit v0

    .line 423
    return-void

    .line 422
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_72

    throw v1

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_60
        :pswitch_2d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 263
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 267
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 268
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 270
    iget-boolean v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v2, :cond_1b

    if-nez v1, :cond_1b

    .line 271
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 273
    .end local v1    # "wasEmpty":Z
    :cond_1b
    monitor-exit v0

    .line 274
    return-void

    .line 273
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method dumpUsageEvents()V
    .registers 8

    .line 281
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 284
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 290
    .local v2, "e":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    const/4 v3, 0x0

    .line 291
    .local v3, "subtype":I
    iget v4, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    packed-switch v4, :pswitch_data_74

    .line 302
    goto :goto_e

    .line 299
    :pswitch_21
    const/4 v3, 0x2

    .line 300
    goto :goto_27

    .line 296
    :pswitch_23
    const/4 v3, 0x1

    .line 297
    goto :goto_27

    .line 293
    :pswitch_25
    const/4 v3, 0x0

    .line 294
    nop

    .line 304
    :goto_27
    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v5, 0x408

    invoke-direct {v4, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v5, 0x4

    .line 305
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 306
    invoke-virtual {v4, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 307
    invoke-virtual {v2}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->getDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x52a

    iget v6, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    .line 308
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 309
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 310
    .local v4, "l":Landroid/metrics/LogMaker;
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 311
    .end local v2    # "e":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v3    # "subtype":I
    .end local v4    # "l":Landroid/metrics/LogMaker;
    goto :goto_e

    .line 312
    :cond_57
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 313
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_70

    .line 314
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 316
    .local v0, "ident":J
    :try_start_61
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_6b

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 319
    nop

    .line 320
    return-void

    .line 318
    :catchall_6b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 313
    .end local v0    # "ident":J
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_25
        :pswitch_23
        :pswitch_21
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    .line 211
    const-string v0, "CameraService_proxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraServiceProxy error, invalid message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 208
    :cond_1e
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    .line 209
    nop

    .line 214
    :goto_24
    return v1
.end method

.method public onStart()V
    .registers 4

    .line 219
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 220
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_44

    .line 226
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    const-string/jumbo v1, "media.camera.proxy"

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/camera/CameraServiceProxy;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 235
    const-class v1, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {p0, v1, p0}, Lcom/android/server/camera/CameraServiceProxy;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V

    .line 238
    return-void

    .line 222
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UserManagerService must start before CameraServiceProxy!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 242
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v1, :cond_a

    .line 245
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 247
    :cond_a
    monitor-exit v0

    .line 248
    return-void

    .line 247
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onSwitchUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 252
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 254
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
