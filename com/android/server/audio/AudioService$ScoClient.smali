.class Lcom/android/server/audio/AudioService$ScoClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mCreatorPid:I

.field private mStartcount:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 3570
    iput-object p1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3571
    iput-object p2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    .line 3572
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    .line 3573
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    .line 3574
    return-void
.end method

.method private requestScoState(II)Z
    .registers 14
    .param p1, "state"    # I
    .param p2, "scoAudioMode"    # I

    .line 3685
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In requestScoState(), state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scoAudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkScoAudioState()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)V

    .line 3688
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$ScoClient;->totalCount()I

    move-result v0

    .line 3689
    .local v0, "clientCount":I
    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 3690
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestScoState: returning with state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", scoAudioMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", clientCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    return v1

    .line 3694
    :cond_52
    const/16 v2, 0xc

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne p1, v2, :cond_20a

    .line 3697
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x2

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 3700
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$1700(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3701
    :try_start_65
    iget-object v6, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$1700(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_73

    .line 3702
    move v6, v1

    goto :goto_83

    :cond_73
    iget-object v6, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$1700(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v6

    .line 3703
    .local v6, "modeOwnerPid":I
    :goto_83
    if-eqz v6, :cond_b1

    iget v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    if-eq v6, v7, :cond_b1

    .line 3704
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: audio mode is not NORMAL and modeOwnerPid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " != creatorPid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3706
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 3707
    monitor-exit v2

    return v1

    .line 3709
    :cond_b1
    iget-object v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v7

    if-eqz v7, :cond_fb

    packed-switch v7, :pswitch_data_2cc

    .line 3762
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: failed to connect in state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 3763
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", scoAudioMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3762
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 3765
    monitor-exit v2

    return v1

    .line 3755
    :pswitch_e8
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 3756
    goto/16 :goto_1d2

    .line 3758
    :pswitch_ef
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 3759
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 3760
    goto/16 :goto_1d2

    .line 3711
    :cond_fb
    iget-object v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v7, p2}, Lcom/android/server/audio/AudioService;->access$3002(Lcom/android/server/audio/AudioService;I)I

    .line 3712
    const/4 v7, -0x1

    if-ne p2, v7, :cond_14f

    .line 3713
    iget-object v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v7, v1}, Lcom/android/server/audio/AudioService;->access$3002(Lcom/android/server/audio/AudioService;I)I

    .line 3714
    iget-object v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_14f

    .line 3715
    iget-object v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v8, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bluetooth_sco_channel_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 3717
    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3715
    invoke-static {v8, v9, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->access$3002(Lcom/android/server/audio/AudioService;I)I

    .line 3719
    iget-object v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v7

    if-gt v7, v5, :cond_14a

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-gez v5, :cond_14f

    .line 3720
    :cond_14a
    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v5, v1}, Lcom/android/server/audio/AudioService;->access$3002(Lcom/android/server/audio/AudioService;I)I

    .line 3724
    :cond_14f
    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    if-nez v5, :cond_189

    .line 3725
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_165

    .line 3726
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    goto :goto_1d2

    .line 3728
    :cond_165
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: getBluetoothHeadset failed during connection, mScoAudioMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 3729
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3728
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 3732
    monitor-exit v2

    return v1

    .line 3736
    :cond_189
    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_1b5

    .line 3737
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: no active device while connecting, mScoAudioMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 3738
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3737
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 3741
    monitor-exit v2

    return v1

    .line 3743
    :cond_1b5
    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 3744
    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v8

    .line 3743
    # invokes: Lcom/android/server/audio/AudioService;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    invoke-static {v5, v7, v8}, Lcom/android/server/audio/AudioService;->access$3500(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v5

    if-eqz v5, :cond_1d5

    .line 3745
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 3768
    .end local v6    # "modeOwnerPid":I
    :goto_1d2
    monitor-exit v2

    goto/16 :goto_2ca

    .line 3747
    .restart local v6    # "modeOwnerPid":I
    :cond_1d5
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestScoState: connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " failed, mScoAudioMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 3748
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3747
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 3751
    monitor-exit v2

    return v1

    .line 3768
    .end local v6    # "modeOwnerPid":I
    :catchall_207
    move-exception v1

    monitor-exit v2
    :try_end_209
    .catchall {:try_start_65 .. :try_end_209} :catchall_207

    throw v1

    .line 3769
    :cond_20a
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2ca

    .line 3770
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v2

    if-eq v2, v4, :cond_2bf

    if-eq v2, v3, :cond_243

    .line 3805
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestScoState: failed to disconnect in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 3806
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", scoAudioMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3805
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 3808
    return v1

    .line 3772
    :cond_243
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    if-nez v2, :cond_282

    .line 3773
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_25a

    .line 3774
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x4

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    goto :goto_2ca

    .line 3776
    :cond_25a
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestScoState: getBluetoothHeadset failed during disconnection, mScoAudioMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 3777
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3776
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 3779
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 3781
    return v1

    .line 3785
    :cond_282
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_295

    .line 3786
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 3787
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 3789
    goto :goto_2ca

    .line 3791
    :cond_295
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    .line 3792
    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v5

    .line 3791
    # invokes: Lcom/android/server/audio/AudioService;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    invoke-static {v2, v3, v5}, Lcom/android/server/audio/AudioService;->access$3600(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    if-eqz v2, :cond_2b4

    .line 3793
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x5

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    goto :goto_2ca

    .line 3795
    :cond_2b4
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 3796
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 3799
    goto :goto_2ca

    .line 3801
    :cond_2bf
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 3802
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 3803
    nop

    .line 3811
    :cond_2ca
    :goto_2ca
    return v4

    nop

    :pswitch_data_2cc
    .packed-switch 0x4
        :pswitch_ef
        :pswitch_e8
    .end packed-switch
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 3577
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 3578
    :try_start_7
    const-string v1, "AudioService"

    const-string v2, "SCO client died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3580
    .local v1, "index":I
    if-gez v1, :cond_23

    .line 3581
    const-string v2, "AudioService"

    const-string/jumbo v3, "unregistered SCO client died"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 3583
    :cond_23
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    .line 3584
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3586
    .end local v1    # "index":I
    :goto_30
    monitor-exit v0

    .line 3587
    return-void

    .line 3586
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public clearCount(Z)V
    .registers 8
    .param p1, "stopSco"    # Z

    .line 3643
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 3644
    :try_start_7
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In clearCount(), stopSco: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mStartcount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3646
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_5b

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    .line 3648
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_31
    .catch Ljava/util/NoSuchElementException; {:try_start_2c .. :try_end_31} :catch_32
    .catchall {:try_start_2c .. :try_end_31} :catchall_5b

    .line 3651
    goto :goto_50

    .line 3649
    :catch_32
    move-exception v1

    .line 3650
    .local v1, "e":Ljava/util/NoSuchElementException;
    :try_start_33
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearCount() mStartcount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " != 0 but not registered to binder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_50
    :goto_50
    iput v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    .line 3654
    if-eqz p1, :cond_59

    .line 3655
    const/16 v1, 0xa

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)Z

    .line 3658
    :cond_59
    monitor-exit v0

    .line 3659
    return-void

    .line 3658
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_33 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public decCount()V
    .registers 6

    .line 3623
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 3624
    :try_start_7
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In decCount(), mStartcount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    if-nez v1, :cond_2b

    .line 3626
    const-string v1, "AudioService"

    const-string v2, "ScoClient.decCount() already 0"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 3628
    :cond_2b
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    .line 3629
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_4b

    const/4 v2, 0x0

    if-nez v1, :cond_44

    .line 3631
    :try_start_36
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_3b
    .catch Ljava/util/NoSuchElementException; {:try_start_36 .. :try_end_3b} :catch_3c
    .catchall {:try_start_36 .. :try_end_3b} :catchall_4b

    .line 3634
    goto :goto_44

    .line 3632
    :catch_3c
    move-exception v1

    .line 3633
    .local v1, "e":Ljava/util/NoSuchElementException;
    :try_start_3d
    const-string v3, "AudioService"

    const-string v4, "decCount() going to 0 but not registered to binder"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_44
    :goto_44
    const/16 v1, 0xa

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)Z

    .line 3639
    :goto_49
    monitor-exit v0

    .line 3640
    return-void

    .line 3639
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .line 3666
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 3662
    iget v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    return v0
.end method

.method public getPid()I
    .registers 2

    .line 3670
    iget v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    return v0
.end method

.method public incCount(I)V
    .registers 8
    .param p1, "scoAudioMode"    # I

    .line 3590
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 3591
    :try_start_7
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In incCount(), mStartcount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    const/16 v1, 0xc

    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)Z

    move-result v1

    .line 3594
    .local v1, "ScoState":Z
    if-nez v1, :cond_30

    .line 3595
    const-string v2, "AudioService"

    const-string v3, "In incCount(), requestScoState failed returning"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    monitor-exit v0

    return-void

    .line 3598
    :cond_30
    iget v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_7f

    if-nez v2, :cond_59

    .line 3600
    :try_start_34
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3a} :catch_3b
    .catchall {:try_start_34 .. :try_end_3a} :catchall_7f

    .line 3604
    goto :goto_59

    .line 3601
    :catch_3b
    move-exception v2

    .line 3603
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3c
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScoClient incCount() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_59
    :goto_59
    iget v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6c

    .line 3612
    const-string v2, "AudioService"

    const-string/jumbo v4, "mStartcount is 1, calling setBluetoothScoOn(true)in system context"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->setBluetoothScoOn(Z)V

    goto :goto_7d

    .line 3615
    :cond_6c
    iget v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    if-nez v2, :cond_7d

    .line 3616
    iget v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    .line 3617
    const-string v2, "AudioService"

    const-string/jumbo v3, "mStartcount is 0, incrementing by 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    .end local v1    # "ScoState":Z
    :cond_7d
    :goto_7d
    monitor-exit v0

    .line 3620
    return-void

    .line 3619
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_3c .. :try_end_81} :catchall_7f

    throw v1
.end method

.method public totalCount()I
    .registers 6

    .line 3674
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 3675
    const/4 v1, 0x0

    .line 3676
    .local v1, "count":I
    :try_start_8
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$ScoClient;

    .line 3677
    .local v3, "mScoClient":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$ScoClient;->getCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 3678
    .end local v3    # "mScoClient":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_12

    .line 3679
    :cond_24
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In totalCount(), count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    monitor-exit v0

    return v1

    .line 3681
    .end local v1    # "count":I
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_3c

    throw v1
.end method
