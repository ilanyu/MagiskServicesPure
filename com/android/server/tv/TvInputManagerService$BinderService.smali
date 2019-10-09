.class final Lcom/android/server/tv/TvInputManagerService$BinderService;
.super Landroid/media/tv/ITvInputManager$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    .line 843
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "x1"    # Lcom/android/server/tv/TvInputManagerService$1;

    .line 843
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    return-void
.end method

.method private ensureCaptureTvInputPermission()V
    .registers 3

    .line 1962
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAPTURE_TV_INPUT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 1967
    return-void

    .line 1965
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CAPTURE_TV_INPUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureParentalControlsPermission()V
    .registers 3

    .line 1140
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_PARENTAL_CONTROLS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 1146
    return-void

    .line 1143
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have parental controls permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .registers 3

    .line 905
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 906
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 905
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_1b

    array-length v1, v0

    if-lez v1, :cond_1b

    .line 908
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 910
    :cond_1b
    const-string/jumbo v1, "unknown"

    return-object v1
.end method


# virtual methods
.method public acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;I)Landroid/media/tv/ITvInputHardware;
    .registers 14
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1716
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 1718
    const/4 v0, 0x0

    return-object v0

    .line 1721
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1722
    .local v0, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1723
    .local v8, "callingUid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v4, "acquireTvInputHardware"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v2, v3, v8, p4, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v7

    .line 1726
    .local v7, "resolvedUserId":I
    :try_start_24
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager;->acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;II)Landroid/media/tv/ITvInputHardware;

    move-result-object v2
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_36

    .line 1729
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1726
    return-object v2

    .line 1729
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public addBlockedRating(Ljava/lang/String;I)V
    .registers 10
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1107
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1108
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1109
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "addBlockedRating"

    .line 1108
    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1110
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1112
    .local v1, "identity":J
    :try_start_17
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_38

    .line 1113
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1114
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4500(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    .line 1115
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    .line 1114
    invoke-virtual {v5, v6}, Lcom/android/server/tv/PersistentDataStore;->addBlockedRating(Landroid/media/tv/TvContentRating;)V

    .line 1116
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_35

    .line 1118
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1119
    nop

    .line 1120
    return-void

    .line 1116
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1118
    :catchall_38
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z
    .registers 16
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1902
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureCaptureTvInputPermission()V

    .line 1904
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1905
    .local v0, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1906
    .local v8, "callingUid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v4, "captureFrame"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v2, v3, v8, p4, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    move v9, v2

    .line 1909
    .local v9, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1910
    .local v2, "hardwareInputId":Ljava/lang/String;
    :try_start_19
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_a8

    .line 1911
    :try_start_20
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v9}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1912
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4c

    .line 1913
    const-string v5, "TvInputManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "input not found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    const/4 v5, 0x0

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_20 .. :try_end_48} :catchall_a5

    .line 1929
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1914
    return v5

    .line 1916
    :cond_4c
    :try_start_4c
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_58
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_89

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1917
    .local v6, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_88

    .line 1918
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_88

    .line 1919
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    .line 1920
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v7

    .line 1919
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1920
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5
    :try_end_86
    .catchall {:try_start_4c .. :try_end_86} :catchall_a5

    move-object v2, v5

    .line 1921
    goto :goto_89

    .line 1923
    .end local v6    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_88
    goto :goto_58

    .line 1924
    .end local v2    # "hardwareInputId":Ljava/lang/String;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .local v10, "hardwareInputId":Ljava/lang/String;
    :cond_89
    :goto_89
    move-object v10, v2

    :try_start_8a
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_a2

    .line 1925
    :try_start_8b
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    .line 1926
    if-eqz v10, :cond_95

    .line 1925
    move-object v3, v10

    goto :goto_96

    :cond_95
    move-object v3, p1

    :goto_96
    move-object v4, p2

    move-object v5, p3

    move v6, v8

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z

    move-result v2
    :try_end_9e
    .catchall {:try_start_8b .. :try_end_9e} :catchall_a8

    .line 1929
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1925
    return v2

    .line 1924
    :catchall_a2
    move-exception v4

    move-object v2, v10

    goto :goto_a6

    .end local v10    # "hardwareInputId":Ljava/lang/String;
    .restart local v2    # "hardwareInputId":Ljava/lang/String;
    :catchall_a5
    move-exception v4

    :goto_a6
    :try_start_a6
    monitor-exit v3
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    :try_start_a7
    throw v4
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a8

    .line 1929
    .end local v2    # "hardwareInputId":Ljava/lang/String;
    :catchall_a8
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "userId"    # I

    .line 1479
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1480
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "createOverlayView"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1482
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1484
    .local v2, "identity":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_37

    .line 1486
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1487
    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_27
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_24} :catch_27
    .catchall {:try_start_1b .. :try_end_24} :catchall_25

    .line 1490
    goto :goto_2f

    .line 1491
    :catchall_25
    move-exception v5

    goto :goto_35

    .line 1488
    :catch_27
    move-exception v5

    .line 1489
    .local v5, "e":Ljava/lang/Exception;
    :try_start_28
    const-string v6, "TvInputManagerService"

    const-string v7, "error in createOverlayView"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1491
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_25

    .line 1493
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1494
    nop

    .line 1495
    return-void

    .line 1491
    :goto_35
    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_25

    :try_start_36
    throw v5
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 1493
    :catchall_37
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;ZII)V
    .registers 31
    .param p1, "client"    # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "isRecordingSession"    # Z
    .param p4, "seq"    # I
    .param p5, "userId"    # I

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    .line 1151
    move/from16 v9, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1152
    .local v15, "callingUid":I
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "createSession"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v2, v15, v9, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v14

    .line 1154
    .local v14, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v12, v2

    .line 1156
    .local v12, "identity":J
    :try_start_1b
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_131

    .line 1157
    :try_start_22
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_127

    if-eq v9, v0, :cond_43

    if-nez p3, :cond_43

    .line 1161
    :try_start_2c
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object v4, v8

    move/from16 v7, p4

    # invokes: Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->access$4600(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1162
    monitor-exit v21
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_3d

    .line 1203
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1162
    return-void

    .line 1201
    :catchall_3d
    move-exception v0

    move-wide v2, v12

    move v4, v14

    move v5, v15

    goto/16 :goto_12b

    .line 1164
    :cond_43
    :try_start_43
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0, v14}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 1165
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_127

    move-object v11, v2

    .line 1166
    .local v11, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v11, :cond_7d

    .line 1167
    :try_start_56
    const-string v2, "TvInputManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find input state for inputId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object v4, v8

    move/from16 v7, p4

    # invokes: Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->access$4600(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1169
    monitor-exit v21
    :try_end_79
    .catchall {:try_start_56 .. :try_end_79} :catchall_3d

    .line 1203
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1169
    return-void

    .line 1171
    :cond_7d
    :try_start_7d
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    move-object v10, v2

    .line 1172
    .local v10, "info":Landroid/media/tv/TvInputInfo;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :try_end_90
    .catchall {:try_start_7d .. :try_end_90} :catchall_127

    .line 1173
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v2, :cond_aa

    .line 1174
    :try_start_92
    new-instance v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    iget-object v4, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v14, v6}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V

    move-object v2, v3

    .line 1175
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_aa
    .catchall {:try_start_92 .. :try_end_aa} :catchall_3d

    .line 1178
    :cond_aa
    move-object v7, v2

    .end local v2    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .local v7, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :try_start_ab
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_127

    if-eqz v2, :cond_c3

    .line 1179
    :try_start_b1
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object v4, v8

    move-object v8, v7

    move/from16 v7, p4

    .end local v7    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .local v8, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # invokes: Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->access$4600(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1180
    monitor-exit v21
    :try_end_bf
    .catchall {:try_start_b1 .. :try_end_bf} :catchall_3d

    .line 1203
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1180
    return-void

    .line 1184
    .end local v8    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .restart local v7    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_c3
    move-object v8, v7

    .end local v7    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .restart local v8    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :try_start_c4
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 1185
    .local v2, "sessionToken":Landroid/os/IBinder;
    new-instance v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v4, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1186
    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6
    :try_end_d5
    .catchall {:try_start_c4 .. :try_end_d5} :catchall_127

    const/16 v20, 0x0

    move-object v7, v10

    move-object v10, v3

    .end local v10    # "info":Landroid/media/tv/TvInputInfo;
    .local v7, "info":Landroid/media/tv/TvInputInfo;
    move-object/from16 v22, v11

    move-object v11, v4

    .end local v11    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .local v22, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    move-wide/from16 v23, v12

    move-object v12, v2

    .end local v12    # "identity":J
    .local v23, "identity":J
    move-object v13, v5

    move v4, v14

    move-object v14, v6

    .end local v14    # "resolvedUserId":I
    .local v4, "resolvedUserId":I
    move v5, v15

    move/from16 v15, p3

    .end local v15    # "callingUid":I
    .local v5, "callingUid":I
    move-object/from16 v16, p1

    move/from16 v17, p4

    move/from16 v18, v5

    move/from16 v19, v4

    :try_start_ed
    invoke-direct/range {v10 .. v20}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIILcom/android/server/tv/TvInputManagerService$1;)V

    .line 1190
    .local v3, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v6
    :try_end_102
    .catchall {:try_start_ed .. :try_end_102} :catchall_123

    if-eqz v6, :cond_112

    .line 1196
    :try_start_104
    iget-object v6, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v10

    # invokes: Lcom/android/server/tv/TvInputManagerService;->createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    invoke-static {v6, v10, v2, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4800(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    :try_end_10d
    .catchall {:try_start_104 .. :try_end_10d} :catchall_10e

    goto :goto_11b

    .line 1201
    .end local v0    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v2    # "sessionToken":Landroid/os/IBinder;
    .end local v3    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v7    # "info":Landroid/media/tv/TvInputInfo;
    .end local v8    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v22    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :catchall_10e
    move-exception v0

    move-wide/from16 v2, v23

    goto :goto_12b

    .line 1199
    .restart local v0    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .restart local v2    # "sessionToken":Landroid/os/IBinder;
    .restart local v3    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .restart local v7    # "info":Landroid/media/tv/TvInputInfo;
    .restart local v8    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .restart local v22    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :cond_112
    :try_start_112
    iget-object v6, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v7}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    # invokes: Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V
    invoke-static {v6, v10, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4900(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    .line 1201
    .end local v0    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v2    # "sessionToken":Landroid/os/IBinder;
    .end local v3    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v7    # "info":Landroid/media/tv/TvInputInfo;
    .end local v8    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v22    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :goto_11b
    monitor-exit v21
    :try_end_11c
    .catchall {:try_start_112 .. :try_end_11c} :catchall_123

    .line 1203
    move-wide/from16 v2, v23

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1204
    .end local v23    # "identity":J
    .local v2, "identity":J
    nop

    .line 1205
    return-void

    .line 1201
    .end local v2    # "identity":J
    .restart local v23    # "identity":J
    :catchall_123
    move-exception v0

    move-wide/from16 v2, v23

    .end local v23    # "identity":J
    .restart local v2    # "identity":J
    goto :goto_12b

    .end local v2    # "identity":J
    .end local v4    # "resolvedUserId":I
    .end local v5    # "callingUid":I
    .restart local v12    # "identity":J
    .restart local v14    # "resolvedUserId":I
    .restart local v15    # "callingUid":I
    :catchall_127
    move-exception v0

    move-wide v2, v12

    move v4, v14

    move v5, v15

    .end local v12    # "identity":J
    .end local v14    # "resolvedUserId":I
    .end local v15    # "callingUid":I
    .restart local v2    # "identity":J
    .restart local v4    # "resolvedUserId":I
    .restart local v5    # "callingUid":I
    :goto_12b
    :try_start_12b
    monitor-exit v21
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12f

    :try_start_12c
    throw v0
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12d

    .line 1203
    :catchall_12d
    move-exception v0

    goto :goto_135

    .line 1201
    :catchall_12f
    move-exception v0

    goto :goto_12b

    .line 1203
    .end local v2    # "identity":J
    .end local v4    # "resolvedUserId":I
    .end local v5    # "callingUid":I
    .restart local v12    # "identity":J
    .restart local v14    # "resolvedUserId":I
    .restart local v15    # "callingUid":I
    :catchall_131
    move-exception v0

    move-wide v2, v12

    move v4, v14

    move v5, v15

    .end local v12    # "identity":J
    .end local v14    # "resolvedUserId":I
    .end local v15    # "callingUid":I
    .restart local v2    # "identity":J
    .restart local v4    # "resolvedUserId":I
    .restart local v5    # "callingUid":I
    :goto_135
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .registers 15
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "userId"    # I

    .line 1299
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1300
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "dispatchSurfaceChanged"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p5, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1302
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1304
    .local v2, "identity":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_52

    .line 1306
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5200(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v5

    .line 1308
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V

    .line 1310
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_3f

    .line 1311
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v7

    const/16 v8, 0x3e8

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v6, v7, v8, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    .line 1312
    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_3f} :catch_42
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_3f} :catch_42
    .catchall {:try_start_1b .. :try_end_3f} :catchall_40

    .line 1316
    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3f
    goto :goto_4a

    .line 1317
    :catchall_40
    move-exception v5

    goto :goto_50

    .line 1314
    :catch_42
    move-exception v5

    .line 1315
    .local v5, "e":Ljava/lang/Exception;
    :try_start_43
    const-string v6, "TvInputManagerService"

    const-string v7, "error in dispatchSurfaceChanged"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1317
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4a
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_40

    .line 1319
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1320
    nop

    .line 1321
    return-void

    .line 1317
    :goto_50
    :try_start_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_40

    :try_start_51
    throw v5
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    .line 1319
    :catchall_52
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1999
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2000
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "TvInputManagerService"

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    .line 2002
    :cond_16
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2003
    :try_start_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Ids (Current user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2004
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2005
    const/4 v2, 0x0

    move v3, v2

    .line 2005
    .local v3, "i":I
    :goto_41
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$6000(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_61

    .line 2006
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$6000(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2007
    .local v4, "userId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2005
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 2009
    .end local v3    # "i":I
    :cond_61
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2011
    nop

    .line 2011
    .local v2, "i":I
    :goto_65
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$6000(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_40d

    .line 2012
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$6000(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2013
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 2014
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserState ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2017
    const-string v5, "inputMap: inputId -> TvInputState"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2018
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2019
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_df

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2020
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2021
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    goto :goto_b1

    .line 2022
    :cond_df
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2024
    const-string/jumbo v5, "packageSet:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2026
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_103

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2027
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    .end local v6    # "packageName":Ljava/lang/String;
    goto :goto_f3

    .line 2029
    :cond_103
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2031
    const-string v5, "clientStateMap: ITvInputClient -> ClientState"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2034
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2035
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 2036
    .local v7, "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2040
    const-string/jumbo v8, "sessionTokens:"

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2042
    # getter for: Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$3800(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_15b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    .line 2043
    .local v9, "token":Landroid/os/IBinder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2044
    .end local v9    # "token":Landroid/os/IBinder;
    goto :goto_15b

    .line 2045
    :cond_17c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2047
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clientTokens: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$6100(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2048
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$6200(Lcom/android/server/tv/TvInputManagerService$ClientState;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2050
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2051
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    .end local v7    # "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    goto/16 :goto_11a

    .line 2052
    :cond_1b5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2054
    const-string/jumbo v5, "serviceStateMap: ComponentName -> ServiceState"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2055
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2057
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1cd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_299

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2058
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2059
    .local v7, "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2063
    const-string/jumbo v8, "sessionTokens:"

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2064
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2065
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_20e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_22f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    .line 2066
    .restart local v9    # "token":Landroid/os/IBinder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2067
    .end local v9    # "token":Landroid/os/IBinder;
    goto :goto_20e

    .line 2068
    :cond_22f
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2070
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2071
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bound: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3500(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2073
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reconnecting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2076
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    .end local v7    # "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    goto/16 :goto_1cd

    .line 2077
    :cond_299
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2079
    const-string/jumbo v5, "sessionStateMap: ITvInputSession -> SessionState"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2080
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2082
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2b1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2083
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2084
    .local v7, "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2087
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inputId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2088
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "client: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2089
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "seq: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callingUid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2092
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sessionToken: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "session: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2094
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "logUri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->logUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$6300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2095
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hardwareSessionToken: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2097
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    .end local v7    # "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    goto/16 :goto_2b1

    .line 2098
    :cond_3c3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2100
    const-string v5, "callbackSet:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2101
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2102
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3d6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3ea

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/tv/ITvInputManagerCallback;

    .line 2103
    .local v6, "callback":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    .end local v6    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    goto :goto_3d6

    .line 2105
    :cond_3ea
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mainSessionToken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2011
    .end local v3    # "userId":I
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_65

    .line 2110
    .end local v2    # "i":I
    :cond_40d
    monitor-exit v1
    :try_end_40e
    .catchall {:try_start_1d .. :try_end_40e} :catchall_418

    .line 2111
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/tv/TvInputHardwareManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2112
    return-void

    .line 2110
    :catchall_418
    move-exception v2

    :try_start_419
    monitor-exit v1
    :try_end_41a
    .catchall {:try_start_419 .. :try_end_41a} :catchall_418

    throw v2
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1884
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureCaptureTvInputPermission()V

    .line 1886
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1887
    .local v0, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1888
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v5, "getAvailableTvStreamConfigList"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v3, v4, v2, p2, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v3

    .line 1891
    .local v3, "resolvedUserId":I
    :try_start_17
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager;->getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_25

    .line 1894
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1891
    return-object v4

    .line 1894
    :catchall_25
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getBlockedRatings(I)Ljava/util/List;
    .registers 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1088
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getBlockedRatings"

    .line 1087
    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1089
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1091
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_46

    .line 1092
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1093
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    .local v5, "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4500(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/tv/PersistentDataStore;->getBlockedRatings()[Landroid/media/tv/TvContentRating;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_30
    if-ge v8, v7, :cond_3e

    aget-object v9, v6, v8

    .line 1096
    .local v9, "rating":Landroid/media/tv/TvContentRating;
    invoke-virtual {v9}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    .end local v9    # "rating":Landroid/media/tv/TvContentRating;
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    .line 1098
    :cond_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_43

    .line 1101
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1098
    return-object v5

    .line 1099
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5    # "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_43
    move-exception v4

    :try_start_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v4
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 1101
    :catchall_46
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getDvbDeviceList()Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1755
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DVB_DEVICE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11f

    .line 1760
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1763
    .local v2, "identity":J
    :try_start_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1764
    .local v0, "deviceInfosFromPattern1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    new-instance v4, Ljava/io/File;

    const-string v5, "/dev"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1765
    .local v4, "devDirectory":Ljava/io/File;
    const/4 v5, 0x0

    .line 1766
    .local v5, "dvbDirectoryFound":Z
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v9, v5

    const/4 v5, 0x0

    .end local v5    # "dvbDirectoryFound":Z
    .local v9, "dvbDirectoryFound":Z
    :goto_28
    const/4 v10, 0x1

    if-ge v5, v7, :cond_60

    aget-object v11, v6, v5

    .line 1767
    .local v11, "fileName":Ljava/lang/String;
    # getter for: Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$5700()Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1768
    .local v12, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_54

    .line 1769
    invoke-virtual {v12, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1770
    .local v10, "adapterId":I
    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1771
    .local v13, "deviceId":I
    new-instance v14, Landroid/media/tv/DvbDeviceInfo;

    invoke-direct {v14, v10, v13}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    .end local v10    # "adapterId":I
    .end local v13    # "deviceId":I
    :cond_54
    const-string v10, "dvb"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5d

    .line 1774
    const/4 v9, 0x1

    .line 1766
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v12    # "matcher":Ljava/util/regex/Matcher;
    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 1777
    :cond_60
    if-nez v9, :cond_6a

    .line 1778
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5
    :try_end_66
    .catchall {:try_start_14 .. :try_end_66} :catchall_11a

    .line 1803
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1778
    return-object v5

    .line 1780
    :cond_6a
    :try_start_6a
    new-instance v5, Ljava/io/File;

    const-string v6, "/dev/dvb"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1782
    .local v5, "dvbDirectory":Ljava/io/File;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1783
    .local v6, "deviceInfosFromPattern2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    array-length v11, v7

    const/4 v12, 0x0

    :goto_7c
    if-ge v12, v11, :cond_103

    aget-object v13, v7, v12

    .line 1784
    .local v13, "fileNameInDvb":Ljava/lang/String;
    # getter for: Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$5800()Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 1785
    .local v14, "adapterMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_f0

    .line 1786
    invoke-virtual {v14, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1787
    .local v15, "adapterId":I
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/dev/dvb/"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v8

    .line 1788
    .local v1, "adapterDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    array-length v10, v8

    move-object/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "adapterDirectory":Ljava/io/File;
    .local v16, "adapterDirectory":Ljava/io/File;
    :goto_b5
    if-ge v1, v10, :cond_f0

    aget-object v17, v8, v1

    move-object/from16 v18, v17

    .line 1789
    .local v18, "fileNameInAdapter":Ljava/lang/String;
    move-object/from16 v19, v4

    # getter for: Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$5900()Ljava/util/regex/Pattern;

    move-result-object v4

    .end local v4    # "devDirectory":Ljava/io/File;
    .local v19, "devDirectory":Ljava/io/File;
    move-object/from16 v20, v5

    move-object/from16 v5, v18

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1791
    .end local v18    # "fileNameInAdapter":Ljava/lang/String;
    .local v4, "frontendMatcher":Ljava/util/regex/Matcher;
    .local v5, "fileNameInAdapter":Ljava/lang/String;
    .local v20, "dvbDirectory":Ljava/io/File;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_e5

    .line 1792
    move-object/from16 v21, v5

    move-object/from16 v22, v7

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .end local v5    # "fileNameInAdapter":Ljava/lang/String;
    .local v21, "fileNameInAdapter":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1793
    .local v7, "deviceId":I
    new-instance v5, Landroid/media/tv/DvbDeviceInfo;

    invoke-direct {v5, v15, v7}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "frontendMatcher":Ljava/util/regex/Matcher;
    .end local v7    # "deviceId":I
    .end local v21    # "fileNameInAdapter":Ljava/lang/String;
    goto :goto_e7

    .line 1788
    :cond_e5
    move-object/from16 v22, v7

    :goto_e7
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v7, v22

    goto :goto_b5

    .line 1783
    .end local v13    # "fileNameInDvb":Ljava/lang/String;
    .end local v14    # "adapterMatcher":Ljava/util/regex/Matcher;
    .end local v15    # "adapterId":I
    .end local v16    # "adapterDirectory":Ljava/io/File;
    .end local v19    # "devDirectory":Ljava/io/File;
    .end local v20    # "dvbDirectory":Ljava/io/File;
    .local v4, "devDirectory":Ljava/io/File;
    .local v5, "dvbDirectory":Ljava/io/File;
    :cond_f0
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v7

    .end local v4    # "devDirectory":Ljava/io/File;
    .end local v5    # "dvbDirectory":Ljava/io/File;
    .restart local v19    # "devDirectory":Ljava/io/File;
    .restart local v20    # "dvbDirectory":Ljava/io/File;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v7, v22

    move-object/from16 v1, p0

    const/4 v10, 0x1

    goto/16 :goto_7c

    .line 1799
    .end local v19    # "devDirectory":Ljava/io/File;
    .end local v20    # "dvbDirectory":Ljava/io/File;
    .restart local v4    # "devDirectory":Ljava/io/File;
    .restart local v5    # "dvbDirectory":Ljava/io/File;
    :cond_103
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .end local v4    # "devDirectory":Ljava/io/File;
    .end local v5    # "dvbDirectory":Ljava/io/File;
    .restart local v19    # "devDirectory":Ljava/io/File;
    .restart local v20    # "dvbDirectory":Ljava/io/File;
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_112

    .line 1800
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_116

    .line 1801
    :cond_112
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_116
    .catchall {:try_start_6a .. :try_end_116} :catchall_11a

    .line 1803
    :goto_116
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1799
    return-object v1

    .line 1803
    .end local v0    # "deviceInfosFromPattern1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    .end local v6    # "deviceInfosFromPattern2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    .end local v9    # "dvbDirectoryFound":Z
    .end local v19    # "devDirectory":Ljava/io/File;
    .end local v20    # "dvbDirectory":Ljava/io/File;
    :catchall_11a
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1757
    .end local v2    # "identity":J
    :cond_11f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DVB_DEVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHardwareList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1699
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 1701
    const/4 v0, 0x0

    return-object v0

    .line 1704
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1706
    .local v0, "identity":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_22

    .line 1708
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1706
    return-object v2

    .line 1708
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTvContentRatingSystemList(I)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTENT_RATING_SYSTEMS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_40

    .line 937
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getTvContentRatingSystemList"

    .line 937
    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 939
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 941
    .local v1, "identity":J
    :try_start_22
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_3b

    .line 942
    :try_start_29
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 943
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1500(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v5

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_38

    .line 946
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 943
    return-object v5

    .line 944
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 946
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 934
    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    :cond_40
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have permission to read content rating systems"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;
    .registers 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 865
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 866
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getTvInputInfo"

    .line 865
    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 867
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 869
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3b

    .line 870
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 871
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 872
    .local v5, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v5, :cond_2f

    const/4 v6, 0x0

    goto :goto_33

    :cond_2f
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v6

    :goto_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_38

    .line 875
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 872
    return-object v6

    .line 873
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 875
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getTvInputList(I)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 847
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getTvInputList"

    .line 846
    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 848
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 850
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_4e

    .line 851
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 852
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .local v5, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 854
    .local v7, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    .end local v7    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    goto :goto_32

    .line 856
    :cond_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_1b .. :try_end_47} :catchall_4b

    .line 859
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 856
    return-object v5

    .line 857
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5    # "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    :catchall_4b
    move-exception v4

    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v4
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 859
    :catchall_4e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getTvInputState(Ljava/lang/String;I)I
    .registers 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 915
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getTvInputState"

    .line 915
    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 917
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 919
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3b

    .line 920
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 921
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 922
    .local v5, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v5, :cond_2f

    const/4 v6, 0x0

    goto :goto_33

    :cond_2f
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$4000(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v6

    :goto_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_38

    .line 925
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 922
    return v6

    .line 923
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 925
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isParentalControlsEnabled(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 1040
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1041
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "isParentalControlsEnabled"

    .line 1040
    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1042
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1044
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_32

    .line 1045
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1046
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4500(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/tv/PersistentDataStore;->isParentalControlsEnabled()Z

    move-result v5

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2f

    .line 1049
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1046
    return v5

    .line 1047
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_2f
    move-exception v4

    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 1049
    :catchall_32
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isRatingBlocked(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1071
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1072
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "isRatingBlocked"

    .line 1071
    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1073
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1075
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_36

    .line 1076
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1077
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4500(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    .line 1078
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    .line 1077
    invoke-virtual {v5, v6}, Lcom/android/server/tv/PersistentDataStore;->isRatingBlocked(Landroid/media/tv/TvContentRating;)Z

    move-result v5

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_33

    .line 1081
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1077
    return v5

    .line 1079
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_33
    move-exception v4

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 1081
    :catchall_36
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSingleSessionActive(I)Z
    .registers 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1935
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureCaptureTvInputPermission()V

    .line 1936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1937
    .local v0, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1938
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string/jumbo v5, "isSingleSessionActive"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v3, v4, v2, p1, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v3

    .line 1941
    .local v3, "resolvedUserId":I
    :try_start_18
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_6e

    .line 1942
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 1943
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_35

    .line 1944
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_6b

    .line 1957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1944
    return v7

    .line 1945
    :cond_35
    :try_start_35
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-ne v6, v9, :cond_66

    .line 1946
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v9, v9, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-interface {v6, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1949
    .local v6, "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    aget-object v9, v6, v8

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_61

    aget-object v9, v6, v7

    .line 1950
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    if-eqz v9, :cond_66

    .line 1951
    :cond_61
    monitor-exit v4
    :try_end_62
    .catchall {:try_start_35 .. :try_end_62} :catchall_6b

    .line 1957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1951
    return v7

    .line 1954
    .end local v6    # "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_66
    :try_start_66
    monitor-exit v4
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_6b

    .line 1957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1954
    return v8

    .line 1955
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_6b
    move-exception v5

    :try_start_6c
    monitor-exit v4
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v5
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 1957
    :catchall_6e
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .registers 23
    .param p1, "info"    # Landroid/media/tv/DvbDeviceInfo;
    .param p2, "device"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1810
    move/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.DVB_DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_164

    .line 1815
    new-instance v0, Ljava/io/File;

    const-string v3, "/dev"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 1816
    .local v3, "devDirectory":Ljava/io/File;
    const/4 v0, 0x0

    .line 1817
    .local v0, "dvbDeviceFound":Z
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v7, v0

    const/4 v0, 0x0

    .end local v0    # "dvbDeviceFound":Z
    .local v7, "dvbDeviceFound":Z
    :goto_22
    if-ge v0, v5, :cond_b7

    aget-object v8, v4, v0

    .line 1818
    .local v8, "fileName":Ljava/lang/String;
    const-string v9, "dvb"

    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a6

    .line 1819
    new-instance v9, Ljava/io/File;

    const-string v10, "/dev/dvb"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1820
    .local v9, "dvbDirectory":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v12, v7

    const/4 v7, 0x0

    .end local v7    # "dvbDeviceFound":Z
    .local v12, "dvbDeviceFound":Z
    :goto_3c
    if-ge v7, v11, :cond_a0

    aget-object v13, v10, v7

    .line 1821
    .local v13, "fileNameInDvb":Ljava/lang/String;
    # getter for: Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$5800()Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 1822
    .local v14, "adapterMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_8e

    .line 1823
    new-instance v15, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/dev/dvb/"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v15

    .line 1824
    .local v2, "adapterDirectory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v15, v6

    move-object/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "adapterDirectory":Ljava/io/File;
    .local v16, "adapterDirectory":Ljava/io/File;
    :goto_6d
    if-ge v2, v15, :cond_8e

    move-object/from16 v17, v3

    aget-object v3, v6, v2

    .line 1825
    .local v3, "fileNameInAdapter":Ljava/lang/String;
    .local v17, "devDirectory":Ljava/io/File;
    move-object/from16 v18, v4

    # getter for: Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$5900()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1827
    .local v4, "frontendMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v19

    if-eqz v19, :cond_87

    .line 1828
    const/4 v2, 0x1

    .line 1829
    .end local v12    # "dvbDeviceFound":Z
    .local v2, "dvbDeviceFound":Z
    nop

    .line 1833
    move v12, v2

    goto :goto_92

    .line 1824
    .end local v2    # "dvbDeviceFound":Z
    .end local v3    # "fileNameInAdapter":Ljava/lang/String;
    .end local v4    # "frontendMatcher":Ljava/util/regex/Matcher;
    .restart local v12    # "dvbDeviceFound":Z
    :cond_87
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto :goto_6d

    .line 1833
    .end local v16    # "adapterDirectory":Ljava/io/File;
    .end local v17    # "devDirectory":Ljava/io/File;
    .local v3, "devDirectory":Ljava/io/File;
    :cond_8e
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "devDirectory":Ljava/io/File;
    .restart local v17    # "devDirectory":Ljava/io/File;
    :goto_92
    if-eqz v12, :cond_97

    .line 1834
    nop

    .line 1838
    move v7, v12

    goto :goto_aa

    .line 1820
    .end local v13    # "fileNameInDvb":Ljava/lang/String;
    .end local v14    # "adapterMatcher":Ljava/util/regex/Matcher;
    :cond_97
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v2, p0

    goto :goto_3c

    .line 1838
    .end local v9    # "dvbDirectory":Ljava/io/File;
    .end local v17    # "devDirectory":Ljava/io/File;
    .restart local v3    # "devDirectory":Ljava/io/File;
    :cond_a0
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move v7, v12

    goto :goto_aa

    .end local v12    # "dvbDeviceFound":Z
    .restart local v7    # "dvbDeviceFound":Z
    :cond_a6
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "devDirectory":Ljava/io/File;
    .restart local v17    # "devDirectory":Ljava/io/File;
    :goto_aa
    if-eqz v7, :cond_ad

    .line 1839
    goto :goto_b9

    .line 1817
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_ad
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v2, p0

    goto/16 :goto_22

    .line 1843
    .end local v17    # "devDirectory":Ljava/io/File;
    .restart local v3    # "devDirectory":Ljava/io/File;
    :cond_b7
    move-object/from16 v17, v3

    .end local v3    # "devDirectory":Ljava/io/File;
    .restart local v17    # "devDirectory":Ljava/io/File;
    :goto_b9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1846
    .local v2, "identity":J
    const/4 v0, 0x2

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_16c

    .line 1863
    :try_start_c2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_14a

    .line 1858
    :pswitch_c6
    if-eqz v7, :cond_cb

    .line 1859
    const-string v5, "/dev/dvb/adapter%d/frontend%d"

    goto :goto_cd

    :cond_cb
    const-string v5, "/dev/dvb%d.frontend%d"

    :goto_cd
    new-array v6, v0, [Ljava/lang/Object;

    .line 1860
    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    .line 1858
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1861
    .local v4, "deviceFileName":Ljava/lang/String;
    goto :goto_12f

    .line 1853
    .end local v4    # "deviceFileName":Ljava/lang/String;
    :pswitch_e9
    if-eqz v7, :cond_ee

    .line 1854
    const-string v5, "/dev/dvb/adapter%d/dvr%d"

    goto :goto_f0

    :cond_ee
    const-string v5, "/dev/dvb%d.dvr%d"

    :goto_f0
    new-array v6, v0, [Ljava/lang/Object;

    .line 1855
    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    .line 1853
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1856
    .restart local v4    # "deviceFileName":Ljava/lang/String;
    goto :goto_12f

    .line 1848
    .end local v4    # "deviceFileName":Ljava/lang/String;
    :pswitch_10c
    if-eqz v7, :cond_111

    .line 1849
    const-string v5, "/dev/dvb/adapter%d/demux%d"

    goto :goto_113

    :cond_111
    const-string v5, "/dev/dvb%d.demux%d"

    :goto_113
    new-array v6, v0, [Ljava/lang/Object;

    .line 1850
    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    .line 1848
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_12e
    .catchall {:try_start_c2 .. :try_end_12e} :catchall_15f

    .line 1851
    .restart local v4    # "deviceFileName":Ljava/lang/String;
    nop

    .line 1863
    :goto_12f
    nop

    .line 1869
    :try_start_130
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1870
    if-ne v0, v1, :cond_13a

    .line 1871
    const/high16 v0, 0x30000000

    goto :goto_13c

    .line 1872
    :cond_13a
    const/high16 v0, 0x10000000

    .line 1869
    :goto_13c
    invoke-static {v5, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_140
    .catch Ljava/io/FileNotFoundException; {:try_start_130 .. :try_end_140} :catch_144
    .catchall {:try_start_130 .. :try_end_140} :catchall_15f

    .line 1877
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1869
    return-object v0

    .line 1873
    :catch_144
    move-exception v0

    .line 1874
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v5, 0x0

    .line 1877
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1874
    return-object v5

    .line 1863
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "deviceFileName":Ljava/lang/String;
    :goto_14a
    :try_start_14a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid DVB device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15f
    .catchall {:try_start_14a .. :try_end_15f} :catchall_15f

    .line 1877
    :catchall_15f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1812
    .end local v2    # "identity":J
    .end local v7    # "dvbDeviceFound":Z
    .end local v17    # "devDirectory":Ljava/io/File;
    :cond_164
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires DVB_DEVICE permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_16c
    .packed-switch 0x0
        :pswitch_10c
        :pswitch_e9
        :pswitch_c6
    .end packed-switch
.end method

.method public registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 11
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    .line 996
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 997
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "registerCallback"

    .line 996
    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 998
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1000
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_48

    .line 1001
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1002
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_45

    .line 1004
    :try_start_29
    invoke-interface {p1}, Landroid/media/tv/ITvInputManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Lcom/android/server/tv/TvInputManagerService$BinderService$1;

    invoke-direct {v6, p0, v4, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService$1;-><init>(Lcom/android/server/tv/TvInputManagerService$BinderService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/ITvInputManagerCallback;)V

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_36} :catch_37
    .catchall {:try_start_29 .. :try_end_36} :catchall_45

    .line 1016
    goto :goto_3f

    .line 1014
    :catch_37
    move-exception v5

    .line 1015
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_38
    const-string v6, "TvInputManagerService"

    const-string v7, "client process has already died"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1017
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_45

    .line 1019
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1020
    nop

    .line 1021
    return-void

    .line 1017
    :catchall_45
    move-exception v4

    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw v4
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    .line 1019
    :catchall_48
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "userId"    # I

    .line 1499
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1500
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "relayoutOverlayView"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1502
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1504
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1506
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1507
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->relayoutOverlayView(Landroid/graphics/Rect;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1510
    goto :goto_30

    .line 1511
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1508
    :catch_28
    move-exception v5

    .line 1509
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in relayoutOverlayView"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1511
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1513
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1514
    nop

    .line 1515
    return-void

    .line 1511
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1513
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public releaseSession(Landroid/os/IBinder;I)V
    .registers 9
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1212
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1213
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "releaseSession"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1215
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1217
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_2a

    .line 1218
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)V
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5000(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V

    .line 1219
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_27

    .line 1221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1222
    nop

    .line 1223
    return-void

    .line 1219
    :catchall_27
    move-exception v5

    :try_start_28
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw v5
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 1221
    :catchall_2a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    .registers 10
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/ITvInputHardware;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1736
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 1738
    return-void

    .line 1741
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1742
    .local v0, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1743
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string/jumbo v5, "releaseTvInputHardware"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v3, v4, v2, p3, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v3

    .line 1746
    .local v3, "resolvedUserId":I
    :try_start_24
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager;->releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_32

    .line 1749
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1750
    nop

    .line 1751
    return-void

    .line 1749
    :catchall_32
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public removeBlockedRating(Ljava/lang/String;I)V
    .registers 10
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1124
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1125
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "removeBlockedRating"

    .line 1125
    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1127
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1129
    .local v1, "identity":J
    :try_start_18
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_39

    .line 1130
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1131
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4500(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    .line 1132
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    .line 1131
    invoke-virtual {v5, v6}, Lcom/android/server/tv/PersistentDataStore;->removeBlockedRating(Landroid/media/tv/TvContentRating;)V

    .line 1133
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_36

    .line 1135
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1136
    nop

    .line 1137
    return-void

    .line 1133
    :catchall_36
    move-exception v4

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 1135
    :catchall_39
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removeOverlayView(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1519
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1520
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "removeOverlayView"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1522
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1524
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1526
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1527
    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->removeOverlayView()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1530
    goto :goto_30

    .line 1531
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1528
    :catch_28
    move-exception v5

    .line 1529
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in removeOverlayView"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1531
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1533
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1534
    nop

    .line 1535
    return-void

    .line 1531
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1533
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public requestChannelBrowsable(Landroid/net/Uri;I)V
    .registers 16
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1972
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1973
    .local v0, "callingPackageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1974
    .local v1, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1975
    .local v3, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string/jumbo v6, "requestChannelBrowsable"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v3, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1978
    .local v4, "resolvedUserId":I
    :try_start_19
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.media.tv.action.CHANNEL_BROWSABLE_REQUESTED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1979
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v6}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    .line 1980
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1981
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_65

    .line 1982
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_35
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1983
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1984
    .local v9, "receiverPackageName":Ljava/lang/String;
    const-string v10, "android.media.tv.extra.CHANNEL_ID"

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    invoke-virtual {v5, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1986
    const-string v10, "android.media.tv.extra.PACKAGE_NAME"

    invoke-virtual {v5, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1987
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1988
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v10}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v5, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_64
    .catchall {:try_start_19 .. :try_end_64} :catchall_6a

    .line 1989
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v9    # "receiverPackageName":Ljava/lang/String;
    goto :goto_35

    .line 1992
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1993
    nop

    .line 1994
    return-void

    .line 1992
    :catchall_6a
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1437
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1438
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "selectTrack"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1440
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1442
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1444
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->selectTrack(ILjava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1448
    goto :goto_30

    .line 1449
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1446
    :catch_28
    move-exception v5

    .line 1447
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in selectTrack"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1449
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1451
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1452
    nop

    .line 1453
    return-void

    .line 1449
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1451
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 1458
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1459
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendAppPrivateCommand"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1461
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1463
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1465
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1466
    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1469
    goto :goto_30

    .line 1470
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1467
    :catch_28
    move-exception v5

    .line 1468
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in appPrivateCommand"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1470
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1472
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1473
    nop

    .line 1474
    return-void

    .line 1470
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1472
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 952
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.NOTIFY_TV_INPUTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_ef

    .line 958
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 961
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x98de898

    if-eq v2, v3, :cond_45

    const v3, 0x5d81b12d

    if-eq v2, v3, :cond_3b

    const v3, 0x77e569e1

    if-eq v2, v3, :cond_31

    goto :goto_4e

    :cond_31
    const-string v2, "android.media.tv.action.PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v1, 0x2

    goto :goto_4e

    :cond_3b
    const-string v2, "android.media.tv.action.PREVIEW_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v1, 0x0

    goto :goto_4e

    :cond_45
    const-string v2, "android.media.tv.action.WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v1, 0x1

    :cond_4e
    :goto_4e
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    packed-switch v1, :pswitch_data_116

    .line 981
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid TV input notifying action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :pswitch_70
    const-string v0, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8d

    .line 976
    const-string v0, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_85

    goto :goto_b2

    .line 977
    :cond_85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid watch next program ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid preview program ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 968
    :pswitch_95
    const-string v0, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a0

    goto :goto_b2

    .line 969
    :cond_a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid watch next program ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :pswitch_a8
    const-string v0, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_df

    .line 984
    :goto_b2
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 985
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "sendTvInputNotifyIntent"

    .line 984
    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 986
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 988
    .local v1, "identity":J
    :try_start_c7
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v3}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d5
    .catchall {:try_start_c7 .. :try_end_d5} :catchall_da

    .line 990
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 991
    nop

    .line 992
    return-void

    .line 990
    :catchall_da
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 964
    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    :cond_df
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid preview program ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_e7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify package name to notify."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :cond_ef
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t have permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.NOTIFY_TV_INPUTS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_95
        :pswitch_70
    .end packed-switch
.end method

.method public setCaptionEnabled(Landroid/os/IBinder;ZI)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 1417
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1418
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setCaptionEnabled"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1420
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1422
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1424
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1425
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->setCaptionEnabled(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1428
    goto :goto_30

    .line 1429
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1426
    :catch_28
    move-exception v5

    .line 1427
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in setCaptionEnabled"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1429
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1431
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1432
    nop

    .line 1433
    return-void

    .line 1429
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1431
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setMainSession(Landroid/os/IBinder;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1227
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_HDMI_CEC_ACTIVE_SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_62

    .line 1236
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1237
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setMainSession"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1239
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1241
    .local v2, "identity":J
    :try_start_23
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_5d

    .line 1242
    :try_start_2a
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5, v1}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 1243
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_3b

    .line 1244
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_5a

    .line 1262
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1244
    return-void

    .line 1249
    :cond_3b
    :try_start_3b
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v6

    .line 1250
    .local v6, "oldMainSessionToken":Landroid/os/IBinder;
    # setter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v5, p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3002(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1254
    if-eqz p1, :cond_4a

    .line 1255
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x1

    # invokes: Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V
    invoke-static {v7, p1, v8, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    .line 1257
    :cond_4a
    if-eqz v6, :cond_54

    .line 1258
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    # invokes: Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V
    invoke-static {v7, v6, v8, v9, p2}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    .line 1260
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v6    # "oldMainSessionToken":Landroid/os/IBinder;
    :cond_54
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_5a

    .line 1262
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1263
    nop

    .line 1264
    return-void

    .line 1260
    :catchall_5a
    move-exception v5

    :try_start_5b
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v5
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    .line 1262
    :catchall_5d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1230
    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    :cond_62
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have CHANGE_HDMI_CEC_ACTIVE_SOURCE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParentalControlsEnabled(ZI)V
    .registers 9
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1055
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1056
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1057
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "setParentalControlsEnabled"

    .line 1056
    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1058
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1060
    .local v1, "identity":J
    :try_start_18
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_35

    .line 1061
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1062
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4500(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/tv/PersistentDataStore;->setParentalControlsEnabled(Z)V

    .line 1063
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_32

    .line 1065
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1066
    nop

    .line 1067
    return-void

    .line 1063
    :catchall_32
    move-exception v4

    :try_start_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    .line 1065
    :catchall_35
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "userId"    # I

    .line 1268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1269
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setSurface"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1271
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1273
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_59

    .line 1275
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5200(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v5

    .line 1277
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_32

    .line 1278
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V

    goto :goto_41

    .line 1280
    :cond_32
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v7

    const/16 v8, 0x3e8

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v6, v7, v8, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    .line 1281
    invoke-interface {v6, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_41} :catch_44
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_41} :catch_44
    .catchall {:try_start_1c .. :try_end_41} :catchall_42

    .line 1285
    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :goto_41
    goto :goto_4c

    .line 1286
    :catchall_42
    move-exception v5

    goto :goto_57

    .line 1283
    :catch_44
    move-exception v5

    .line 1284
    .local v5, "e":Ljava/lang/Exception;
    :try_start_45
    const-string v6, "TvInputManagerService"

    const-string v7, "error in setSurface"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1286
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_42

    .line 1288
    if-eqz p2, :cond_52

    .line 1290
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1292
    :cond_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1293
    nop

    .line 1294
    return-void

    .line 1286
    :goto_57
    :try_start_57
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_42

    :try_start_58
    throw v5
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    .line 1288
    :catchall_59
    move-exception v4

    if-eqz p2, :cond_5f

    .line 1290
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1292
    :cond_5f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setVolume(Landroid/os/IBinder;FI)V
    .registers 15
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "volume"    # F
    .param p3, "userId"    # I

    .line 1325
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1326
    .local v0, "REMOTE_VOLUME_ON":F
    const/4 v1, 0x0

    .line 1327
    .local v1, "REMOTE_VOLUME_OFF":F
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1328
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string/jumbo v5, "setVolume"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v3, v4, v2, p3, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v3

    .line 1330
    .local v3, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1332
    .local v4, "identity":J
    :try_start_18
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_5e

    .line 1334
    :try_start_1f
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v7, p1, v2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$5200(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v7

    .line 1336
    .local v7, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    invoke-static {v8, v7}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/media/tv/ITvInputSession;->setVolume(F)V

    .line 1337
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    if-eqz v8, :cond_4b

    .line 1340
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    const/16 v10, 0x3e8

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v8, v9, v10, v3}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v8

    .line 1341
    const/4 v9, 0x0

    cmpl-float v10, p2, v9

    if-lez v10, :cond_48

    .line 1342
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    .line 1341
    :cond_48
    invoke-interface {v8, v9}, Landroid/media/tv/ITvInputSession;->setVolume(F)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_4b} :catch_4e
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1f .. :try_end_4b} :catch_4e
    .catchall {:try_start_1f .. :try_end_4b} :catchall_4c

    .line 1346
    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_4b
    goto :goto_56

    .line 1347
    :catchall_4c
    move-exception v7

    goto :goto_5c

    .line 1344
    :catch_4e
    move-exception v7

    .line 1345
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4f
    const-string v8, "TvInputManagerService"

    const-string v9, "error in setVolume"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1347
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_56
    monitor-exit v6
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_4c

    .line 1349
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1350
    nop

    .line 1351
    return-void

    .line 1347
    :goto_5c
    :try_start_5c
    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_4c

    :try_start_5d
    throw v7
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    .line 1349
    :catchall_5e
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public startRecording(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "programUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1660
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1661
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "startRecording"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1663
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1665
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1667
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->startRecording(Landroid/net/Uri;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1671
    goto :goto_30

    .line 1672
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1669
    :catch_28
    move-exception v5

    .line 1670
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in startRecording"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1672
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1674
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1675
    nop

    .line 1676
    return-void

    .line 1672
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1674
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public stopRecording(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1680
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1681
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "stopRecording"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1683
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1685
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1687
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->stopRecording()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1690
    goto :goto_30

    .line 1691
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1688
    :catch_28
    move-exception v5

    .line 1689
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in stopRecording"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1691
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1693
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1694
    nop

    .line 1695
    return-void

    .line 1691
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1693
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 1640
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1641
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftEnablePositionTracking"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1643
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1645
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1647
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1648
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftEnablePositionTracking(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1651
    goto :goto_30

    .line 1652
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1649
    :catch_28
    move-exception v5

    .line 1650
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftEnablePositionTracking"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1652
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1654
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1655
    nop

    .line 1656
    return-void

    .line 1652
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1654
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public timeShiftPause(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1560
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftPause"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1562
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1564
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1566
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->timeShiftPause()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1569
    goto :goto_30

    .line 1570
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1567
    :catch_28
    move-exception v5

    .line 1568
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftPause"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1570
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1572
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1573
    nop

    .line 1574
    return-void

    .line 1570
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1572
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "recordedProgramUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1539
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1540
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftPlay"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1542
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1544
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1546
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftPlay(Landroid/net/Uri;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1550
    goto :goto_30

    .line 1551
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1548
    :catch_28
    move-exception v5

    .line 1549
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftPlay"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1551
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1553
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1554
    nop

    .line 1555
    return-void

    .line 1551
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1553
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public timeShiftResume(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1578
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1579
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftResume"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1581
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1583
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1585
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1586
    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->timeShiftResume()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1589
    goto :goto_30

    .line 1590
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1587
    :catch_28
    move-exception v5

    .line 1588
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftResume"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1590
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1592
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1593
    nop

    .line 1594
    return-void

    .line 1590
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1592
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public timeShiftSeekTo(Landroid/os/IBinder;JI)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "timeMs"    # J
    .param p4, "userId"    # I

    .line 1598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1599
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftSeekTo"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1601
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1603
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1605
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1606
    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->timeShiftSeekTo(J)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1609
    goto :goto_30

    .line 1610
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1607
    :catch_28
    move-exception v5

    .line 1608
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftSeekTo"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1610
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1612
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1613
    nop

    .line 1614
    return-void

    .line 1610
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1612
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/media/PlaybackParams;
    .param p3, "userId"    # I

    .line 1619
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1620
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftSetPlaybackParams"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1622
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1624
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1626
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1627
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1630
    goto :goto_30

    .line 1631
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1628
    :catch_28
    move-exception v5

    .line 1629
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftSetPlaybackParams"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1631
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1633
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1634
    nop

    .line 1635
    return-void

    .line 1631
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1633
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 15
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 1355
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1356
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "tune"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1358
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1360
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_92

    .line 1362
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1364
    invoke-static {p2}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z

    move-result v5
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_29} :catch_82
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_29} :catch_82
    .catchall {:try_start_1c .. :try_end_29} :catchall_80

    if-eqz v5, :cond_30

    .line 1366
    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_80

    .line 1389
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1366
    return-void

    .line 1369
    :cond_30
    :try_start_30
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5, v1}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 1370
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1371
    .local v6, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v7
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_44} :catch_82
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_30 .. :try_end_44} :catch_82
    .catchall {:try_start_30 .. :try_end_44} :catchall_80

    if-eqz v7, :cond_4b

    .line 1372
    :try_start_46
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_80

    .line 1389
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1372
    return-void

    .line 1376
    :cond_4b
    :try_start_4b
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v7

    .line 1377
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1379
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1380
    iput-object p3, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1381
    iput-object p1, v7, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 1382
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v7}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1383
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_7f} :catch_82
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_4b .. :try_end_7f} :catch_82
    .catchall {:try_start_4b .. :try_end_7f} :catchall_80

    .line 1386
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v6    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    goto :goto_8a

    .line 1387
    :catchall_80
    move-exception v5

    goto :goto_90

    .line 1384
    :catch_82
    move-exception v5

    .line 1385
    .local v5, "e":Ljava/lang/Exception;
    :try_start_83
    const-string v6, "TvInputManagerService"

    const-string v7, "error in tune"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1387
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_8a
    monitor-exit v4
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_80

    .line 1389
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1390
    nop

    .line 1391
    return-void

    .line 1387
    :goto_90
    :try_start_90
    monitor-exit v4
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_80

    :try_start_91
    throw v5
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_92

    .line 1389
    :catchall_92
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "unblockedRating"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1396
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1397
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1398
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "unblockContent"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1400
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1402
    .local v2, "identity":J
    :try_start_18
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_3b

    .line 1404
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1405
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->unblockContent(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_2b
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1f .. :try_end_28} :catch_2b
    .catchall {:try_start_1f .. :try_end_28} :catchall_29

    .line 1408
    goto :goto_33

    .line 1409
    :catchall_29
    move-exception v5

    goto :goto_39

    .line 1406
    :catch_2b
    move-exception v5

    .line 1407
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2c
    const-string v6, "TvInputManagerService"

    const-string v7, "error in unblockContent"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1409
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_29

    .line 1411
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1412
    nop

    .line 1413
    return-void

    .line 1409
    :goto_39
    :try_start_39
    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_29

    :try_start_3a
    throw v5
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 1411
    :catchall_3b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 9
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    .line 1025
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1026
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "unregisterCallback"

    .line 1025
    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1027
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1029
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_32

    .line 1030
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1031
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1032
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_2f

    .line 1034
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1035
    nop

    .line 1036
    return-void

    .line 1032
    :catchall_2f
    move-exception v4

    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 1034
    :catchall_32
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V
    .registers 11
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;
    .param p2, "userId"    # I

    .line 880
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 881
    .local v0, "inputInfoPackageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 882
    .local v1, "callingPackageName":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 883
    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_3e

    .line 887
    :cond_1f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not allowed to change TvInputInfo for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 891
    :cond_3e
    :goto_3e
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 892
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string/jumbo v5, "updateTvInputInfo"

    .line 891
    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v2, v3, v4, p2, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 893
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 895
    .local v3, "identity":J
    :try_start_53
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_6e

    .line 896
    :try_start_5a
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v6, v2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v6

    .line 897
    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    invoke-static {v7, v6, p1}, Lcom/android/server/tv/TvInputManagerService;->access$4400(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V

    .line 898
    .end local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_6b

    .line 900
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 901
    nop

    .line 902
    return-void

    .line 898
    :catchall_6b
    move-exception v6

    :try_start_6c
    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v6
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 900
    :catchall_6e
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method
