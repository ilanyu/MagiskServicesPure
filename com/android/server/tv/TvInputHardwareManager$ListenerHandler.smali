.class Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;
.super Landroid/os/Handler;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerHandler"
.end annotation


# static fields
.field private static final HARDWARE_DEVICE_ADDED:I = 0x2

.field private static final HARDWARE_DEVICE_REMOVED:I = 0x3

.field private static final HDMI_DEVICE_ADDED:I = 0x4

.field private static final HDMI_DEVICE_REMOVED:I = 0x5

.field private static final HDMI_DEVICE_UPDATED:I = 0x6

.field private static final STATE_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .registers 2

    .line 1127
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p2, "x1"    # Lcom/android/server/tv/TvInputHardwareManager$1;

    .line 1127
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9e

    .line 1179
    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9c

    .line 1165
    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1167
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1000(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1168
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->access$2200(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1169
    .local v2, "inputId":Ljava/lang/String;
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_51

    .line 1170
    if-eqz v2, :cond_47

    .line 1171
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceUpdated(Ljava/lang/String;Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_9c

    .line 1173
    :cond_47
    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Could not resolve input ID matching the device info; ignoring."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    goto :goto_9c

    .line 1169
    .end local v2    # "inputId":Ljava/lang/String;
    :catchall_51
    move-exception v2

    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v2

    .line 1160
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_54
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1161
    .restart local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 1162
    goto :goto_9c

    .line 1155
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_62
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1156
    .restart local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 1157
    goto :goto_9c

    .line 1150
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 1151
    .local v0, "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V

    .line 1152
    goto :goto_9c

    .line 1145
    .end local v0    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :pswitch_7e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 1146
    .restart local v0    # "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V

    .line 1147
    goto :goto_9c

    .line 1139
    .end local v0    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :pswitch_8c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1140
    .local v0, "inputId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1141
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onStateChanged(Ljava/lang/String;I)V

    .line 1142
    nop

    .line 1183
    .end local v0    # "inputId":Ljava/lang/String;
    .end local v1    # "state":I
    :goto_9c
    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_7e
        :pswitch_70
        :pswitch_62
        :pswitch_54
        :pswitch_1f
    .end packed-switch
.end method
