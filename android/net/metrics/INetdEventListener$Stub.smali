.class public abstract Landroid/net/metrics/INetdEventListener$Stub;
.super Landroid/os/Binder;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/INetdEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.metrics.INetdEventListener"

.field static final TRANSACTION_onConnectEvent:I = 0x3

.field static final TRANSACTION_onDnsEvent:I = 0x1

.field static final TRANSACTION_onPrivateDnsValidationEvent:I = 0x2

.field static final TRANSACTION_onTcpSocketStatsEvent:I = 0x5

.field static final TRANSACTION_onWakeupEvent:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/metrics/INetdEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/metrics/INetdEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_4
    const-string v0, "android.net.metrics.INetdEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/metrics/INetdEventListener;

    if-eqz v1, :cond_14

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/net/metrics/INetdEventListener;

    return-object v1

    .line 35
    :cond_14
    new-instance v1, Landroid/net/metrics/INetdEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/metrics/INetdEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 32
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 43
    const-string v2, "android.net.metrics.INetdEventListener"

    .line 44
    .local v2, "descriptor":Ljava/lang/String;
    const v3, 0x5f4e5446

    const/4 v4, 0x1

    if-eq v0, v3, :cond_fc

    packed-switch v0, :pswitch_data_102

    .line 149
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 133
    :pswitch_14
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 137
    .local v3, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v11

    .line 139
    .local v11, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v12

    .line 141
    .local v12, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v13

    .line 143
    .local v13, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v14

    .line 144
    .local v14, "_arg4":[I
    move-object/from16 v5, p0

    move-object v6, v3

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    invoke-virtual/range {v5 .. v10}, Landroid/net/metrics/INetdEventListener$Stub;->onTcpSocketStatsEvent([I[I[I[I[I)V

    .line 145
    return v4

    .line 107
    .end local v3    # "_arg0":[I
    .end local v11    # "_arg1":[I
    .end local v12    # "_arg2":[I
    .end local v13    # "_arg3":[I
    .end local v14    # "_arg4":[I
    :pswitch_36
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 113
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 115
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 117
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 119
    .local v8, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 123
    .local v10, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 125
    .local v11, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 127
    .local v12, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 128
    .local v13, "_arg9":J
    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move-wide/from16 v25, v13

    invoke-virtual/range {v15 .. v26}, Landroid/net/metrics/INetdEventListener$Stub;->onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V

    .line 129
    return v4

    .line 89
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":[B
    .end local v9    # "_arg5":Ljava/lang/String;
    .end local v10    # "_arg6":Ljava/lang/String;
    .end local v11    # "_arg7":I
    .end local v12    # "_arg8":I
    .end local v13    # "_arg9":J
    :pswitch_7b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 93
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 95
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 97
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 101
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 102
    .local v9, "_arg5":I
    move-object/from16 v15, p0

    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    invoke-virtual/range {v15 .. v21}, Landroid/net/metrics/INetdEventListener$Stub;->onConnectEvent(IIILjava/lang/String;II)V

    .line 103
    return v4

    .line 75
    .end local v3    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    :pswitch_a8
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_bf

    move v7, v4

    goto :goto_c0

    :cond_bf
    const/4 v7, 0x0

    .line 84
    .local v7, "_arg3":Z
    :goto_c0
    move-object/from16 v15, p0

    invoke-virtual {v15, v3, v5, v6, v7}, Landroid/net/metrics/INetdEventListener$Stub;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 85
    return v4

    .line 53
    .end local v3    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    :pswitch_c6
    move-object/from16 v15, p0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 57
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 59
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 61
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 63
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 65
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 67
    .local v18, "_arg5":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 69
    .local v19, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 70
    .local v20, "_arg7":I
    move-object v8, v15

    move v9, v3

    move v10, v5

    move v11, v6

    move v12, v7

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-virtual/range {v8 .. v16}, Landroid/net/metrics/INetdEventListener$Stub;->onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V

    .line 71
    return v4

    .line 48
    .end local v3    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":[Ljava/lang/String;
    .end local v19    # "_arg6":I
    .end local v20    # "_arg7":I
    :cond_fc
    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v4

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_c6
        :pswitch_a8
        :pswitch_7b
        :pswitch_36
        :pswitch_14
    .end packed-switch
.end method
