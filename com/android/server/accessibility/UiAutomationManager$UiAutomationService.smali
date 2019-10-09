.class Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
.super Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.source "UiAutomationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/UiAutomationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiAutomationService"
.end annotation


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/accessibility/UiAutomationManager;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/UiAutomationManager;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V
    .registers 23
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p4, "id"    # I
    .param p5, "mainHandler"    # Landroid/os/Handler;
    .param p6, "lock"    # Ljava/lang/Object;
    .param p7, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p8, "systemSupport"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p9, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p10, "globalActionPerfomer"    # Lcom/android/server/accessibility/GlobalActionPerformer;

    move-object v11, p0

    .line 201
    move-object v0, p1

    iput-object v0, v11, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    .line 202
    # getter for: Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/server/accessibility/UiAutomationManager;->access$300()Landroid/content/ComponentName;

    move-result-object v2

    move-object v0, v11

    move-object v1, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V

    .line 204
    move-object/from16 v0, p5

    iput-object v0, v11, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mMainHandler:Landroid/os/Handler;

    .line 205
    return-void
.end method

.method public static synthetic lambda$connectServiceUnknownThread$0(Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;)V
    .registers 5

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_25

    .line 214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 215
    .local v1, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-nez v1, :cond_9

    const/4 v2, 0x0

    goto :goto_f

    :cond_9
    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_f
    iput-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mService:Landroid/os/IBinder;

    .line 216
    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mService:Landroid/os/IBinder;

    .line 217
    .local v2, "service":Landroid/os/IBinder;
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_22

    .line 220
    if-eqz v1, :cond_21

    .line 221
    const/4 v0, 0x0

    :try_start_17
    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 222
    iget v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mId:I

    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mOverlayWindowToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_25

    .line 227
    .end local v1    # "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v2    # "service":Landroid/os/IBinder;
    :cond_21
    goto :goto_32

    .line 217
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw v1
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_25} :catch_25

    .line 224
    :catch_25
    move-exception v0

    .line 225
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "UiAutomationManager"

    const-string v2, "Error initialized connection"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    # invokes: Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V
    invoke-static {v1}, Lcom/android/server/accessibility/UiAutomationManager;->access$200(Lcom/android/server/accessibility/UiAutomationManager;)V

    .line 228
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    # invokes: Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V
    invoke-static {v0}, Lcom/android/server/accessibility/UiAutomationManager;->access$200(Lcom/android/server/accessibility/UiAutomationManager;)V

    .line 234
    return-void
.end method

.method connectServiceUnknownThread()V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/-$$Lambda$UiAutomationManager$UiAutomationService$z2oxrodQt4ZxyzsfB6p_GYgwxqk;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/-$$Lambda$UiAutomationManager$UiAutomationService$z2oxrodQt4ZxyzsfB6p_GYgwxqk;-><init>(Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method

.method public disableSelf()V
    .registers 1

    .line 270
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mContext:Landroid/content/Context;

    const-string v1, "UiAutomationManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 250
    :cond_b
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ui Automation[eventTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mEventTypes:I

    .line 252
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", notificationTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mNotificationTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 254
    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 255
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_e .. :try_end_47} :catchall_45

    throw v1
.end method

.method public isAccessibilityButtonAvailable()Z
    .registers 2

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method protected isCalledForCurrentUserLocked()Z
    .registers 2

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public isCapturingFingerprintGestures()Z
    .registers 2

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public onFingerprintGesture(I)V
    .registers 2
    .param p1, "gesture"    # I

    .line 287
    return-void
.end method

.method public onFingerprintGestureDetectionActiveChanged(Z)V
    .registers 2
    .param p1, "active"    # Z

    .line 284
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 273
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 276
    return-void
.end method

.method public setSoftKeyboardShowMode(I)Z
    .registers 3
    .param p1, "mode"    # I

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method protected supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 244
    const/4 v0, 0x1

    return v0
.end method
