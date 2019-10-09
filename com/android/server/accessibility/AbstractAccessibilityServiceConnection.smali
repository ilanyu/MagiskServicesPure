.class abstract Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AbstractAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;
.implements Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;,
        Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AbstractAccessibilityServiceConnection"


# instance fields
.field protected final mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field mCaptureFingerprintGestures:Z

.field final mComponentName:Landroid/content/ComponentName;

.field protected final mContext:Landroid/content/Context;

.field public mEventDispatchHandler:Landroid/os/Handler;

.field mEventTypes:I

.field mFeedbackType:I

.field mFetchFlags:I

.field private final mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

.field final mId:I

.field public final mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

.field mIsDefault:Z

.field mLastAccessibilityButtonCallbackState:Z

.field protected final mLock:Ljava/lang/Object;

.field mNotificationTimeout:J

.field final mOverlayWindowToken:Landroid/os/IBinder;

.field mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mReceivedAccessibilityButtonCallbackSinceBind:Z

.field mRequestAccessibilityButton:Z

.field mRequestFilterKeyEvents:Z

.field mRequestTouchExplorationMode:Z

.field mRetrieveInteractiveWindows:Z

.field protected final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

.field mService:Landroid/os/IBinder;

.field mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field protected final mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

.field mUsesAccessibilityCache:Z

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p4, "id"    # I
    .param p5, "mainHandler"    # Landroid/os/Handler;
    .param p6, "lock"    # Ljava/lang/Object;
    .param p7, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p8, "systemSupport"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p9, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p10, "globalActionPerfomer"    # Lcom/android/server/accessibility/GlobalActionPerformer;

    .line 248
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 144
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    .line 249
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 250
    iput-object p9, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 251
    iput p4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 252
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 253
    iput-object p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 254
    iput-object p6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 255
    iput-object p7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 256
    iput-object p10, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    .line 257
    iput-object p8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 258
    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 259
    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    .line 268
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 269
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p3, "x3"    # Z

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyGestureInternal(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 77
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyClearAccessibilityCacheInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/graphics/Region;FFF)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # Landroid/graphics/Region;
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyMagnificationChangedInternal(Landroid/graphics/Region;FFF)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedInternal(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 77
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonClickedInternal()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # Z

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedInternal(Z)V

    return-void
.end method

.method private getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;
    .registers 3

    .line 1226
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1227
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    monitor-exit v0

    return-object v1

    .line 1228
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private notifyAccessibilityButtonAvailabilityChangedInternal(Z)V
    .registers 7
    .param p1, "available"    # Z

    .line 1183
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    if-ne v0, p1, :cond_9

    .line 1185
    return-void

    .line 1187
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 1188
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    .line 1189
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1190
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_31

    .line 1192
    :try_start_14
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonAvailabilityChanged(Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 1197
    goto :goto_31

    .line 1193
    :catch_18
    move-exception v1

    .line 1194
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AbstractAccessibilityServiceConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending accessibility button availability change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1199
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    return-void
.end method

.method private notifyAccessibilityButtonClickedInternal()V
    .registers 6

    .line 1171
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1172
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_23

    .line 1174
    :try_start_6
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonClicked()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1177
    goto :goto_23

    .line 1175
    :catch_a
    move-exception v1

    .line 1176
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AbstractAccessibilityServiceConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending accessibility button click to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1179
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method private notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 9
    .param p1, "eventType"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p3, "serviceWantsEvent"    # Z

    .line 1055
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1056
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1060
    .local v1, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-nez v1, :cond_9

    .line 1061
    monitor-exit v0

    return-void

    .line 1067
    :cond_9
    if-nez p2, :cond_1d

    .line 1084
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityEvent;

    move-object p2, v2

    .line 1085
    if-nez p2, :cond_18

    .line 1086
    monitor-exit v0

    return-void

    .line 1088
    :cond_18
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1090
    :cond_1d
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1091
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    goto :goto_31

    .line 1093
    :cond_2b
    const/4 v2, 0x0

    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 1095
    :goto_31
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 1096
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_64

    .line 1099
    :try_start_36
    invoke-interface {v1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_3f
    .catchall {:try_start_36 .. :try_end_39} :catchall_3d

    .line 1106
    :goto_39
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1107
    goto :goto_5f

    .line 1106
    :catchall_3d
    move-exception v0

    goto :goto_60

    .line 1103
    :catch_3f
    move-exception v0

    .line 1104
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_40
    const-string v2, "AbstractAccessibilityServiceConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_40 .. :try_end_5e} :catchall_3d

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_39

    .line 1108
    :goto_5f
    return-void

    .line 1106
    :goto_60
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    throw v0

    .line 1096
    .end local v1    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v1
.end method

.method private notifyClearAccessibilityCacheInternal()V
    .registers 5

    .line 1214
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1215
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_12

    .line 1217
    :try_start_6
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->clearAccessibilityCache()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1221
    goto :goto_12

    .line 1218
    :catch_a
    move-exception v1

    .line 1219
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AbstractAccessibilityServiceConnection"

    const-string v3, "Error during requesting accessibility info cache to be cleared."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1223
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method private notifyGestureInternal(I)V
    .registers 7
    .param p1, "gestureId"    # I

    .line 1202
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1203
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_2b

    .line 1205
    :try_start_6
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1209
    goto :goto_2b

    .line 1206
    :catch_a
    move-exception v1

    .line 1207
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AbstractAccessibilityServiceConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during sending gesture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1211
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    return-void
.end method

.method private notifyMagnificationChangedInternal(Landroid/graphics/Region;FFF)V
    .registers 10
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 1144
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1145
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_23

    .line 1147
    :try_start_6
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onMagnificationChanged(Landroid/graphics/Region;FFF)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1150
    goto :goto_23

    .line 1148
    :catch_a
    move-exception v1

    .line 1149
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AbstractAccessibilityServiceConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending magnification changes to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method private notifySoftKeyboardShowModeChangedInternal(I)V
    .registers 7
    .param p1, "showState"    # I

    .line 1159
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1160
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_23

    .line 1162
    :try_start_6
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSoftKeyboardShowModeChanged(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1166
    goto :goto_23

    .line 1163
    :catch_a
    move-exception v1

    .line 1164
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AbstractAccessibilityServiceConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending soft keyboard show mode changes to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1168
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method private registerMagnificationIfNeeded(Lcom/android/server/accessibility/MagnificationController;)Z
    .registers 3
    .param p1, "magnificationController"    # Lcom/android/server/accessibility/MagnificationController;

    .line 846
    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController;->isRegisteredLocked()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 847
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 848
    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController;->register()V

    .line 849
    const/4 v0, 0x1

    return v0

    .line 851
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .registers 4
    .param p1, "windowId"    # I
    .param p2, "focusType"    # I

    .line 1239
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_a

    .line 1240
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0

    .line 1242
    :cond_a
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1d

    .line 1243
    const/4 v0, 0x1

    if-ne p2, v0, :cond_15

    .line 1244
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    return v0

    .line 1245
    :cond_15
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1d

    .line 1246
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    return v0

    .line 1249
    :cond_1d
    return p1
.end method

.method private resolveAccessibilityWindowIdLocked(I)I
    .registers 3
    .param p1, "accessibilityWindowId"    # I

    .line 1232
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_c

    .line 1233
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getActiveWindowId()I

    move-result v0

    return v0

    .line 1235
    :cond_c
    return p1
.end method

.method private wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1022
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1023
    return v1

    .line 1026
    :cond_8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c

    .line 1027
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1c

    .line 1029
    return v1

    .line 1032
    :cond_1c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 1033
    .local v0, "eventType":I
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    and-int/2addr v2, v0

    if-eq v2, v0, :cond_26

    .line 1034
    return v1

    .line 1037
    :cond_26
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 1038
    .local v2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 1039
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    .line 1041
    .local v3, "packageName":Ljava/lang/String;
    :goto_38
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_46

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    goto :goto_46

    :cond_45
    goto :goto_47

    :cond_46
    :goto_46
    const/4 v1, 0x1

    :goto_47
    return v1
.end method


# virtual methods
.method public canReceiveEventsLocked()Z
    .registers 2

    .line 330
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 913
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 914
    :cond_b
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service[label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 916
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 915
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", feedbackType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 918
    invoke-static {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 917
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 921
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 920
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", notificationTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 923
    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 924
    monitor-exit v0

    .line 925
    return-void

    .line 924
    :catchall_9d
    move-exception v1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_e .. :try_end_9f} :catchall_9d

    throw v1
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;
    .registers 36
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingTid"    # J
    .param p9, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 549
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 551
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 552
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_15

    .line 554
    monitor-exit v3

    return-object v4

    .line 556
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v12, v0

    .line 557
    .local v12, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 558
    invoke-virtual {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 559
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_24

    .line 560
    monitor-exit v3

    return-object v4

    .line 562
    :cond_24
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v5

    move-object v13, v5

    .line 563
    .local v13, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v13, :cond_2f

    .line 564
    monitor-exit v3

    return-object v4

    .line 567
    :cond_2f
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v12, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 569
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 570
    const/4 v2, 0x0

    .line 572
    :cond_3b
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v24

    .line 573
    .end local v0    # "permissionGranted":Z
    .local v24, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_be

    .line 574
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 575
    .local v3, "interrogatingPid":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p5

    move v7, v12

    move/from16 v8, p4

    move v9, v3

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 577
    .end local p5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v5, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 578
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 580
    .local v7, "identityToken":J
    :try_start_5c
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    iget v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int v20, v0, p6

    move-wide/from16 v15, p2

    move-object/from16 v17, v2

    move/from16 v18, p4

    move-object/from16 v19, v5

    move/from16 v21, v3

    move-wide/from16 v22, p7

    move-object/from16 v25, p9

    invoke-interface/range {v14 .. v25}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V

    .line 583
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 584
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v11

    .line 583
    invoke-virtual {v0, v6, v10, v11}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(ILjava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_83} :catch_aa
    .catchall {:try_start_5c .. :try_end_83} :catchall_96

    .line 590
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 592
    if-eqz v2, :cond_95

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 593
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 583
    :cond_95
    return-object v0

    .line 590
    :catchall_96
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 592
    if-eqz v2, :cond_a9

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 593
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    :cond_a9
    throw v0

    .line 585
    :catch_aa
    move-exception v0

    .line 590
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 592
    if-eqz v2, :cond_bd

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 593
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 596
    :cond_bd
    return-object v4

    .line 573
    .end local v3    # "interrogatingPid":I
    .end local v5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6    # "callingUid":I
    .end local v7    # "identityToken":J
    .end local v12    # "resolvedWindowId":I
    .end local v13    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v24    # "spec":Landroid/view/MagnificationSpec;
    .restart local p5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_be
    move-exception v0

    :try_start_bf
    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v0
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 35
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 492
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 494
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 495
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_15

    .line 497
    monitor-exit v3

    return-object v4

    .line 499
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v12, v0

    .line 500
    .local v12, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 501
    invoke-virtual {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 502
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_24

    .line 503
    monitor-exit v3

    return-object v4

    .line 505
    :cond_24
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v5

    move-object v13, v5

    .line 506
    .local v13, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v13, :cond_2f

    .line 507
    monitor-exit v3

    return-object v4

    .line 510
    :cond_2f
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v12, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 512
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 513
    const/4 v2, 0x0

    .line 515
    :cond_3b
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v25

    .line 516
    .end local v0    # "permissionGranted":Z
    .local v25, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_be

    .line 517
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 518
    .local v3, "interrogatingPid":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p6

    move v7, v12

    move/from16 v8, p5

    move v9, v3

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 520
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v5, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 521
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 523
    .local v7, "identityToken":J
    :try_start_5c
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    iget v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v15, p2

    move-object/from16 v17, p4

    move-object/from16 v18, v2

    move/from16 v19, p5

    move-object/from16 v20, v5

    move/from16 v21, v0

    move/from16 v22, v3

    move-wide/from16 v23, p7

    invoke-interface/range {v14 .. v25}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 526
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 527
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v10

    .line 526
    invoke-virtual {v0, v6, v9, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(ILjava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_83} :catch_aa
    .catchall {:try_start_5c .. :try_end_83} :catchall_96

    .line 533
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    if-eqz v2, :cond_95

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 536
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 526
    :cond_95
    return-object v0

    .line 533
    :catchall_96
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    if-eqz v2, :cond_a9

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 536
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    :cond_a9
    throw v0

    .line 528
    :catch_aa
    move-exception v0

    .line 533
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    if-eqz v2, :cond_bd

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 536
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 539
    :cond_bd
    return-object v4

    .line 516
    .end local v3    # "interrogatingPid":I
    .end local v5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6    # "callingUid":I
    .end local v7    # "identityToken":J
    .end local v12    # "resolvedWindowId":I
    .end local v13    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v25    # "spec":Landroid/view/MagnificationSpec;
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_be
    move-exception v0

    :try_start_bf
    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v0
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 35
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "viewIdResName"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 435
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 437
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 438
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_15

    .line 440
    monitor-exit v3

    return-object v4

    .line 442
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v12, v0

    .line 443
    .local v12, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 444
    invoke-virtual {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 445
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_24

    .line 446
    monitor-exit v3

    return-object v4

    .line 448
    :cond_24
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v5

    move-object v13, v5

    .line 449
    .local v13, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v13, :cond_2f

    .line 450
    monitor-exit v3

    return-object v4

    .line 453
    :cond_2f
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v12, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 455
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 456
    const/4 v2, 0x0

    .line 458
    :cond_3b
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v25

    .line 459
    .end local v0    # "permissionGranted":Z
    .local v25, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_be

    .line 460
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 461
    .local v3, "interrogatingPid":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p6

    move v7, v12

    move/from16 v8, p5

    move v9, v3

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 463
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v5, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 464
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 466
    .local v7, "identityToken":J
    :try_start_5c
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    iget v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v15, p2

    move-object/from16 v17, p4

    move-object/from16 v18, v2

    move/from16 v19, p5

    move-object/from16 v20, v5

    move/from16 v21, v0

    move/from16 v22, v3

    move-wide/from16 v23, p7

    invoke-interface/range {v14 .. v25}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 469
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 470
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v10

    .line 469
    invoke-virtual {v0, v6, v9, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(ILjava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_83} :catch_aa
    .catchall {:try_start_5c .. :try_end_83} :catchall_96

    .line 476
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 478
    if-eqz v2, :cond_95

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 479
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 469
    :cond_95
    return-object v0

    .line 476
    :catchall_96
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 478
    if-eqz v2, :cond_a9

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 479
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    :cond_a9
    throw v0

    .line 471
    :catch_aa
    move-exception v0

    .line 476
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 478
    if-eqz v2, :cond_bd

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 479
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 482
    :cond_bd
    return-object v4

    .line 459
    .end local v3    # "interrogatingPid":I
    .end local v5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6    # "callingUid":I
    .end local v7    # "identityToken":J
    .end local v12    # "resolvedWindowId":I
    .end local v13    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v25    # "spec":Landroid/view/MagnificationSpec;
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_be
    move-exception v0

    :try_start_bf
    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v0
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 31
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "focusType"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 606
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 608
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 609
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_12

    .line 610
    monitor-exit v3

    return-object v4

    .line 612
    :cond_12
    move/from16 v5, p1

    move/from16 v15, p4

    invoke-direct {v1, v5, v15}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdForFindFocusLocked(II)I

    move-result v0

    move v14, v0

    .line 614
    .local v14, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 615
    invoke-virtual {v0, v1, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 616
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_25

    .line 617
    monitor-exit v3

    return-object v4

    .line 619
    :cond_25
    iget-object v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v6, v14}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v6

    move-object v13, v6

    .line 620
    .local v13, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v13, :cond_30

    .line 621
    monitor-exit v3

    return-object v4

    .line 624
    :cond_30
    iget-object v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v6, v14, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 626
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_e5

    .line 627
    const/4 v2, 0x0

    .line 629
    :cond_3c
    :try_start_3c
    iget-object v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v6, v14}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v17

    .line 630
    .end local v0    # "permissionGranted":Z
    .local v17, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_e2

    .line 631
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 632
    .local v3, "interrogatingPid":I
    iget-object v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v7, p6

    move v8, v14

    move/from16 v9, p5

    move v10, v3

    move-wide/from16 v11, p7

    invoke-interface/range {v6 .. v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    .line 634
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v18, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 635
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    move-wide v10, v6

    .line 637
    .local v10, "identityToken":J
    :try_start_5e
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v6

    iget v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_64} :catch_c8
    .catchall {:try_start_5e .. :try_end_64} :catchall_af

    move-wide/from16 v7, p2

    move v9, v15

    move-wide v4, v10

    move-object v10, v2

    .end local v10    # "identityToken":J
    .local v4, "identityToken":J
    move/from16 v11, p5

    move-object/from16 v19, v2

    move v2, v12

    move-object/from16 v12, v18

    .end local v12    # "callingUid":I
    .local v2, "callingUid":I
    .local v19, "partialInteractiveRegion":Landroid/graphics/Region;
    move-wide/from16 v20, v4

    move-object v4, v13

    move v13, v0

    .end local v13    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .local v4, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .local v20, "identityToken":J
    move v5, v14

    move v14, v3

    .end local v14    # "resolvedWindowId":I
    .local v5, "resolvedWindowId":I
    move-wide/from16 v15, p7

    :try_start_78
    invoke-interface/range {v6 .. v17}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 640
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 641
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v7

    .line 640
    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(ILjava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_89} :catch_a9
    .catchall {:try_start_78 .. :try_end_89} :catchall_a3

    .line 647
    move-wide/from16 v6, v20

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 649
    .end local v20    # "identityToken":J
    .local v6, "identityToken":J
    if-eqz v19, :cond_a0

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 650
    move-object/from16 v8, v19

    invoke-virtual {v8}, Landroid/graphics/Region;->recycle()V

    goto :goto_a2

    .line 640
    :cond_a0
    move-object/from16 v8, v19

    .end local v19    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v8, "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_a2
    return-object v0

    .line 647
    .end local v6    # "identityToken":J
    .end local v8    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v19    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v20    # "identityToken":J
    :catchall_a3
    move-exception v0

    move-object/from16 v8, v19

    move-wide/from16 v6, v20

    .end local v19    # "partialInteractiveRegion":Landroid/graphics/Region;
    .end local v20    # "identityToken":J
    .restart local v6    # "identityToken":J
    .restart local v8    # "partialInteractiveRegion":Landroid/graphics/Region;
    goto :goto_b5

    .line 642
    .end local v6    # "identityToken":J
    .end local v8    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v19    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v20    # "identityToken":J
    :catch_a9
    move-exception v0

    move-object/from16 v8, v19

    move-wide/from16 v6, v20

    .end local v19    # "partialInteractiveRegion":Landroid/graphics/Region;
    .end local v20    # "identityToken":J
    .restart local v6    # "identityToken":J
    .restart local v8    # "partialInteractiveRegion":Landroid/graphics/Region;
    goto :goto_ce

    .line 647
    .end local v4    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v5    # "resolvedWindowId":I
    .end local v6    # "identityToken":J
    .end local v8    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v10    # "identityToken":J
    .restart local v12    # "callingUid":I
    .restart local v13    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .restart local v14    # "resolvedWindowId":I
    :catchall_af
    move-exception v0

    move-object v8, v2

    move-wide v6, v10

    move v2, v12

    move-object v4, v13

    move v5, v14

    .end local v10    # "identityToken":J
    .end local v12    # "callingUid":I
    .end local v13    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v14    # "resolvedWindowId":I
    .local v2, "callingUid":I
    .restart local v4    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .restart local v5    # "resolvedWindowId":I
    .restart local v6    # "identityToken":J
    .restart local v8    # "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_b5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 649
    if-eqz v8, :cond_c7

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v9

    invoke-static {v9}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v9

    if-eqz v9, :cond_c7

    .line 650
    invoke-virtual {v8}, Landroid/graphics/Region;->recycle()V

    :cond_c7
    throw v0

    .line 642
    .end local v4    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v5    # "resolvedWindowId":I
    .end local v6    # "identityToken":J
    .end local v8    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v10    # "identityToken":J
    .restart local v12    # "callingUid":I
    .restart local v13    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .restart local v14    # "resolvedWindowId":I
    :catch_c8
    move-exception v0

    move-object v8, v2

    move-wide v6, v10

    move v2, v12

    move-object v4, v13

    move v5, v14

    .line 647
    .end local v10    # "identityToken":J
    .end local v12    # "callingUid":I
    .end local v13    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v14    # "resolvedWindowId":I
    .local v2, "callingUid":I
    .restart local v4    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .restart local v5    # "resolvedWindowId":I
    .restart local v6    # "identityToken":J
    .restart local v8    # "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_ce
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 649
    if-eqz v8, :cond_e0

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 650
    invoke-virtual {v8}, Landroid/graphics/Region;->recycle()V

    .line 653
    :cond_e0
    const/4 v9, 0x0

    return-object v9

    .line 630
    .end local v3    # "interrogatingPid":I
    .end local v4    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v5    # "resolvedWindowId":I
    .end local v6    # "identityToken":J
    .end local v8    # "partialInteractiveRegion":Landroid/graphics/Region;
    .end local v17    # "spec":Landroid/view/MagnificationSpec;
    .end local v18    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_e2
    move-exception v0

    move-object v8, v2

    .end local v2    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v8    # "partialInteractiveRegion":Landroid/graphics/Region;
    goto :goto_e6

    .end local v8    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v2    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_e5
    move-exception v0

    :goto_e6
    :try_start_e6
    monitor-exit v3
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v0
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 35
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "direction"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 663
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 665
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 666
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_12

    .line 667
    monitor-exit v3

    return-object v4

    .line 669
    :cond_12
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v12, v0

    .line 670
    .local v12, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 671
    invoke-virtual {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 672
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_21

    .line 673
    monitor-exit v3

    return-object v4

    .line 675
    :cond_21
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v5

    move-object v13, v5

    .line 676
    .local v13, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v13, :cond_2c

    .line 677
    monitor-exit v3

    return-object v4

    .line 680
    :cond_2c
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v12, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 682
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 683
    const/4 v2, 0x0

    .line 685
    :cond_38
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v25

    .line 686
    .end local v0    # "permissionGranted":Z
    .local v25, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_9 .. :try_end_3f} :catchall_bb

    .line 687
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 688
    .local v3, "interrogatingPid":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p6

    move v7, v12

    move/from16 v8, p5

    move v9, v3

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 690
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v5, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 691
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 693
    .local v7, "identityToken":J
    :try_start_59
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    iget v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v15, p2

    move/from16 v17, p4

    move-object/from16 v18, v2

    move/from16 v19, p5

    move-object/from16 v20, v5

    move/from16 v21, v0

    move/from16 v22, v3

    move-wide/from16 v23, p7

    invoke-interface/range {v14 .. v25}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 696
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 697
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v10

    .line 696
    invoke-virtual {v0, v6, v9, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(ILjava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_80} :catch_a7
    .catchall {:try_start_59 .. :try_end_80} :catchall_93

    .line 703
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 705
    if-eqz v2, :cond_92

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 706
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 696
    :cond_92
    return-object v0

    .line 703
    :catchall_93
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 705
    if-eqz v2, :cond_a6

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 706
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    :cond_a6
    throw v0

    .line 698
    :catch_a7
    move-exception v0

    .line 703
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 705
    if-eqz v2, :cond_ba

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 706
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 709
    :cond_ba
    return-object v4

    .line 686
    .end local v3    # "interrogatingPid":I
    .end local v5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6    # "callingUid":I
    .end local v7    # "identityToken":J
    .end local v12    # "resolvedWindowId":I
    .end local v13    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v25    # "spec":Landroid/view/MagnificationSpec;
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_bb
    move-exception v0

    :try_start_bc
    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v0
.end method

.method public getCapabilities()I
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 1253
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getMagnificationCenterX()F
    .registers 7

    .line 802
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 803
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_c

    .line 804
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 806
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 807
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    .line 808
    .local v1, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    nop

    .line 809
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(Lcom/android/server/accessibility/MagnificationController;)Z

    move-result v2

    .line 810
    .local v2, "registeredJustForThisCall":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_33

    .line 812
    .local v3, "identity":J
    :try_start_1b
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    move-result v5
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_29

    .line 814
    :try_start_1f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 815
    if-eqz v2, :cond_27

    .line 816
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController;->unregister()V

    :cond_27
    monitor-exit v0

    .line 812
    return v5

    .line 814
    :catchall_29
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 815
    if-eqz v2, :cond_32

    .line 816
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController;->unregister()V

    :cond_32
    throw v5

    .line 819
    .end local v1    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    .end local v2    # "registeredJustForThisCall":Z
    .end local v3    # "identity":J
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_33

    throw v1
.end method

.method public getMagnificationCenterY()F
    .registers 7

    .line 824
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 825
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_c

    .line 826
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 828
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 829
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    .line 830
    .local v1, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    nop

    .line 831
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(Lcom/android/server/accessibility/MagnificationController;)Z

    move-result v2

    .line 832
    .local v2, "registeredJustForThisCall":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_33

    .line 834
    .local v3, "identity":J
    :try_start_1b
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    move-result v5
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_29

    .line 836
    :try_start_1f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 837
    if-eqz v2, :cond_27

    .line 838
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController;->unregister()V

    :cond_27
    monitor-exit v0

    .line 834
    return v5

    .line 836
    :catchall_29
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 837
    if-eqz v2, :cond_32

    .line 838
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController;->unregister()V

    :cond_32
    throw v5

    .line 841
    .end local v1    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    .end local v2    # "registeredJustForThisCall":Z
    .end local v3    # "identity":J
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_33

    throw v1
.end method

.method public getMagnificationRegion()Landroid/graphics/Region;
    .registers 8

    .line 778
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 779
    :try_start_3
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 780
    .local v1, "region":Landroid/graphics/Region;
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v2

    if-nez v2, :cond_f

    .line 781
    monitor-exit v0

    return-object v1

    .line 783
    :cond_f
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 784
    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    .line 785
    .local v2, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    nop

    .line 786
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(Lcom/android/server/accessibility/MagnificationController;)Z

    move-result v3

    .line 787
    .local v3, "registeredJustForThisCall":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_36

    .line 789
    .local v4, "identity":J
    :try_start_1e
    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationRegion(Landroid/graphics/Region;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    .line 790
    nop

    .line 792
    :try_start_22
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 793
    if-eqz v3, :cond_2a

    .line 794
    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController;->unregister()V

    :cond_2a
    monitor-exit v0

    .line 790
    return-object v1

    .line 792
    :catchall_2c
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 793
    if-eqz v3, :cond_35

    .line 794
    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController;->unregister()V

    :cond_35
    throw v6

    .line 797
    .end local v1    # "region":Landroid/graphics/Region;
    .end local v2    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    .end local v3    # "registeredJustForThisCall":Z
    .end local v4    # "identity":J
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public getMagnificationScale()F
    .registers 4

    .line 763
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_d

    .line 765
    const/high16 v1, 0x3f800000    # 1.0f

    monitor-exit v0

    return v1

    .line 767
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_25

    .line 768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 770
    .local v0, "identity":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    .line 772
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 770
    return v2

    .line 772
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 767
    .end local v0    # "identity":J
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method getRelevantEventTypes()I
    .registers 3

    .line 350
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    if-eqz v0, :cond_8

    const v0, 0x41b83d

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    monitor-exit v0

    return-object v1

    .line 342
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 7
    .param p1, "windowId"    # I

    .line 408
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->ensureWindowsAvailableTimed()V

    .line 409
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 411
    monitor-exit v0

    return-object v2

    .line 413
    :cond_11
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 414
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    .line 415
    .local v1, "permissionGranted":Z
    if-nez v1, :cond_1b

    .line 416
    monitor-exit v0

    return-object v2

    .line 418
    :cond_1b
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    .line 419
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v3, :cond_2e

    .line 420
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 421
    .local v2, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 422
    monitor-exit v0

    return-object v2

    .line 424
    .end local v2    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_2e
    monitor-exit v0

    return-object v2

    .line 425
    .end local v1    # "permissionGranted":Z
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public getWindows()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->ensureWindowsAvailableTimed()V

    .line 381
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 383
    monitor-exit v0

    return-object v2

    .line 385
    :cond_11
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 386
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    .line 387
    .local v1, "permissionGranted":Z
    if-nez v1, :cond_1b

    .line 388
    monitor-exit v0

    return-object v2

    .line 390
    :cond_1b
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v3, :cond_23

    .line 391
    monitor-exit v0

    return-object v2

    .line 393
    :cond_23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v2, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 395
    .local v3, "windowCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_31
    if-ge v4, v3, :cond_4d

    .line 396
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 397
    .local v5, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    nop

    .line 398
    invoke-static {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v6

    .line 399
    .local v6, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 400
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v5    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v6    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 402
    .end local v4    # "i":I
    :cond_4d
    monitor-exit v0

    return-object v2

    .line 403
    .end local v1    # "permissionGranted":Z
    .end local v2    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v3    # "windowCount":I
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method protected abstract isCalledForCurrentUserLocked()Z
.end method

.method public isConnectedLocked()Z
    .registers 2

    .line 973
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isFingerprintGestureDetectionAvailable()Z
    .registers 4

    .line 750
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 751
    return v1

    .line 753
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 754
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 755
    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    move-result-object v0

    .line 756
    .local v0, "dispatcher":Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->isFingerprintGestureDetectionAvailable()Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x1

    nop

    :cond_26
    return v1

    .line 758
    .end local v0    # "dispatcher":Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    :cond_27
    return v1
.end method

.method public isMagnificationCallbackEnabled()Z
    .registers 2

    .line 903
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    # getter for: Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsMagnificationCallbackEnabled:Z
    invoke-static {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->access$100(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;)Z

    move-result v0

    return v0
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .registers 3
    .param p1, "available"    # Z

    .line 1135
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    .line 1136
    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked()V
    .registers 2

    .line 1131
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonClickedLocked()V

    .line 1132
    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 977
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 978
    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 980
    .local v1, "eventType":I
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 981
    .local v2, "serviceWantsEvent":Z
    iget-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_19

    const v3, 0x41b83d

    and-int/2addr v3, v1

    if-eqz v3, :cond_19

    move v3, v5

    goto :goto_1a

    :cond_19
    move v3, v4

    .line 983
    .local v3, "requiredForCacheConsistency":Z
    :goto_1a
    if-nez v2, :cond_20

    if-nez v3, :cond_20

    .line 984
    monitor-exit v0

    return-void

    .line 990
    :cond_20
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    .line 992
    .local v6, "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-wide v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_4f

    const/16 v7, 0x800

    if-eq v1, v7, :cond_4f

    .line 995
    iget-object v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityEvent;

    .line 996
    .local v7, "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v8, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 997
    if-eqz v7, :cond_47

    .line 998
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v8, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 999
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1001
    :cond_47
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v8, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .end local v7    # "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    move-object v7, v8

    .line 1002
    .local v7, "message":Landroid/os/Message;
    goto :goto_55

    .line 1004
    .end local v7    # "message":Landroid/os/Message;
    :cond_4f
    iget-object v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v7, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1006
    .restart local v7    # "message":Landroid/os/Message;
    :goto_55
    if-eqz v2, :cond_59

    move v4, v5

    nop

    :cond_59
    iput v4, v7, Landroid/os/Message;->arg1:I

    .line 1008
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    iget-wide v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1009
    .end local v1    # "eventType":I
    .end local v2    # "serviceWantsEvent":Z
    .end local v3    # "requiredForCacheConsistency":Z
    .end local v6    # "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v7    # "message":Landroid/os/Message;
    monitor-exit v0

    .line 1010
    return-void

    .line 1009
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    throw v1
.end method

.method public notifyClearAccessibilityNodeInfoCache()V
    .registers 3

    .line 1116
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->sendEmptyMessage(I)Z

    .line 1118
    return-void
.end method

.method public notifyGesture(I)V
    .registers 5
    .param p1, "gestureId"    # I

    .line 1111
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1112
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1113
    return-void
.end method

.method public notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V
    .registers 6
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 1122
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 1123
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V

    .line 1124
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 3
    .param p1, "showState"    # I

    .line 1127
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifySoftKeyboardShowModeChangedLocked(I)V

    .line 1128
    return-void
.end method

.method public onAdded()V
    .registers 7

    .line 928
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 930
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    const/16 v4, 0x7f0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 933
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 934
    nop

    .line 935
    return-void

    .line 933
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)Z
    .registers 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "sequenceNumber"    # I

    .line 273
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-nez v0, :cond_a

    goto :goto_1f

    .line 276
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_15

    .line 278
    return v1

    .line 281
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1d

    .line 284
    nop

    .line 285
    const/4 v0, 0x1

    return v0

    .line 282
    :catch_1d
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 274
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    return v1
.end method

.method public onRemoved()V
    .registers 7

    .line 938
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 940
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 942
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 943
    nop

    .line 944
    return-void

    .line 942
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .registers 26
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "action"    # I
    .param p5, "arguments"    # Landroid/os/Bundle;
    .param p6, "interactionId"    # I
    .param p7, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 722
    const/4 v2, 0x0

    .line 723
    .local v2, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 724
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_f

    .line 725
    monitor-exit v3

    return v4

    .line 727
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    .line 728
    .local v0, "resolvedWindowId":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 729
    monitor-exit v3

    return v4

    .line 731
    :cond_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_34

    .line 732
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget v13, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 733
    move v6, v0

    move-wide/from16 v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move-wide/from16 v14, p8

    invoke-interface/range {v5 .. v15}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z

    move-result v3

    .line 735
    .local v3, "returnValue":Z
    return v3

    .line 731
    .end local v0    # "resolvedWindowId":I
    .end local v3    # "returnValue":Z
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public performGlobalAction(I)Z
    .registers 4
    .param p1, "action"    # I

    .line 740
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_c

    .line 742
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 744
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_14

    .line 745
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/GlobalActionPerformer;->performGlobalAction(I)Z

    move-result v0

    return v0

    .line 744
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public resetLocked()V
    .registers 6

    .line 947
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/KeyEventDispatcher;->flush(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;)V

    .line 951
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_15

    .line 952
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-interface {v1, v0, v2, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 956
    :cond_15
    goto :goto_17

    .line 954
    :catch_16
    move-exception v1

    .line 957
    :goto_17
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 960
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_21
    .catch Ljava/util/NoSuchElementException; {:try_start_1c .. :try_end_21} :catch_22

    .line 963
    goto :goto_2a

    .line 961
    :catch_22
    move-exception v1

    .line 962
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v3, "AbstractAccessibilityServiceConnection"

    const-string v4, "Death link does not exist!"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 965
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_2a
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 968
    :cond_2c
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 969
    iput-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 970
    return-void
.end method

.method public resetMagnification(Z)Z
    .registers 5
    .param p1, "animate"    # Z

    .line 856
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 858
    monitor-exit v0

    return v2

    .line 860
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 861
    monitor-exit v0

    return v2

    .line 863
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2e

    .line 864
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 866
    .local v0, "identity":J
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    move-result v2
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_29

    .line 868
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 866
    return v2

    .line 868
    :catchall_29
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 863
    .end local v0    # "identity":J
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .registers 3
    .param p1, "sequence"    # I
    .param p2, "gestureSteps"    # Landroid/content/pm/ParceledListSlice;

    .line 714
    return-void
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 289
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 290
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 291
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 292
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 293
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 295
    :cond_15
    iget-wide v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    .line 296
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    :goto_23
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 299
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_38

    .line 300
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_3e

    .line 302
    :cond_38
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 306
    :cond_3e
    :goto_3e
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4b

    .line 307
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_51

    .line 309
    :cond_4b
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 312
    :goto_51
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_59

    move v1, v2

    goto :goto_5a

    :cond_59
    move v1, v3

    :goto_5a
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    .line 314
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_64

    move v1, v2

    goto :goto_65

    :cond_64
    move v1, v3

    :goto_65
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    .line 316
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6f

    move v1, v2

    goto :goto_70

    :cond_6f
    move v1, v3

    :goto_70
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    .line 318
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_7a

    move v1, v2

    goto :goto_7b

    :cond_7a
    move v1, v3

    :goto_7b
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    .line 320
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_84

    goto :goto_85

    :cond_84
    move v2, v3

    :goto_85
    iput-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 322
    return-void
.end method

.method public setMagnificationCallbackEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 899
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setMagnificationCallbackEnabled(Z)V

    .line 900
    return-void
.end method

.method public setMagnificationScaleAndCenter(FFFZ)Z
    .registers 15
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z

    .line 875
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 876
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 877
    monitor-exit v0

    return v2

    .line 879
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 880
    monitor-exit v0

    return v2

    .line 882
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3e

    .line 884
    .local v1, "identity":J
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 885
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    .line 886
    .local v3, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    invoke-virtual {v3}, Lcom/android/server/accessibility/MagnificationController;->isRegisteredLocked()Z

    move-result v4

    if-nez v4, :cond_29

    .line 887
    invoke-virtual {v3}, Lcom/android/server/accessibility/MagnificationController;->register()V

    .line 889
    :cond_29
    iget v9, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 890
    move-object v4, v3

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(FFFZI)Z

    move-result v4
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_39

    .line 892
    :try_start_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 889
    return v4

    .line 892
    .end local v3    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    :catchall_39
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 894
    .end local v1    # "identity":J
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public setOnKeyEventResult(ZI)V
    .registers 4
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I

    .line 335
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->setOnKeyEventResult(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;ZI)V

    .line 336
    return-void
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 358
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_24

    .line 362
    :try_start_7
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 363
    .local v3, "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v3, :cond_12

    .line 364
    invoke-virtual {v3, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 365
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    goto :goto_15

    .line 367
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 369
    :goto_15
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChange(Z)V

    .line 370
    .end local v3    # "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_21

    .line 372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 373
    nop

    .line 374
    return-void

    .line 370
    :catchall_21
    move-exception v3

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 372
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 908
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setSoftKeyboardCallbackEnabled(Z)V

    .line 909
    return-void
.end method

.method protected supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 325
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
