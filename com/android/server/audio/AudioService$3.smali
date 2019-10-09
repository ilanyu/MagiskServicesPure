.class Lcom/android/server/audio/AudioService$3;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .line 4039
    iput-object p1, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 20
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 4041
    move-object/from16 v3, p2

    const-string v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In onServiceConnected(), profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", proxy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    const/16 v0, 0xb

    const/4 v4, 0x0

    if-eq v2, v0, :cond_21c

    const/16 v0, 0x15

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v0, :cond_1be

    packed-switch v2, :pswitch_data_24e

    goto/16 :goto_24d

    .line 4047
    :pswitch_34
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v7

    monitor-enter v7

    .line 4048
    :try_start_3b
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_90

    .line 4049
    :try_start_42
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    move-object v9, v3

    check-cast v9, Landroid/bluetooth/BluetoothA2dp;

    # setter for: Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->access$3902(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 4050
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 4051
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_89

    .line 4052
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 4053
    .local v9, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v10, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v10

    move v15, v10

    .line 4054
    .local v15, "state":I
    if-ne v15, v5, :cond_6e

    goto :goto_6f

    :cond_6e
    move v6, v4

    :goto_6f
    move v5, v6

    .line 4055
    .local v5, "intState":I
    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v10, 0x80

    # invokes: Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I
    invoke-static {v6, v10, v5, v4}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;III)I

    move-result v16

    .line 4058
    .local v16, "delay":I
    iget-object v10, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v11

    const/16 v12, 0x66

    const/4 v14, -0x1

    move v13, v15

    move v4, v15

    move-object v15, v9

    .end local v15    # "state":I
    .local v4, "state":I
    # invokes: Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$400(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4065
    .end local v4    # "state":I
    .end local v5    # "intState":I
    .end local v9    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v16    # "delay":I
    :cond_89
    monitor-exit v8
    :try_end_8a
    .catchall {:try_start_42 .. :try_end_8a} :catchall_8d

    .line 4066
    :try_start_8a
    monitor-exit v7
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_90

    .line 4067
    goto/16 :goto_24d

    .line 4065
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_8d
    move-exception v0

    :try_start_8e
    monitor-exit v8
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw v0

    .line 4066
    :catchall_90
    move-exception v0

    monitor-exit v7
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_90

    throw v0

    .line 4086
    :pswitch_93
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 4088
    :try_start_9a
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v8, 0x9

    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 4089
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    move-object v8, v3

    check-cast v8, Landroid/bluetooth/BluetoothHeadset;

    # setter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->access$3302(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 4090
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v8, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothHeadset;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    # invokes: Lcom/android/server/audio/AudioService;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->access$4100(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V

    .line 4092
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkScoAudioState()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)V

    .line 4093
    const-string v0, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In HEADSET profile, mScoAudioState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mScoAudioMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    .line 4094
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4093
    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v0

    const/4 v8, 0x4

    if-eq v0, v6, :cond_fc

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    .line 4097
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-ne v0, v8, :cond_1b8

    .line 4098
    :cond_fc
    const/4 v0, 0x0

    .line 4099
    .local v0, "status":Z
    iget-object v9, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    if-eqz v9, :cond_1ac

    .line 4101
    iget-object v9, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v10, Ljava/lang/Integer;

    iget-object v11, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    .line 4102
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v11}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bluetooth_sco_channel_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    .line 4104
    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4101
    invoke-static {v11, v12, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v9, v10}, Lcom/android/server/audio/AudioService;->access$3002(Lcom/android/server/audio/AudioService;I)I

    .line 4106
    iget-object v9, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v9

    if-gt v9, v5, :cond_148

    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-gez v5, :cond_154

    .line 4107
    :cond_148
    const-string v5, "AudioService"

    const-string v9, "Resetting the mScoAudioMode to SCO_MODE_VIRTUAL_CALL"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4109
    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$3002(Lcom/android/server/audio/AudioService;I)I

    .line 4111
    :cond_154
    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-eq v5, v6, :cond_186

    if-eq v5, v8, :cond_15f

    goto :goto_1ac

    .line 4121
    :cond_15f
    const-string v5, "AudioService"

    const-string v6, "In HEADSET profile, calling disconnectBluetoothScoAudioHelper()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4122
    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    .line 4123
    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v8

    .line 4122
    # invokes: Lcom/android/server/audio/AudioService;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    invoke-static {v5, v6, v8}, Lcom/android/server/audio/AudioService;->access$3600(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v5

    move v0, v5

    .line 4124
    if-eqz v0, :cond_1ac

    .line 4125
    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x5

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    goto :goto_1ac

    .line 4113
    :cond_186
    const-string v5, "AudioService"

    const-string v6, "In HEADSET profile, calling connectBluetoothScoAudioHelper()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4114
    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    .line 4115
    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v8

    .line 4114
    # invokes: Lcom/android/server/audio/AudioService;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    invoke-static {v5, v6, v8}, Lcom/android/server/audio/AudioService;->access$3500(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v5

    move v0, v5

    .line 4116
    if-eqz v0, :cond_1ac

    .line 4117
    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x3

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 4130
    :cond_1ac
    :goto_1ac
    if-nez v0, :cond_1b8

    .line 4131
    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 4132
    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 4135
    .end local v0    # "status":Z
    :cond_1b8
    monitor-exit v7

    .line 4136
    goto/16 :goto_24d

    .line 4135
    :catchall_1bb
    move-exception v0

    monitor-exit v7
    :try_end_1bd
    .catchall {:try_start_9a .. :try_end_1bd} :catchall_1bb

    throw v0

    .line 4139
    :cond_1be
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v7

    monitor-enter v7

    .line 4140
    :try_start_1c5
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHearingAidLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_1cc
    .catchall {:try_start_1c5 .. :try_end_1cc} :catchall_219

    .line 4141
    :try_start_1cc
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    move-object v9, v3

    check-cast v9, Landroid/bluetooth/BluetoothHearingAid;

    # setter for: Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->access$4302(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    .line 4142
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHearingAid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 4143
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_213

    .line 4144
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 4145
    .restart local v9    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v10, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHearingAid;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/bluetooth/BluetoothHearingAid;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v10

    move v15, v10

    .line 4146
    .restart local v15    # "state":I
    if-ne v15, v5, :cond_1f8

    goto :goto_1f9

    :cond_1f8
    move v6, v4

    :goto_1f9
    move v5, v6

    .line 4147
    .restart local v5    # "intState":I
    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v10, 0x8000000

    # invokes: Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I
    invoke-static {v6, v10, v5, v4}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;III)I

    move-result v16

    .line 4150
    .restart local v16    # "delay":I
    iget-object v10, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v11

    const/16 v12, 0x69

    const/4 v14, 0x0

    move v13, v15

    move v4, v15

    move-object v15, v9

    .end local v15    # "state":I
    .restart local v4    # "state":I
    # invokes: Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$400(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4157
    .end local v4    # "state":I
    .end local v5    # "intState":I
    .end local v9    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v16    # "delay":I
    :cond_213
    monitor-exit v8
    :try_end_214
    .catchall {:try_start_1cc .. :try_end_214} :catchall_216

    .line 4158
    :try_start_214
    monitor-exit v7
    :try_end_215
    .catchall {:try_start_214 .. :try_end_215} :catchall_219

    .line 4160
    goto :goto_24d

    .line 4157
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_216
    move-exception v0

    :try_start_217
    monitor-exit v8
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_216

    :try_start_218
    throw v0

    .line 4158
    :catchall_219
    move-exception v0

    monitor-exit v7
    :try_end_21b
    .catchall {:try_start_218 .. :try_end_21b} :catchall_219

    throw v0

    .line 4070
    :cond_21c
    invoke-interface/range {p2 .. p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    .line 4071
    .local v5, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24d

    .line 4072
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 4073
    .local v4, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v13

    monitor-enter v13

    .line 4074
    :try_start_234
    invoke-interface {v3, v4}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    .line 4075
    .local v9, "state":I
    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v7

    const/16 v8, 0x65

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v11, v4

    # invokes: Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->access$400(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4081
    .end local v9    # "state":I
    monitor-exit v13

    goto :goto_24d

    :catchall_24a
    move-exception v0

    monitor-exit v13
    :try_end_24c
    .catchall {:try_start_234 .. :try_end_24c} :catchall_24a

    throw v0

    .line 4165
    .end local v4    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_24d
    :goto_24d
    return-void

    :pswitch_data_24e
    .packed-switch 0x1
        :pswitch_93
        :pswitch_34
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .param p1, "profile"    # I

    .line 4168
    const/16 v0, 0xb

    if-eq p1, v0, :cond_25

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1f

    packed-switch p1, :pswitch_data_2c

    goto :goto_2b

    .line 4170
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectA2dp()V

    .line 4171
    goto :goto_2b

    .line 4178
    :pswitch_12
    const-string v0, "AudioService"

    const-string v1, "In onServiceDisconnected(), calling disconnectHeadset()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectHeadset()V

    .line 4180
    goto :goto_2b

    .line 4183
    :cond_1f
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectHearingAid()V

    .line 4184
    goto :goto_2b

    .line 4174
    :cond_25
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectA2dpSink()V

    .line 4175
    nop

    .line 4189
    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method
