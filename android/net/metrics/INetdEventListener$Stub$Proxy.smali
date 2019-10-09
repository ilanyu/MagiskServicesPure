.class Landroid/net/metrics/INetdEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/INetdEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 159
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 166
    const-string v0, "android.net.metrics.INetdEventListener"

    return-object v0
.end method

.method public onConnectEvent(IIILjava/lang/String;II)V
    .registers 12
    .param p1, "netId"    # I
    .param p2, "error"    # I
    .param p3, "latencyMs"    # I
    .param p4, "ipAddr"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 238
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.metrics.INetdEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_28

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 249
    nop

    .line 250
    return-void

    .line 248
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .registers 13
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I
    .param p5, "hostname"    # Ljava/lang/String;
    .param p6, "ipAddresses"    # [Ljava/lang/String;
    .param p7, "ipAddressesCount"    # I
    .param p8, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 186
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.metrics.INetdEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_2d

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    nop

    .line 200
    return-void

    .line 198
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "netId"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "validated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 213
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.metrics.INetdEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_22

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    nop

    .line 223
    return-void

    .line 221
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onTcpSocketStatsEvent([I[I[I[I[I)V
    .registers 11
    .param p1, "networkIds"    # [I
    .param p2, "sentPackets"    # [I
    .param p3, "lostPackets"    # [I
    .param p4, "rttUs"    # [I
    .param p5, "sentAckDiffMs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 308
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.metrics.INetdEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 310
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 311
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 312
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 313
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 314
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_25

    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 318
    nop

    .line 319
    return-void

    .line 317
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 29
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "ethertype"    # I
    .param p4, "ipNextHeader"    # I
    .param p5, "dstHw"    # [B
    .param p6, "srcIp"    # Ljava/lang/String;
    .param p7, "dstIp"    # Ljava/lang/String;
    .param p8, "srcPort"    # I
    .param p9, "dstPort"    # I
    .param p10, "timestampNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v1, v0

    .line 270
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_5
    const-string v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 271
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_71

    .line 272
    move/from16 v3, p2

    :try_start_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_6d

    .line 273
    move/from16 v4, p3

    :try_start_16
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_69

    .line 274
    move/from16 v5, p4

    :try_start_1b
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_65

    .line 275
    move-object/from16 v6, p5

    :try_start_20
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_61

    .line 276
    move-object/from16 v7, p6

    :try_start_25
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_5d

    .line 277
    move-object/from16 v8, p7

    :try_start_2a
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_59

    .line 278
    move/from16 v9, p8

    :try_start_2f
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_55

    .line 279
    move/from16 v10, p9

    :try_start_34
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_51

    .line 280
    move-wide/from16 v11, p10

    :try_start_39
    invoke-virtual {v1, v11, v12}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4d

    .line 281
    move-object/from16 v13, p0

    :try_start_3e
    iget-object v0, v13, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v14, v1, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_4b

    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    nop

    .line 286
    return-void

    .line 284
    :catchall_4b
    move-exception v0

    goto :goto_86

    :catchall_4d
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_86

    :catchall_51
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_84

    :catchall_55
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_82

    :catchall_59
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_80

    :catchall_5d
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_7e

    :catchall_61
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_7c

    :catchall_65
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_7a

    :catchall_69
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_78

    :catchall_6d
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_76

    :catchall_71
    move-exception v0

    move-object/from16 v13, p0

    move/from16 v3, p2

    :goto_76
    move/from16 v4, p3

    :goto_78
    move/from16 v5, p4

    :goto_7a
    move-object/from16 v6, p5

    :goto_7c
    move-object/from16 v7, p6

    :goto_7e
    move-object/from16 v8, p7

    :goto_80
    move/from16 v9, p8

    :goto_82
    move/from16 v10, p9

    :goto_84
    move-wide/from16 v11, p10

    :goto_86
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
