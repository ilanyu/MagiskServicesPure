.class Lcom/android/server/vr/Vr2dDisplay;
.super Ljava/lang/Object;
.source "Vr2dDisplay.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ACTION_SET_MODE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.SET_MODE"

.field private static final DEBUG_ACTION_SET_SURFACE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.SET_SURFACE"

.field private static final DEBUG_EXTRA_MODE_ON:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.EXTRA_MODE_ON"

.field private static final DEBUG_EXTRA_SURFACE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.EXTRA_SURFACE"

.field public static final DEFAULT_VIRTUAL_DISPLAY_DPI:I = 0x140

.field public static final DEFAULT_VIRTUAL_DISPLAY_HEIGHT:I = 0x708

.field public static final DEFAULT_VIRTUAL_DISPLAY_WIDTH:I = 0x578

.field private static final DISPLAY_NAME:Ljava/lang/String; = "VR 2D Display"

.field public static final MIN_VR_DISPLAY_DPI:I = 0x1

.field public static final MIN_VR_DISPLAY_HEIGHT:I = 0x1

.field public static final MIN_VR_DISPLAY_WIDTH:I = 0x1

.field private static final STOP_VIRTUAL_DISPLAY_DELAY_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "Vr2dDisplay"

.field private static final UNIQUE_DISPLAY_ID:Ljava/lang/String; = "277f1a09-b88d-4d1e-8716-796f114d080b"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mBootsToVr:Z

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mImageReader:Landroid/media/ImageReader;

.field private mIsPersistentVrModeEnabled:Z

.field private mIsVirtualDisplayAllowed:Z

.field private mIsVrModeOverrideEnabled:Z

.field private mStopVDRunnable:Ljava/lang/Runnable;

.field private mSurface:Landroid/view/Surface;

.field private final mVdLock:Ljava/lang/Object;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mVirtualDisplayDpi:I

.field private mVirtualDisplayHeight:I

.field private mVirtualDisplayWidth:I

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private final mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/service/vr/IVrManager;)V
    .registers 6
    .param p1, "displayManager"    # Landroid/hardware/display/DisplayManager;
    .param p2, "activityManagerInternal"    # Landroid/app/ActivityManagerInternal;
    .param p3, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p4, "vrManager"    # Landroid/service/vr/IVrManager;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/Vr2dDisplay$1;-><init>(Lcom/android/server/vr/Vr2dDisplay;)V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    .line 109
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 110
    iput-object p2, p0, Lcom/android/server/vr/Vr2dDisplay;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 111
    iput-object p3, p0, Lcom/android/server/vr/Vr2dDisplay;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 112
    iput-object p4, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Landroid/service/vr/IVrManager;

    .line 113
    const/16 v0, 0x578

    iput v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 114
    const/16 v0, 0x708

    iput v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 115
    const/16 v0, 0x140

    iput v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vr/Vr2dDisplay;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;

    .line 34
    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/vr/Vr2dDisplay;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/vr/Vr2dDisplay;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;

    .line 34
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vr/Vr2dDisplay;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;

    .line 34
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->shouldRunVirtualDisplay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/vr/Vr2dDisplay;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;

    .line 34
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/vr/Vr2dDisplay;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/vr/Vr2dDisplay;Landroid/view/Surface;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;
    .param p1, "x1"    # Landroid/view/Surface;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->setSurfaceLocked(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/vr/Vr2dDisplay;)Landroid/hardware/display/VirtualDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;

    .line 34
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/vr/Vr2dDisplay;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;
    .param p1, "x1"    # Landroid/hardware/display/VirtualDisplay;

    .line 34
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/vr/Vr2dDisplay;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;

    .line 34
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->stopImageReader()V

    return-void
.end method

.method private setSurfaceLocked(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 364
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_40

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 365
    :cond_c
    const-string v0, "Vr2dDisplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting the new surface from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_35

    .line 367
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 369
    :cond_35
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3e

    .line 370
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 372
    :cond_3e
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    .line 374
    :cond_40
    return-void
.end method

.method private shouldRunVirtualDisplay()Z
    .registers 2

    .line 409
    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVrModeOverrideEnabled:Z

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private startDebugOnlyBroadcastReceiver(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 185
    return-void
.end method

.method private startImageReader()V
    .registers 5

    .line 382
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_3c

    .line 383
    iget v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 385
    const-string v0, "Vr2dDisplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VD startImageReader: res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_3c
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->setSurfaceLocked(Landroid/view/Surface;)V

    .line 390
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private startVirtualDisplay()V
    .registers 14

    .line 283
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_c

    .line 284
    const-string v0, "Vr2dDisplay"

    const-string v1, "Cannot create virtual display because mDisplayManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 288
    :cond_c
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_f
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_1c

    .line 290
    const-string v1, "Vr2dDisplay"

    const-string v2, "VD already exists, ignoring request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    monitor-exit v0

    return-void

    .line 294
    :cond_1c
    const/16 v1, 0x40

    .line 295
    .local v1, "flags":I
    or-int/lit16 v1, v1, 0x80

    .line 296
    or-int/lit8 v1, v1, 0x1

    .line 297
    or-int/lit8 v1, v1, 0x8

    .line 298
    or-int/lit16 v1, v1, 0x100

    .line 299
    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    const-string v4, "VR 2D Display"

    iget v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v6, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    iget v7, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "277f1a09-b88d-4d1e-8716-796f114d080b"

    move v9, v1

    invoke-virtual/range {v2 .. v12}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 304
    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v2, :cond_6b

    .line 305
    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    .line 307
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startImageReader()V

    .line 313
    .end local v1    # "flags":I
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_f .. :try_end_52} :catchall_78

    .line 315
    const-string v0, "Vr2dDisplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VD created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 309
    .restart local v1    # "flags":I
    :cond_6b
    :try_start_6b
    const-string v2, "Vr2dDisplay"

    const-string v3, "Virtual display id is null after createVirtualDisplay"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    .line 311
    monitor-exit v0

    return-void

    .line 313
    .end local v1    # "flags":I
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_6b .. :try_end_7a} :catchall_78

    throw v1
.end method

.method private startVrModeListener()V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_14

    .line 193
    :try_start_4
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Landroid/service/vr/IVrManager;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 196
    goto :goto_14

    .line 194
    :catch_c
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Vr2dDisplay"

    const-string v2, "Could not register VR State listener."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method private stopImageReader()V
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_c

    .line 398
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 401
    :cond_c
    return-void
.end method

.method private stopVirtualDisplay()V
    .registers 5

    .line 329
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 330
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay$3;

    invoke-direct {v0, p0}, Lcom/android/server/vr/Vr2dDisplay$3;-><init>(Lcom/android/server/vr/Vr2dDisplay;)V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    .line 351
    :cond_b
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 352
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    return-void
.end method

.method private updateDisplayId(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 319
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->setVr2dDisplayId(I)V

    .line 320
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setVr2dDisplayId(I)V

    .line 321
    return-void
.end method

.method private updateVirtualDisplay()V
    .registers 3

    .line 142
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->shouldRunVirtualDisplay()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 143
    const-string v0, "Vr2dDisplay"

    const-string v1, "Attempting to start virtual display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startVirtualDisplay()V

    goto :goto_14

    .line 149
    :cond_11
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->stopVirtualDisplay()V

    .line 151
    :goto_14
    return-void
.end method


# virtual methods
.method public getVirtualDisplayId()I
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_13

    .line 265
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 269
    .local v1, "virtualDisplayId":I
    monitor-exit v0

    return v1

    .line 271
    .end local v1    # "virtualDisplayId":I
    :cond_13
    monitor-exit v0

    .line 272
    const/4 v0, -0x1

    return v0

    .line 271
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public init(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bootsToVr"    # Z

    .line 122
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startVrModeListener()V

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->startDebugOnlyBroadcastReceiver(Landroid/content/Context;)V

    .line 124
    iput-boolean p2, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    .line 125
    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    if-eqz v0, :cond_f

    .line 128
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    .line 130
    :cond_f
    return-void
.end method

.method public setVirtualDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .registers 11
    .param p1, "displayProperties"    # Landroid/app/Vr2dDisplayProperties;

    .line 210
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v1

    .line 217
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v2

    .line 218
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result v3

    .line 219
    .local v3, "dpi":I
    const/4 v4, 0x0

    .line 221
    .local v4, "resized":Z
    const/4 v5, 0x1

    if-lt v1, v5, :cond_46

    if-lt v2, v5, :cond_46

    if-ge v3, v5, :cond_18

    goto :goto_46

    .line 226
    :cond_18
    const-string v6, "Vr2dDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting width/height/dpi to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iput v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 228
    iput v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 229
    iput v3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    .line 230
    const/4 v4, 0x1

    goto :goto_6c

    .line 223
    :cond_46
    :goto_46
    const-string v6, "Vr2dDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring Width/Height/Dpi values of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_6c
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getFlags()I

    move-result v6

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_76

    .line 235
    iput-boolean v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    goto :goto_80

    .line 236
    :cond_76
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    move-result v6

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_80

    .line 239
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 242
    :cond_80
    :goto_80
    iget-object v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v5, :cond_a0

    if-eqz v4, :cond_a0

    iget-boolean v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    if-eqz v5, :cond_a0

    .line 243
    iget-object v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget v6, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v7, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    iget v8, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 245
    iget-object v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 246
    .local v5, "oldImageReader":Landroid/media/ImageReader;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 247
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startImageReader()V

    .line 248
    invoke-virtual {v5}, Landroid/media/ImageReader;->close()V

    .line 252
    .end local v5    # "oldImageReader":Landroid/media/ImageReader;
    :cond_a0
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    .line 253
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "dpi":I
    .end local v4    # "resized":Z
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_a5
    move-exception v1

    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_3 .. :try_end_a7} :catchall_a5

    throw v1
.end method
