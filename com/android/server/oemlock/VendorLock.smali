.class Lcom/android/server/oemlock/VendorLock;
.super Lcom/android/server/oemlock/OemLock;
.source "VendorLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OemLock"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/oemlock/V1_0/IOemLock;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oemLock"    # Landroid/hardware/oemlock/V1_0/IOemLock;

    .line 52
    invoke-direct {p0}, Lcom/android/server/oemlock/OemLock;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/oemlock/VendorLock;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    .line 55
    return-void
.end method

.method static getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;
    .registers 3

    .line 43
    :try_start_0
    invoke-static {}, Landroid/hardware/oemlock/V1_0/IOemLock;->getService()Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_4} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 47
    :catch_5
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 44
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_b
    move-exception v0

    .line 45
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "OemLock"

    const-string v2, "OemLock HAL not present on device"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$isOemUnlockAllowedByCarrier$0([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .registers 6
    .param p0, "requestStatus"    # [Ljava/lang/Integer;
    .param p1, "allowedByCarrier"    # [Ljava/lang/Boolean;
    .param p2, "status"    # I
    .param p3, "allowed"    # Z

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 89
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    .line 90
    return-void
.end method

.method static synthetic lambda$isOemUnlockAllowedByDevice$1([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .registers 6
    .param p0, "requestStatus"    # [Ljava/lang/Integer;
    .param p1, "allowedByDevice"    # [Ljava/lang/Boolean;
    .param p2, "status"    # I
    .param p3, "allowed"    # Z

    .line 136
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 137
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    .line 138
    return-void
.end method

.method private toByteArrayList([B)Ljava/util/ArrayList;
    .registers 7
    .param p1, "data"    # [B

    .line 158
    if-nez p1, :cond_4

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1a

    aget-byte v3, p1, v2

    .line 163
    .local v3, "b":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 165
    :cond_1a
    return-object v0
.end method


# virtual methods
.method isOemUnlockAllowedByCarrier()Z
    .registers 6

    .line 83
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    .line 84
    .local v1, "requestStatus":[Ljava/lang/Integer;
    new-array v0, v0, [Ljava/lang/Boolean;

    .line 87
    .local v0, "allowedByCarrier":[Ljava/lang/Boolean;
    :try_start_5
    iget-object v2, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v3, Lcom/android/server/oemlock/-$$Lambda$VendorLock$Xnx-_jv8ufdo_3b8_MqM0reCecE;

    invoke-direct {v3, v1, v0}, Lcom/android/server/oemlock/-$$Lambda$VendorLock$Xnx-_jv8ufdo_3b8_MqM0reCecE;-><init>([Ljava/lang/Integer;[Ljava/lang/Boolean;)V

    invoke-interface {v2, v3}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_31

    .line 94
    nop

    .line 96
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_3e

    .line 102
    const-string v2, "OemLock"

    const-string v3, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 99
    :pswitch_22
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 105
    :goto_29
    :pswitch_29
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to get carrier OEM unlock state"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :catch_31
    move-exception v2

    .line 92
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OemLock"

    const-string v4, "Failed to get carrier state from HAL"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_29
    .end packed-switch
.end method

.method isOemUnlockAllowedByDevice()Z
    .registers 6

    .line 131
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    .line 132
    .local v1, "requestStatus":[Ljava/lang/Integer;
    new-array v0, v0, [Ljava/lang/Boolean;

    .line 135
    .local v0, "allowedByDevice":[Ljava/lang/Boolean;
    :try_start_5
    iget-object v2, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v3, Lcom/android/server/oemlock/-$$Lambda$VendorLock$dK2aBuDrikkwl1_05rVmZ3bL1zg;

    invoke-direct {v3, v1, v0}, Lcom/android/server/oemlock/-$$Lambda$VendorLock$dK2aBuDrikkwl1_05rVmZ3bL1zg;-><init>([Ljava/lang/Integer;[Ljava/lang/Boolean;)V

    invoke-interface {v2, v3}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_31

    .line 142
    nop

    .line 144
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_3e

    .line 150
    const-string v2, "OemLock"

    const-string v3, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 147
    :pswitch_22
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 153
    :goto_29
    :pswitch_29
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to get device OEM unlock state"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :catch_31
    move-exception v2

    .line 140
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OemLock"

    const-string v4, "Failed to get devie state from HAL"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_29
    .end packed-switch
.end method

.method setOemUnlockAllowedByCarrier(Z[B)V
    .registers 6
    .param p1, "allowed"    # Z
    .param p2, "signature"    # [B

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-direct {p0, p2}, Lcom/android/server/oemlock/VendorLock;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 70
    const-string v0, "OemLock"

    goto :goto_2f

    .line 66
    :pswitch_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid signature used in attempt to carrier unlock"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :pswitch_18
    const-string v0, "OemLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated carrier allows OEM lock state to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 70
    :goto_2f
    const-string v1, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :pswitch_34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to set carrier OEM unlock state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3c} :catch_3c

    .line 75
    :catch_3c
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OemLock"

    const-string v2, "Failed to set carrier state with HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_18
        :pswitch_34
        :pswitch_10
    .end packed-switch
.end method

.method setOemUnlockAllowedByDevice(Z)V
    .registers 5
    .param p1, "allowedByDevice"    # Z

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-interface {v0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByDevice(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    .line 118
    const-string v0, "OemLock"

    goto :goto_23

    .line 114
    :pswitch_c
    const-string v0, "OemLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated device allows OEM lock state to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 118
    :goto_23
    const-string v1, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :pswitch_28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to set device OEM unlock state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_30

    .line 123
    :catch_30
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OemLock"

    const-string v2, "Failed to set device state with HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_28
    .end packed-switch
.end method
