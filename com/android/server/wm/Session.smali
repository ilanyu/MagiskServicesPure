.class Lcom/android/server/wm/Session;
.super Landroid/view/IWindowSession$Stub;
.source "Session.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

.field private final mAlertWindowSurfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wm/WindowSurfaceController;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOverlaySurfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wm/WindowSurfaceController;",
            ">;"
        }
    .end annotation
.end field

.field final mCallback:Landroid/view/IWindowSessionCallback;

.field final mCanAcquireSleepToken:Z

.field final mCanAddInternalSystemWindow:Z

.field final mCanHideNonSystemOverlayWindows:Z

.field final mClient:Lcom/android/internal/view/IInputMethodClient;

.field private mClientDead:Z

.field private final mDragDropController:Lcom/android/server/wm/DragDropController;

.field private mLastReportedAnimatorScale:F

.field private mNumWindow:I

.field private mPackageName:Ljava/lang/String;

.field final mPid:I

.field private mRelayoutTag:Ljava/lang/String;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mShowingAlertWindowNotificationAllowed:Z

.field private final mStringName:Ljava/lang/String;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V
    .registers 12
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Landroid/view/IWindowSessionCallback;
    .param p3, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p4, "inputContext"    # Lcom/android/internal/view/IInputContext;

    .line 97
    invoke-direct {p0}, Landroid/view/IWindowSession$Stub;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 82
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    .line 84
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    .line 91
    iput-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 98
    iput-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 99
    iput-object p2, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    .line 100
    iput-object p3, p0, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    .line 101
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Session;->mUid:I

    .line 102
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Session;->mPid:I

    .line 103
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    .line 104
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3b

    move v1, v2

    goto :goto_3c

    :cond_3b
    move v1, v0

    :goto_3c
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 106
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.HIDE_NON_SYSTEM_OVERLAY_WINDOWS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4a

    move v1, v2

    goto :goto_4b

    :cond_4a
    move v1, v0

    :goto_4b
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanHideNonSystemOverlayWindows:Z

    .line 108
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_58

    goto :goto_59

    :cond_58
    move v2, v0

    :goto_59
    iput-boolean v2, p0, Lcom/android/server/wm/Session;->mCanAcquireSleepToken:Z

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    .line 111
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iput-object v1, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Session{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v2, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_97

    .line 118
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 121
    :cond_97
    const-string v2, ":u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const/16 v2, 0x61

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    :goto_b3
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_c4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 130
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-nez v3, :cond_e1

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    if-eqz v3, :cond_e1

    .line 131
    const-string v3, "input_method"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 133
    .local v3, "b":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    .line 135
    .end local v3    # "b":Landroid/os/IBinder;
    :cond_e1
    monitor-exit v2
    :try_end_e2
    .catchall {:try_start_c4 .. :try_end_e2} :catchall_121

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 140
    .local v2, "ident":J
    :try_start_e9
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v4, :cond_fb

    .line 141
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget v5, p0, Lcom/android/server/wm/Session;->mUid:I

    iget v6, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v4, p3, p4, v5, v6}, Lcom/android/internal/view/IInputMethodManager;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    goto :goto_fe

    .line 144
    :cond_fb
    invoke-interface {p3, v0}, Lcom/android/internal/view/IInputMethodClient;->setUsingInputMethod(Z)V

    .line 146
    :goto_fe
    invoke-interface {p3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_e9 .. :try_end_105} :catch_108
    .catchall {:try_start_e9 .. :try_end_105} :catchall_106

    goto :goto_11c

    .line 156
    :catchall_106
    move-exception v0

    goto :goto_117

    .line 147
    :catch_108
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_109
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v4, :cond_116

    .line 151
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v4, p3}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_116
    .catch Landroid/os/RemoteException; {:try_start_109 .. :try_end_116} :catch_11b
    .catchall {:try_start_109 .. :try_end_116} :catchall_106

    .line 154
    :cond_116
    goto :goto_11c

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_117
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 153
    .restart local v0    # "e":Landroid/os/RemoteException;
    :catch_11b
    move-exception v4

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    nop

    .line 158
    return-void

    .line 135
    .end local v2    # "ident":J
    :catchall_121
    move-exception v0

    :try_start_122
    monitor-exit v2
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_121

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private cancelAlertWindowNotification()V
    .registers 3

    .line 604
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-nez v0, :cond_5

    .line 605
    return-void

    .line 607
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AlertWindowNotification;->cancel(Z)V

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 609
    return-void
.end method

.method private killSessionLocked()V
    .registers 5

    .line 574
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    if-gtz v0, :cond_5d

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    if-nez v0, :cond_9

    goto :goto_5d

    .line 578
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_15

    .line 580
    return-void

    .line 587
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 591
    goto :goto_48

    .line 588
    :catch_1b
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when killing surface session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 594
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 595
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    .line 596
    invoke-direct {p0}, Lcom/android/server/wm/Session;->cancelAlertWindowNotification()V

    .line 597
    return-void

    .line 575
    :cond_5d
    :goto_5d
    return-void
.end method

.method private setHasOverlayUi(Z)V
    .registers 5
    .param p1, "hasOverlayUi"    # Z

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget v1, p0, Lcom/android/server/wm/Session;->mPid:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 601
    return-void
.end method


# virtual methods
.method public add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    .registers 20
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "outContentInsets"    # Landroid/graphics/Rect;
    .param p6, "outStableInsets"    # Landroid/graphics/Rect;
    .param p7, "outInputChannel"    # Landroid/view/InputChannel;

    .line 195
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v10}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/wm/Session;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;)I
    .registers 26
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "displayId"    # I
    .param p6, "outFrame"    # Landroid/graphics/Rect;
    .param p7, "outContentInsets"    # Landroid/graphics/Rect;
    .param p8, "outStableInsets"    # Landroid/graphics/Rect;
    .param p9, "outOutsets"    # Landroid/graphics/Rect;
    .param p10, "outDisplayCutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;
    .param p11, "outInputChannel"    # Landroid/view/InputChannel;

    .line 205
    move-object v13, p0

    iget-object v0, v13, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, v13

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 22
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "displayId"    # I
    .param p6, "outContentInsets"    # Landroid/graphics/Rect;
    .param p7, "outStableInsets"    # Landroid/graphics/Rect;

    .line 219
    move-object v13, p0

    iget-object v0, v13, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v11}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v1, v13

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 15
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "outContentInsets"    # Landroid/graphics/Rect;
    .param p6, "outStableInsets"    # Landroid/graphics/Rect;

    .line 212
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/Session;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public binderDied()V
    .registers 4

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v0, :cond_f

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 183
    :cond_f
    goto :goto_11

    .line 182
    :catch_10
    move-exception v0

    .line 184
    :goto_11
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 187
    invoke-direct {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 188
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 189
    return-void

    .line 188
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public cancelDragAndDrop(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "dragToken"    # Landroid/os/IBinder;

    .line 341
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 343
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DragDropController;->cancelDragAndDrop(Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 345
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    nop

    .line 347
    return-void

    .line 345
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragDropController;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 352
    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .line 356
    iget-object v0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragDropController;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 357
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 612
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 613
    const-string v0, " mCanAddInternalSystemWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 614
    const-string v0, " mAppOverlaySurfaces="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 615
    const-string v0, " mAlertWindowSurfaces="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 616
    const-string v0, " mClientDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 617
    const-string v0, " mSurfaceSession="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 618
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPackageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method public finishDrawing(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 282
    return-void
.end method

.method public getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "outDisplayFrame"    # Landroid/graphics/Rect;

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 275
    return-void
.end method

.method public getInTouchMode()Z
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 294
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 295
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 3
    .param p1, "window"    # Landroid/os/IBinder;

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v0

    return-object v0
.end method

.method hasAlertWindowSurfaces()Z
    .registers 2

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public notifyHasSurfaceView(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "hasSurfaceView"    # Z

    .line 479
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 481
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->notifyHasSurfaceView(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 483
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 484
    nop

    .line 485
    return-void

    .line 483
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "rectangle"    # Landroid/graphics/Rect;

    .line 430
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1f

    .line 433
    .local v1, "identity":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowManagerService;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 435
    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 436
    nop

    .line 437
    .end local v1    # "identity":J
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 438
    return-void

    .line 435
    .restart local v1    # "identity":J
    :catchall_1a
    move-exception v3

    :try_start_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 437
    .end local v1    # "identity":J
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
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

    .line 164
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 165
    :catch_5
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 168
    const-string v1, "WindowManager"

    const-string v2, "Window Session Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :cond_11
    throw v0
.end method

.method onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZI)V
    .registers 9
    .param p1, "surfaceController"    # Lcom/android/server/wm/WindowSurfaceController;
    .param p2, "visible"    # Z
    .param p3, "type"    # I

    .line 514
    invoke-static {p3}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 515
    return-void

    .line 520
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4f

    .line 523
    if-eqz p2, :cond_1c

    .line 524
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 525
    .local v0, "changed":Z
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v3, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, p3, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    goto :goto_29

    .line 527
    .end local v0    # "changed":Z
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 528
    .restart local v0    # "changed":Z
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v3, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, p3, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    .line 531
    :goto_29
    if-eqz v0, :cond_4f

    .line 532
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 533
    invoke-direct {p0}, Lcom/android/server/wm/Session;->cancelAlertWindowNotification()V

    goto :goto_4f

    .line 534
    :cond_37
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-nez v2, :cond_4f

    .line 535
    new-instance v2, Lcom/android/server/wm/AlertWindowNotification;

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/AlertWindowNotification;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 536
    iget-boolean v2, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    if-eqz v2, :cond_4f

    .line 537
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    invoke-virtual {v2}, Lcom/android/server/wm/AlertWindowNotification;->post()V

    .line 543
    .end local v0    # "changed":Z
    :cond_4f
    :goto_4f
    const/16 v0, 0x7f6

    if-eq p3, v0, :cond_54

    .line 544
    return-void

    .line 547
    :cond_54
    const/4 v0, 0x0

    if-eqz p2, :cond_65

    .line 548
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 549
    .local v2, "changed":Z
    iget v3, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v4, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v2, p3, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    goto :goto_72

    .line 551
    .end local v2    # "changed":Z
    :cond_65
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 552
    .restart local v2    # "changed":Z
    iget v3, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v4, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v2, p3, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    .line 555
    :goto_72
    if-eqz v2, :cond_7e

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    .line 560
    :cond_7e
    return-void
.end method

.method public outOfMemory(Landroid/view/IWindow;)Z
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z

    move-result v0

    return v0
.end method

.method public performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 29
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "flags"    # I
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "touchSource"    # I
    .param p5, "touchX"    # F
    .param p6, "touchY"    # F
    .param p7, "thumbCenterX"    # F
    .param p8, "thumbCenterY"    # F
    .param p9, "data"    # Landroid/content/ClipData;

    move-object/from16 v1, p0

    .line 318
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 319
    .local v15, "callerPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 320
    .local v16, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v13, v2

    .line 322
    .local v13, "ident":J
    :try_start_f
    iget-object v2, v1, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v3, v1, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_38

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v17, v13

    move/from16 v13, p8

    .end local v13    # "ident":J
    .local v17, "ident":J
    move-object/from16 v14, p9

    :try_start_2a
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/wm/DragDropController;->performDrag(Landroid/view/SurfaceSession;IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_34

    .line 325
    move-wide/from16 v2, v17

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    .end local v17    # "ident":J
    .local v2, "ident":J
    return-object v0

    .line 325
    .end local v2    # "ident":J
    .restart local v17    # "ident":J
    :catchall_34
    move-exception v0

    move-wide/from16 v2, v17

    .end local v17    # "ident":J
    .restart local v2    # "ident":J
    goto :goto_3a

    .end local v2    # "ident":J
    .restart local v13    # "ident":J
    :catchall_38
    move-exception v0

    move-wide v2, v13

    .end local v13    # "ident":J
    .restart local v2    # "ident":J
    :goto_3a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public performHapticFeedback(Landroid/view/IWindow;IZ)Z
    .registers 10
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .line 301
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 302
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_28

    .line 304
    .local v1, "ident":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    .line 305
    invoke-virtual {v4, p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 304
    invoke-interface {v3, v4, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_23

    .line 308
    :try_start_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_28

    .line 304
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 308
    :catchall_23
    move-exception v3

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 310
    .end local v1    # "ident":J
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public pokeDrawLock(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "window"    # Landroid/os/IBinder;

    .line 447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 449
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowManagerService;->pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 451
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    nop

    .line 453
    return-void

    .line 451
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "childrenOnly"    # Z

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 232
    return-void
.end method

.method public relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I
    .registers 42
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "requestedWidth"    # I
    .param p5, "requestedHeight"    # I
    .param p6, "viewFlags"    # I
    .param p7, "flags"    # I
    .param p8, "frameNumber"    # J
    .param p10, "outFrame"    # Landroid/graphics/Rect;
    .param p11, "outOverscanInsets"    # Landroid/graphics/Rect;
    .param p12, "outContentInsets"    # Landroid/graphics/Rect;
    .param p13, "outVisibleInsets"    # Landroid/graphics/Rect;
    .param p14, "outStableInsets"    # Landroid/graphics/Rect;
    .param p15, "outsets"    # Landroid/graphics/Rect;
    .param p16, "outBackdropFrame"    # Landroid/graphics/Rect;
    .param p17, "cutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;
    .param p18, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p19, "outSurface"    # Landroid/view/Surface;

    move-object/from16 v15, p0

    .line 243
    iget-object v0, v15, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    const-wide/16 v13, 0x20

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 244
    iget-object v0, v15, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    invoke-virtual/range {v0 .. v20}, Lcom/android/server/wm/WindowManagerService;->relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I

    move-result v0

    .line 249
    .local v0, "res":I
    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 252
    return v0
.end method

.method public remove(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 227
    return-void
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .registers 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .line 331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 333
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DragDropController;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 335
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    nop

    .line 337
    return-void

    .line 335
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 22
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    move-object v1, p0

    .line 409
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 410
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_3b

    .line 412
    .local v3, "ident":J
    :try_start_d
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_35

    const/4 v6, 0x1

    .line 413
    move-object v13, p1

    :try_start_17
    invoke-virtual {v0, v1, v13, v6}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v6

    .line 412
    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_33

    .line 416
    :try_start_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_42

    .line 412
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 416
    :catchall_33
    move-exception v0

    goto :goto_37

    :catchall_35
    move-exception v0

    move-object v13, p1

    :goto_37
    :try_start_37
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 418
    .end local v3    # "ident":J
    :catchall_3b
    move-exception v0

    move-object v13, p1

    :goto_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_42
    move-exception v0

    goto :goto_3d
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .param p1, "mode"    # Z

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 287
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 288
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 289
    return-void

    .line 288
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 13
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "touchableInsets"    # I
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "touchableArea"    # Landroid/graphics/Region;

    .line 268
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 270
    return-void
.end method

.method setShowingAlertWindowNotificationAllowed(Z)V
    .registers 4
    .param p1, "allowed"    # Z

    .line 563
    iput-boolean p1, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-eqz v0, :cond_14

    .line 565
    if-eqz p1, :cond_e

    .line 566
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    invoke-virtual {v0}, Lcom/android/server/wm/AlertWindowNotification;->post()V

    goto :goto_14

    .line 568
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AlertWindowNotification;->cancel(Z)V

    .line 571
    :cond_14
    :goto_14
    return-void
.end method

.method public setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 4
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 263
    return-void
.end method

.method public setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .registers 10
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 395
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2a

    .line 398
    .local v1, "ident":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    .line 399
    invoke-virtual {v4, p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 398
    invoke-virtual {v3, v4, p2, p3}, Lcom/android/server/wm/WallpaperController;->setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_25

    .line 401
    :try_start_1c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 402
    nop

    .line 403
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 404
    return-void

    .line 401
    .restart local v1    # "ident":J
    :catchall_25
    move-exception v3

    :try_start_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 403
    .end local v1    # "ident":J
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .registers 16
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xStep"    # F
    .param p5, "yStep"    # F

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 375
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2e

    .line 377
    .local v1, "ident":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v3, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    .line 378
    invoke-virtual {v3, p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 377
    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WallpaperController;->setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_29

    .line 381
    :try_start_20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    nop

    .line 383
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 384
    return-void

    .line 381
    .restart local v1    # "ident":J
    :catchall_29
    move-exception v3

    :try_start_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 383
    .end local v1    # "ident":J
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 7
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "startX"    # F
    .param p3, "startY"    # F

    .line 364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 366
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/TaskPositioningController;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 368
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    return v2

    .line 368
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 623
    iget-object v0, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    return-object v0
.end method

.method public updatePointerIcon(Landroid/view/IWindow;)V
    .registers 5
    .param p1, "window"    # Landroid/view/IWindow;

    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 459
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->updatePointerIcon(Landroid/view/IWindow;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 461
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 462
    nop

    .line 463
    return-void

    .line 461
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateTapExcludeRegion(Landroid/view/IWindow;IIIII)V
    .registers 16
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "regionId"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 468
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 470
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/WindowManagerService;->updateTapExcludeRegion(Landroid/view/IWindow;IIIII)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_14

    .line 472
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 473
    nop

    .line 474
    return-void

    .line 472
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 423
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 424
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController;->wallpaperCommandComplete(Landroid/os/IBinder;)V

    .line 425
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 426
    return-void

    .line 425
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "window"    # Landroid/os/IBinder;

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 389
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 390
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 391
    return-void

    .line 390
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method windowAddedLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 489
    iput-object p1, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "relayoutWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    .line 491
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_3b

    .line 494
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 497
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 498
    iget v0, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3b

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    .line 502
    :cond_3b
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 503
    return-void
.end method

.method windowRemovedLocked()V
    .registers 2

    .line 506
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 507
    invoke-direct {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 508
    return-void
.end method
