.class Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
.super Ljava/lang/Object;
.source "KeepaliveTracker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/KeepaliveTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeepaliveInfo"
.end annotation


# instance fields
.field public isStarted:Z

.field private final mBinder:Landroid/os/IBinder;

.field private final mInterval:I

.field private final mMessenger:Landroid/os/Messenger;

.field private final mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private final mPacket:Landroid/net/KeepalivePacketData;

.field private final mPid:I

.field private mSlot:I

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/connectivity/KeepaliveTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/KeepaliveTracker;Landroid/os/Messenger;Landroid/os/IBinder;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/KeepalivePacketData;I)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/connectivity/KeepaliveTracker;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p5, "packet"    # Landroid/net/KeepalivePacketData;
    .param p6, "interval"    # I

    .line 102
    iput-object p1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    .line 103
    iput-object p2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mMessenger:Landroid/os/Messenger;

    .line 104
    iput-object p3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mBinder:Landroid/os/IBinder;

    .line 105
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPid:I

    .line 106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    .line 108
    iput-object p4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 109
    iput-object p5, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    .line 110
    iput p6, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    .line 113
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_25

    .line 116
    goto :goto_29

    .line 114
    :catch_25
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->binderDied()V

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 82
    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isValid()I

    move-result v0

    return v0
.end method

.method private checkInterval()I
    .registers 3

    .line 175
    iget v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    const/4 v0, 0x0

    goto :goto_a

    :cond_8
    const/16 v0, -0x18

    :goto_a
    return v0
.end method

.method private checkNetworkConnected()I
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_d

    .line 159
    const/16 v0, -0x14

    return v0

    .line 161
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private checkSourceAddress()I
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 167
    .local v1, "address":Ljava/net/InetAddress;
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    iget-object v2, v2, Landroid/net/KeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 168
    const/4 v0, 0x0

    return v0

    .line 170
    .end local v1    # "address":Ljava/net/InetAddress;
    :cond_24
    goto :goto_c

    .line 171
    :cond_25
    const/16 v0, -0x15

    return v0
.end method

.method private isValid()I
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-enter v0

    .line 180
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkInterval()I

    move-result v1

    .line 181
    .local v1, "error":I
    if-nez v1, :cond_e

    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkNetworkConnected()I

    move-result v2

    move v1, v2

    .line 182
    :cond_e
    if-nez v1, :cond_15

    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkSourceAddress()I

    move-result v2

    move v1, v2

    .line 183
    :cond_15
    monitor-exit v0

    return v1

    .line 184
    .end local v1    # "error":I
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    # getter for: Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/connectivity/KeepaliveTracker;->access$000(Lcom/android/server/connectivity/KeepaliveTracker;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const v3, 0x8100c

    const/16 v4, -0xa

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 149
    return-void
.end method

.method public getNai()Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method notifyMessenger(II)V
    .registers 5
    .param p1, "slot"    # I
    .param p2, "err"    # I

    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyMessenger(Landroid/os/Messenger;II)V

    .line 141
    return-void
.end method

.method start(I)V
    .registers 7
    .param p1, "slot"    # I

    .line 188
    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isValid()I

    move-result v0

    .line 189
    .local v0, "error":I
    if-nez v0, :cond_3d

    .line 190
    iput p1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    .line 191
    const-string v1, "KeepaliveTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting keepalive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x8100b

    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    iget-object v4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 197
    return-void

    .line 194
    :cond_3d
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->notifyMessenger(II)V

    .line 195
    return-void
.end method

.method stop(I)V
    .registers 6
    .param p1, "reason"    # I

    .line 200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 201
    .local v0, "uid":I
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    if-eq v0, v1, :cond_8

    .line 206
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    if-eqz v1, :cond_3e

    .line 207
    const-string v1, "KeepaliveTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping keepalive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x8100c

    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 212
    :cond_3e
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->notifyMessenger(II)V

    .line 213
    invoke-virtual {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->unlinkDeathRecipient()V

    .line 214
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "KeepaliveInfo ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " network="

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " isStarted="

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " "

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    iget-object v1, v1, Landroid/net/KeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    iget v2, v2, Landroid/net/KeepalivePacketData;->srcPort:I

    .line 128
    invoke-static {v1, v2}, Landroid/net/util/IpUtils;->addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "->"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    iget-object v1, v1, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    iget v2, v2, Landroid/net/KeepalivePacketData;->dstPort:I

    .line 130
    invoke-static {v1, v2}, Landroid/net/util/IpUtils;->addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " packetData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    .line 132
    invoke-virtual {v2}, Landroid/net/KeepalivePacketData;->getPacket()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " uid="

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " ]"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    return-object v0
.end method

.method unlinkDeathRecipient()V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_a

    .line 153
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 155
    :cond_a
    return-void
.end method
