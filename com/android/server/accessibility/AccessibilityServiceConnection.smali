.class Lcom/android/server/accessibility/AccessibilityServiceConnection;
.super Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.source "AccessibilityServiceConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityServiceConnection"


# instance fields
.field final mIntent:Landroid/content/Intent;

.field private final mMainHandler:Landroid/os/Handler;

.field final mUserStateWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mWasConnectedAndDied:Z


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V
    .registers 25
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p5, "id"    # I
    .param p6, "mainHandler"    # Landroid/os/Handler;
    .param p7, "lock"    # Ljava/lang/Object;
    .param p8, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p9, "systemSupport"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p10, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p11, "globalActionPerfomer"    # Lcom/android/server/accessibility/GlobalActionPerformer;

    move-object v12, p0

    .line 77
    move-object v1, v12

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    .line 81
    move-object/from16 v2, p6

    iput-object v2, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 82
    iget-object v0, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.client_label"

    const v4, 0x1040048

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 86
    .local v3, "identity":J
    :try_start_3f
    iget-object v0, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.client_intent"

    iget-object v6, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget-object v7, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-interface {v6, v7, v9, v8, v9}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_5b

    .line 89
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    nop

    .line 91
    return-void

    .line 89
    :catchall_5b
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private initializeService()V
    .registers 7

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 188
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v2, :cond_10

    monitor-exit v1

    return-void

    .line 189
    :cond_10
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v3

    .line 190
    .local v3, "bindingServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    if-eqz v4, :cond_2b

    .line 191
    :cond_20
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 192
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    .line 193
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-object v0, v4

    .line 195
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v3    # "bindingServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_6d

    .line 196
    if-nez v0, :cond_32

    .line 197
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 198
    return-void

    .line 201
    :cond_32
    :try_start_32
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_39} :catch_3a

    .line 213
    goto :goto_6c

    .line 202
    :catch_3a
    move-exception v1

    .line 203
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityServiceConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while setting connection for service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    :try_start_51
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V
    :try_end_54
    .catch Ljava/util/NoSuchElementException; {:try_start_51 .. :try_end_54} :catch_55

    .line 211
    goto :goto_6c

    .line 209
    :catch_55
    move-exception v2

    .line 210
    .local v2, "e":Ljava/util/NoSuchElementException;
    const-string v3, "AccessibilityServiceConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Death link does not exist, service is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :goto_6c
    return-void

    .line 195
    :catchall_6d
    move-exception v2

    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v2
.end method

.method public static synthetic lambda$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->initializeService()V

    return-void
.end method


# virtual methods
.method public bindLocked()V
    .registers 9

    .line 94
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 95
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_b

    return-void

    .line 96
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 98
    .local v1, "identity":J
    const v3, 0x2000001

    .line 99
    .local v3, "flags":I
    :try_start_12
    iget-boolean v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindInstantServiceAllowed:Z

    if-eqz v4, :cond_19

    .line 100
    const/high16 v4, 0x400000

    or-int/2addr v3, v4

    .line 102
    :cond_19
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-nez v4, :cond_37

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, p0, v3, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 104
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_12 .. :try_end_37} :catchall_3c

    .line 107
    .end local v3    # "flags":I
    :cond_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    nop

    .line 109
    return-void

    .line 107
    :catchall_3c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public binderDied()V
    .registers 5

    .line 268
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isConnectedLocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 274
    monitor-exit v0

    return-void

    .line 276
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    .line 277
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->resetLocked()V

    .line 278
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/MagnificationController;->getIdOfLastServiceToMagnify()I

    move-result v3

    if-ne v2, v3, :cond_28

    .line 279
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    .line 281
    :cond_28
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChange(Z)V

    .line 282
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public canRetrieveInteractiveWindowsLocked()Z
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public disableSelf()V
    .registers 9

    .line 125
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 127
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    .line 128
    :cond_f
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_3a

    .line 131
    .local v2, "identity":J
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const-string v5, "enabled_accessibility_services"

    iget-object v6, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_33

    .line 135
    :try_start_28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    nop

    .line 137
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChange(Z)V

    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v2    # "identity":J
    goto :goto_38

    .line 135
    .restart local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .restart local v2    # "identity":J
    :catchall_33
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 139
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v2    # "identity":J
    :cond_38
    :goto_38
    monitor-exit v0

    .line 140
    return-void

    .line 139
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    iput-boolean v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    .line 181
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object v0
.end method

.method public isAccessibilityButtonAvailable()Z
    .registers 5

    .line 258
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 260
    monitor-exit v0

    return v2

    .line 262
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 263
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-eqz v1, :cond_1e

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v2, 0x1

    nop

    :cond_1e
    monitor-exit v0

    return v2

    .line 264
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 7
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 287
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 288
    return v1

    .line 292
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->isAccessibilityButtonShown()Z

    move-result v0

    if-nez v0, :cond_f

    .line 293
    return v1

    .line 297
    :cond_f
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-eqz v0, :cond_18

    .line 299
    return v1

    .line 302
    :cond_18
    const/4 v0, 0x0

    .line 303
    .local v0, "requestingServices":I
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_21
    if-ltz v1, :cond_34

    .line 304
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 305
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v4, :cond_31

    .line 306
    add-int/lit8 v0, v0, 0x1

    .line 303
    .end local v3    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 310
    .end local v1    # "i":I
    :cond_34
    if-ne v0, v2, :cond_37

    .line 313
    return v2

    .line 316
    :cond_37
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    if-nez v1, :cond_3c

    .line 319
    return v2

    .line 322
    :cond_3c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected isCalledForCurrentUserLocked()Z
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 227
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 228
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v1

    if-ne v0, v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public isCapturingFingerprintGestures()Z
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 330
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canCaptureFingerprintGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 329
    :goto_13
    return v0
.end method

.method public onFingerprintGesture(I)V
    .registers 4
    .param p1, "gesture"    # I

    .line 353
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-nez v0, :cond_7

    .line 354
    return-void

    .line 357
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 359
    .local v1, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    .line 360
    if-eqz v1, :cond_16

    .line 362
    :try_start_f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onFingerprintGesture(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 364
    goto :goto_16

    .line 363
    :catch_15
    move-exception v0

    .line 366
    :cond_16
    :goto_16
    return-void

    .line 359
    .end local v1    # "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public onFingerprintGestureDetectionActiveChanged(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 336
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-nez v0, :cond_7

    .line 337
    return-void

    .line 340
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 342
    .local v1, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    .line 343
    if-eqz v1, :cond_16

    .line 345
    :try_start_f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onFingerprintCapturingGesturesChanged(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 347
    goto :goto_16

    .line 346
    :catch_15
    move-exception v0

    .line 349
    :cond_16
    :goto_16
    return-void

    .line 342
    .end local v1    # "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 144
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eq v1, p2, :cond_3e

    .line 146
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v1, :cond_11

    .line 147
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 149
    :cond_11
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_65

    .line 151
    :try_start_13
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19
    .catchall {:try_start_13 .. :try_end_18} :catchall_65

    .line 163
    goto :goto_3e

    .line 152
    :catch_19
    move-exception v1

    .line 153
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_1a
    const-string v2, "AccessibilityServiceConnection"

    const-string v3, "Failed registering death link"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_65

    .line 157
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V
    :try_end_24
    .catch Ljava/util/NoSuchElementException; {:try_start_21 .. :try_end_24} :catch_25
    .catchall {:try_start_21 .. :try_end_24} :catchall_65

    .line 160
    goto :goto_3c

    .line 158
    :catch_25
    move-exception v2

    .line 159
    .local v2, "e":Ljava/util/NoSuchElementException;
    :try_start_26
    const-string v3, "AccessibilityServiceConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Death link does not exist, service is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :goto_3c
    monitor-exit v0

    return-void

    .line 165
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_3e
    :goto_3e
    invoke-static {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 166
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 167
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v1, :cond_50

    monitor-exit v0

    return-void

    .line 168
    :cond_50
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->addServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 169
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v3, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChange(Z)V

    .line 172
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityServiceConnection$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityServiceConnection$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU;

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_26 .. :try_end_67} :catchall_65

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 218
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 219
    return-void
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .registers 9
    .param p1, "sequence"    # I
    .param p2, "gestureSteps"    # Landroid/content/pm/ParceledListSlice;

    .line 370
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canPerformGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 372
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 373
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMotionEventInjectorLocked()Lcom/android/server/accessibility/MotionEventInjector;

    move-result-object v1

    .line 374
    .local v1, "motionEventInjector":Lcom/android/server/accessibility/MotionEventInjector;
    if-eqz v1, :cond_1e

    .line 375
    nop

    .line 376
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 375
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/accessibility/MotionEventInjector;->injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_40

    goto :goto_3e

    .line 379
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_25
    .catchall {:try_start_1e .. :try_end_24} :catchall_40

    .line 383
    goto :goto_3e

    .line 380
    :catch_25
    move-exception v2

    .line 381
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_26
    const-string v3, "AccessibilityServiceConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending motion event injection failure to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v1    # "motionEventInjector":Lcom/android/server/accessibility/MotionEventInjector;
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_3e
    :goto_3e
    monitor-exit v0

    .line 387
    return-void

    .line 386
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public setSoftKeyboardShowMode(I)Z
    .registers 8
    .param p1, "showMode"    # I

    .line 233
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 235
    monitor-exit v0

    return v2

    .line 237
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_3c

    .line 238
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 239
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_18

    return v2

    .line 240
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 244
    .local v1, "identity":J
    if-nez p1, :cond_20

    .line 245
    const/4 v3, 0x0

    goto :goto_22

    :cond_20
    :try_start_20
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    :goto_22
    iput-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    .line 247
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_soft_keyboard_mode"

    iget v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v4, p1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_37

    .line 251
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    nop

    .line 253
    const/4 v3, 0x1

    return v3

    .line 251
    :catchall_37
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 237
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v1    # "identity":J
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public unbindLocked()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 114
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_10

    return-void

    .line 115
    :cond_10
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->resetLocked()V

    .line 117
    return-void
.end method
