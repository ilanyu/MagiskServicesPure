.class Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 501
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 502
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 503
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 508
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "option":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v1

    .line 510
    .local v1, "enabled":Z
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_c8

    goto :goto_51

    :sswitch_13
    const-string v3, "hdmi_control_auto_device_off_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    const/4 v3, 0x2

    goto :goto_52

    :sswitch_1d
    const-string v3, "hdmi_control_auto_wakeup_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    move v3, v2

    goto :goto_52

    :sswitch_27
    const-string/jumbo v3, "mhl_power_charge_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    const/4 v3, 0x5

    goto :goto_52

    :sswitch_32
    const-string/jumbo v3, "mhl_input_switching_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    const/4 v3, 0x4

    goto :goto_52

    :sswitch_3d
    const-string v3, "hdmi_system_audio_control_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    const/4 v3, 0x3

    goto :goto_52

    :sswitch_47
    const-string v3, "hdmi_control_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    const/4 v3, 0x0

    goto :goto_52

    :cond_51
    :goto_51
    const/4 v3, -0x1

    :goto_52
    packed-switch v3, :pswitch_data_e2

    goto/16 :goto_c7

    .line 538
    :pswitch_57
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v2

    const/16 v3, 0x66

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1200(Z)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    goto :goto_c7

    .line 535
    :pswitch_67
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->setMhlInputChangeEnabled(Z)V

    .line 536
    goto :goto_c7

    .line 530
    :pswitch_6d
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 531
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioControlFeatureEnabled(Z)V

    goto :goto_c7

    .line 521
    :pswitch_7f
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_89
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 522
    .local v3, "type":I
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v4

    .line 523
    .local v4, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-eqz v4, :cond_a8

    .line 524
    invoke-virtual {v4, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setAutoDeviceOff(Z)V

    .line 526
    .end local v3    # "type":I
    .end local v4    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_a8
    goto :goto_89

    .line 528
    :cond_a9
    goto :goto_c7

    .line 515
    :pswitch_aa
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 516
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAutoWakeup(Z)V

    .line 518
    :cond_bb
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->setCecOption(IZ)V

    .line 519
    goto :goto_c7

    .line 512
    :pswitch_c1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->setControlEnabled(Z)V

    .line 513
    nop

    .line 541
    :cond_c7
    :goto_c7
    return-void

    :sswitch_data_c8
    .sparse-switch
        -0x77ca2448 -> :sswitch_47
        -0x58c072d3 -> :sswitch_3d
        -0x4b40ad13 -> :sswitch_32
        -0x34cb9782 -> :sswitch_27
        0x2b4f3cc8 -> :sswitch_1d
        0x610a030f -> :sswitch_13
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_aa
        :pswitch_7f
        :pswitch_6d
        :pswitch_67
        :pswitch_57
    .end packed-switch
.end method
