.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 6829
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 6829
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 6832
    move-object/from16 v3, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 6837
    .local v4, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v0, :cond_4f

    .line 6838
    const-string v0, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 6841
    .local v0, "dockState":I
    packed-switch v0, :pswitch_data_2c2

    .line 6856
    goto :goto_28

    .line 6852
    :pswitch_1e
    const/16 v5, 0x9

    .line 6853
    .local v5, "config":I
    goto :goto_28

    .line 6849
    .end local v5    # "config":I
    :pswitch_21
    const/16 v5, 0x8

    .line 6850
    .restart local v5    # "config":I
    goto :goto_28

    .line 6846
    .end local v5    # "config":I
    :pswitch_24
    const/4 v5, 0x6

    .line 6847
    .restart local v5    # "config":I
    goto :goto_28

    .line 6843
    .end local v5    # "config":I
    :pswitch_26
    const/4 v5, 0x7

    .line 6844
    .restart local v5    # "config":I
    nop

    .line 6856
    :goto_28
    nop

    .line 6860
    if-eq v0, v6, :cond_48

    if-nez v0, :cond_35

    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6862
    # getter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$10000(Lcom/android/server/audio/AudioService;)I

    move-result v7

    if-eq v7, v6, :cond_48

    .line 6863
    :cond_35
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$10100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;

    move-result-object v7

    new-instance v8, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string v9, "ACTION_DOCK_EVENT intent"

    invoke-direct {v8, v6, v5, v9}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 6865
    invoke-static {v6, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6867
    :cond_48
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v6, v0}, Lcom/android/server/audio/AudioService;->access$10002(Lcom/android/server/audio/AudioService;I)I

    .line 6868
    .end local v0    # "dockState":I
    .end local v5    # "config":I
    goto/16 :goto_2c0

    :cond_4f
    const-string v0, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 6869
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 6870
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In onReceive(), calling setBtScoActiveDevice() with btDevice: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6872
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v5, v0}, Lcom/android/server/audio/AudioService;->access$4100(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V

    .line 6873
    .end local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    goto/16 :goto_2c0

    :cond_7c
    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v7, 0xa

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eqz v0, :cond_1bf

    .line 6874
    const/4 v10, 0x0

    .line 6875
    .local v10, "broadcast":Z
    const/4 v11, -0x1

    .line 6876
    .local v11, "scoAudioState":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v12

    monitor-enter v12

    .line 6877
    :try_start_91
    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 6879
    .local v0, "btState":I
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    const/4 v13, 0x4

    if-nez v8, :cond_c6

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6880
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-eq v8, v6, :cond_c5

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6881
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-eq v8, v9, :cond_c5

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6882
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-eq v8, v13, :cond_c5

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6883
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v8

    const/4 v14, 0x5

    if-ne v8, v14, :cond_c6

    .line 6884
    :cond_c5
    const/4 v10, 0x1

    .line 6886
    :cond_c6
    const/4 v8, 0x2

    packed-switch v0, :pswitch_data_2ce

    goto/16 :goto_17b

    .line 6888
    :pswitch_cc
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v7, 0xc

    .line 6889
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 6888
    # invokes: Lcom/android/server/audio/AudioService;->checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z
    invoke-static {v5, v3, v7}, Lcom/android/server/audio/AudioService;->access$10200(Lcom/android/server/audio/AudioService;Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v5

    if-eqz v5, :cond_17d

    .line 6890
    const/4 v11, 0x1

    .line 6891
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-eq v5, v6, :cond_f0

    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6892
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-eq v5, v13, :cond_f0

    .line 6893
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5, v8}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 6895
    :cond_f0
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v5, v9}, Lcom/android/server/audio/AudioService;->setBluetoothScoOn(Z)V

    .line 6896
    const-string v5, "AudioService"

    const-string v6, "Audio-path brought-up"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17d

    .line 6921
    :pswitch_fe
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-eq v5, v6, :cond_17b

    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6922
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-eq v5, v13, :cond_17b

    .line 6923
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5, v8}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    goto :goto_17b

    .line 6900
    :pswitch_114
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6901
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 6900
    # invokes: Lcom/android/server/audio/AudioService;->checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z
    invoke-static {v8, v3, v7}, Lcom/android/server/audio/AudioService;->access$10200(Lcom/android/server/audio/AudioService;Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v7

    if-eqz v7, :cond_17d

    .line 6902
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v7, v5}, Lcom/android/server/audio/AudioService;->setBluetoothScoOn(Z)V

    .line 6903
    const/4 v11, 0x0

    .line 6905
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v7

    if-ne v7, v9, :cond_15f

    .line 6906
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v7

    if-eqz v7, :cond_15f

    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_15f

    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6907
    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6908
    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    iget-object v13, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v13

    .line 6907
    # invokes: Lcom/android/server/audio/AudioService;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    invoke-static {v7, v8, v13}, Lcom/android/server/audio/AudioService;->access$3500(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v7

    if-eqz v7, :cond_15f

    .line 6909
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 6910
    const/4 v5, 0x0

    .line 6911
    .end local v10    # "broadcast":Z
    .local v5, "broadcast":Z
    nop

    .line 6930
    move v10, v5

    goto :goto_17d

    .line 6915
    .end local v5    # "broadcast":Z
    .restart local v10    # "broadcast":Z
    :cond_15f
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-ne v8, v6, :cond_16a

    goto :goto_16b

    :cond_16a
    move v9, v5

    :goto_16b
    invoke-virtual {v7, v5, v9}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    .line 6916
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v6, v5}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 6917
    const-string v5, "AudioService"

    const-string v6, "Audio-path brought-down"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17d

    .line 6927
    :cond_17b
    :goto_17b
    const/4 v0, 0x0

    .line 6930
    .end local v10    # "broadcast":Z
    .local v0, "broadcast":Z
    move v10, v0

    .line 6930
    .end local v0    # "broadcast":Z
    .restart local v10    # "broadcast":Z
    :cond_17d
    :goto_17d
    monitor-exit v12
    :try_end_17e
    .catchall {:try_start_91 .. :try_end_17e} :catchall_1bc

    .line 6931
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In onReceive(), mScoAudioState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", broadcast: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6933
    if-eqz v10, :cond_1ba

    .line 6934
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v0, v11}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 6937
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6938
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v5, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6939
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v5, v0}, Lcom/android/server/audio/AudioService;->access$10300(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 6941
    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local v10    # "broadcast":Z
    .end local v11    # "scoAudioState":I
    :cond_1ba
    goto/16 :goto_2c0

    .line 6930
    .restart local v10    # "broadcast":Z
    .restart local v11    # "scoAudioState":I
    :catchall_1bc
    move-exception v0

    :try_start_1bd
    monitor-exit v12
    :try_end_1be
    .catchall {:try_start_1bd .. :try_end_1be} :catchall_1bc

    throw v0

    .line 6941
    .end local v10    # "broadcast":Z
    .end local v11    # "scoAudioState":I
    :cond_1bf
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 6942
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 6943
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 6945
    :cond_1d2
    const-string/jumbo v0, "screen_state=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_2c0

    .line 6946
    :cond_1da
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 6947
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1ed

    .line 6949
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 6951
    :cond_1ed
    const-string/jumbo v0, "screen_state=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_2c0

    .line 6952
    :cond_1f5
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_204

    .line 6953
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$10500(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_2c0

    .line 6954
    :cond_204
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_250

    .line 6955
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10600(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_225

    .line 6958
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v10

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6966
    :cond_225
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z
    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->access$10602(Lcom/android/server/audio/AudioService;Z)Z

    .line 6968
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10700(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 6971
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V
    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->access$10800(Lcom/android/server/audio/AudioService;Z)V

    .line 6973
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v7

    const/16 v8, 0xa

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6978
    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v12, v0, v6

    const/4 v13, 0x0

    .line 6973
    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v7 .. v13}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_2c0

    .line 6979
    :cond_250
    const-string v0, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_278

    .line 6981
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 6982
    .local v0, "userId":I
    if-ltz v0, :cond_26d

    .line 6984
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 6985
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    invoke-static {v6, v5}, Lcom/android/server/audio/AudioService;->access$10900(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 6987
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_26d
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    const-string/jumbo v6, "no_record_audio"

    invoke-virtual {v5, v6, v9, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 6989
    .end local v0    # "userId":I
    goto :goto_2c0

    :cond_278
    const-string v0, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_291

    .line 6991
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 6992
    .restart local v0    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    const-string/jumbo v7, "no_record_audio"

    invoke-virtual {v6, v7, v5, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 6994
    .end local v0    # "userId":I
    goto :goto_2c0

    :cond_291
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ab

    .line 6995
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 6996
    .local v0, "state":I
    if-eq v0, v7, :cond_2a5

    const/16 v5, 0xd

    if-ne v0, v5, :cond_2c0

    .line 6998
    :cond_2a5
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService;->disconnectAllBluetoothProfiles()V

    goto :goto_2c0

    .line 7000
    .end local v0    # "state":I
    :cond_2ab
    const-string v0, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2bb

    const-string v0, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 7001
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c0

    .line 7002
    :cond_2bb
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v2, v3}, Lcom/android/server/audio/AudioService;->access$11000(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V

    .line 7004
    :cond_2c0
    :goto_2c0
    return-void

    nop

    :pswitch_data_2c2
    .packed-switch 0x1
        :pswitch_26
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch

    :pswitch_data_2ce
    .packed-switch 0xa
        :pswitch_114
        :pswitch_fe
        :pswitch_cc
    .end packed-switch
.end method
