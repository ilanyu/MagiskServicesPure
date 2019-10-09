.class final Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;
.super Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiHotplugEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .registers 2

    .line 1188
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p2, "x1"    # Lcom/android/server/tv/TvInputHardwareManager$1;

    .line 1188
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    return-void
.end method


# virtual methods
.method public onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    .line 1191
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->access$1000(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1192
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2300(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->getPort()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->isConnected()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1193
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 1194
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->getPort()I

    move-result v2

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputHardwareManager;->access$2400(Lcom/android/server/tv/TvInputHardwareManager;I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v1

    .line 1195
    .local v1, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    if-nez v1, :cond_26

    .line 1196
    monitor-exit v0

    return-void

    .line 1198
    :cond_26
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->access$2500(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1199
    .local v2, "inputId":Ljava/lang/String;
    if-nez v2, :cond_3a

    .line 1200
    monitor-exit v0

    return-void

    .line 1205
    :cond_3a
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->isConnected()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_45

    .line 1206
    nop

    .line 1207
    move v3, v5

    goto :goto_46

    :cond_45
    move v3, v4

    .line 1208
    .local v3, "state":I
    :goto_46
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/tv/TvInputHardwareManager;->access$2600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4, v3, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1209
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1210
    .end local v1    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v2    # "inputId":Ljava/lang/String;
    .end local v3    # "state":I
    monitor-exit v0

    .line 1211
    return-void

    .line 1210
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_55

    throw v1
.end method
