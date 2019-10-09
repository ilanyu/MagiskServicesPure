.class abstract Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PacketRetransmittingState"
.end annotation


# instance fields
.field private mIsScreenOn:Z

.field private mMessagerTimer:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mTimeout:I

.field private mTimer:I

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .line 764
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 767
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    .line 771
    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mIsScreenOn:Z

    .line 772
    new-instance v0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;

    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;-><init>(Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;)V

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$2402(Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
    .param p1, "x1"    # Z

    .line 764
    iput-boolean p1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mIsScreenOn:Z

    return p1
.end method

.method private initScreenState()V
    .registers 3

    .line 893
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2500(Landroid/net/dhcp/DhcpClient;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 894
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mIsScreenOn:Z

    .line 895
    return-void
.end method

.method private registBroadcastReceiver()V
    .registers 4

    .line 885
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 886
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 887
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 889
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$2500(Landroid/net/dhcp/DhcpClient;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 890
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 790
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 791
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->initTimer()V

    .line 792
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->maybeInitTimeout()V

    .line 795
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->registBroadcastReceiver()V

    .line 796
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->initScreenState()V

    .line 799
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    const v1, 0x30065

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    .line 800
    return-void
.end method

.method public exit()V
    .registers 3

    .line 823
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->exit()V

    .line 825
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2500(Landroid/net/dhcp/DhcpClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 826
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    const v1, 0x30065

    # invokes: Landroid/net/dhcp/DhcpClient;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$2600(Landroid/net/dhcp/DhcpClient;I)V

    .line 829
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mKickAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2700(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 830
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 831
    return-void
.end method

.method protected initTimer()V
    .registers 2

    .line 838
    const/16 v0, 0x7d0

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    .line 840
    const/16 v0, 0xc8

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mMessagerTimer:I

    .line 841
    return-void
.end method

.method protected jitterTimer(I)I
    .registers 5
    .param p1, "baseTimer"    # I

    .line 844
    div-int/lit8 v0, p1, 0xa

    .line 845
    .local v0, "maxJitter":I
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$2900(Landroid/net/dhcp/DhcpClient;)Ljava/util/Random;

    move-result-object v1

    const/4 v2, 0x2

    mul-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 846
    .local v1, "jitter":I
    add-int v2, p1, v1

    return v2
.end method

.method protected maybeInitTimeout()V
    .registers 5

    .line 877
    iget v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    if-lez v0, :cond_15

    .line 878
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 879
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$2800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 881
    .end local v0    # "alarmTime":J
    :cond_15
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 804
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 805
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_1e

    .line 817
    const/4 v0, 0x0

    return v0

    .line 814
    :pswitch_b
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->timeout()V

    .line 815
    return v1

    .line 811
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/dhcp/DhcpPacket;

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->receivePacket(Landroid/net/dhcp/DhcpPacket;)V

    .line 812
    return v1

    .line 807
    :pswitch_17
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->sendPacket()Z

    .line 808
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->scheduleKick()V

    .line 809
    return v1

    :pswitch_data_1e
    .packed-switch 0x30065
        :pswitch_17
        :pswitch_f
        :pswitch_b
    .end packed-switch
.end method

.method protected abstract receivePacket(Landroid/net/dhcp/DhcpPacket;)V
.end method

.method protected scheduleKick()V
    .registers 9

    .line 859
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mIsScreenOn:Z

    const v1, 0x1f400

    if-eqz v0, :cond_1d

    .line 860
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    const v2, 0x30065

    iget v3, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mMessagerTimer:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/dhcp/DhcpClient;->sendMessageDelayed(IJ)V

    .line 861
    iget v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mMessagerTimer:I

    if-ge v0, v1, :cond_3f

    .line 862
    iget v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mMessagerTimer:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mMessagerTimer:I

    goto :goto_3f

    .line 864
    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 865
    .local v2, "now":J
    iget v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->jitterTimer(I)I

    move-result v0

    int-to-long v4, v0

    .line 866
    .local v4, "timeout":J
    add-long v6, v2, v4

    .line 867
    .local v6, "alarmTime":J
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mKickAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2700(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 868
    iget v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    .line 869
    iget v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    if-le v0, v1, :cond_3f

    .line 870
    iput v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    .line 874
    .end local v2    # "now":J
    .end local v4    # "timeout":J
    .end local v6    # "alarmTime":J
    :cond_3f
    :goto_3f
    return-void
.end method

.method protected abstract sendPacket()Z
.end method

.method protected timeout()V
    .registers 1

    .line 835
    return-void
.end method
