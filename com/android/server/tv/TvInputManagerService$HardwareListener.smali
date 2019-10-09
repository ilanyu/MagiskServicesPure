.class final Lcom/android/server/tv/TvInputManagerService$HardwareListener;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Lcom/android/server/tv/TvInputHardwareManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HardwareListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    .line 2833
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "x1"    # Lcom/android/server/tv/TvInputManagerService$1;

    .line 2833
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    return-void
.end method


# virtual methods
.method public onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 9
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    .line 2843
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2844
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 2846
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2847
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_1f

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_4b

    if-nez v4, :cond_38

    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    goto :goto_1f

    .line 2849
    .restart local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_38
    :try_start_38
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_40
    .catchall {:try_start_38 .. :try_end_3f} :catchall_4b

    .line 2852
    goto :goto_48

    .line 2850
    :catch_40
    move-exception v4

    .line 2851
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v5, "TvInputManagerService"

    const-string v6, "error in notifyHardwareAdded"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2853
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_48
    goto :goto_1f

    .line 2854
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_49
    monitor-exit v0

    .line 2855
    return-void

    .line 2854
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 9
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    .line 2859
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2860
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 2862
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2863
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_1f

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_4b

    if-nez v4, :cond_38

    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    goto :goto_1f

    .line 2865
    .restart local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_38
    :try_start_38
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_40
    .catchall {:try_start_38 .. :try_end_3f} :catchall_4b

    .line 2868
    goto :goto_48

    .line 2866
    :catch_40
    move-exception v4

    .line 2867
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v5, "TvInputManagerService"

    const-string v6, "error in notifyHardwareRemoved"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2869
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_48
    goto :goto_1f

    .line 2870
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_49
    monitor-exit v0

    .line 2871
    return-void

    .line 2870
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 9
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 2875
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2876
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 2878
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2879
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_1f

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_4b

    if-nez v4, :cond_38

    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    goto :goto_1f

    .line 2881
    .restart local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_38
    :try_start_38
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_40
    .catchall {:try_start_38 .. :try_end_3f} :catchall_4b

    .line 2884
    goto :goto_48

    .line 2882
    :catch_40
    move-exception v4

    .line 2883
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v5, "TvInputManagerService"

    const-string v6, "error in notifyHdmiDeviceAdded"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2885
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_48
    goto :goto_1f

    .line 2886
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_49
    monitor-exit v0

    .line 2887
    return-void

    .line 2886
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 9
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 2891
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2892
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 2894
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2895
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_1f

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_4b

    if-nez v4, :cond_38

    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    goto :goto_1f

    .line 2897
    .restart local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_38
    :try_start_38
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_40
    .catchall {:try_start_38 .. :try_end_3f} :catchall_4b

    .line 2900
    goto :goto_48

    .line 2898
    :catch_40
    move-exception v4

    .line 2899
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v5, "TvInputManagerService"

    const-string v6, "error in notifyHdmiDeviceRemoved"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2901
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_48
    goto :goto_1f

    .line 2902
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_49
    monitor-exit v0

    .line 2903
    return-void

    .line 2902
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public onHdmiDeviceUpdated(Ljava/lang/String;Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 8
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 2907
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2909
    :try_start_7
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_34

    .line 2920
    const/4 v1, 0x0

    goto :goto_1c

    .line 2916
    :pswitch_10
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2917
    .local v1, "state":Ljava/lang/Integer;
    goto :goto_1c

    .line 2911
    .end local v1    # "state":Ljava/lang/Integer;
    :pswitch_16
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2912
    .restart local v1    # "state":Ljava/lang/Integer;
    nop

    .line 2920
    :goto_1c
    nop

    .line 2923
    if-eqz v1, :cond_2e

    .line 2924
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v4

    # invokes: Lcom/android/server/tv/TvInputManagerService;->setStateLocked(Ljava/lang/String;II)V
    invoke-static {v2, p1, v3, v4}, Lcom/android/server/tv/TvInputManagerService;->access$7100(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V

    .line 2926
    .end local v1    # "state":Ljava/lang/Integer;
    :cond_2e
    monitor-exit v0

    .line 2927
    return-void

    .line 2926
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_30

    throw v1

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_16
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public onStateChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 2836
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2837
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    # invokes: Lcom/android/server/tv/TvInputManagerService;->setStateLocked(Ljava/lang/String;II)V
    invoke-static {v1, p1, p2, v2}, Lcom/android/server/tv/TvInputManagerService;->access$7100(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V

    .line 2838
    monitor-exit v0

    .line 2839
    return-void

    .line 2838
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method
