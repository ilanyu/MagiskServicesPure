.class public final Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;
.super Ljava/lang/Object;
.source "IBiometricsFingerprintClientCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IHwBinder;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 133
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 152
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 391
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 393
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 395
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 396
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 397
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 399
    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 400
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 401
    nop

    .line 403
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 401
    return-object v2

    .line 403
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 316
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 318
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 320
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 321
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 322
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 326
    .local v11, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v12, v2

    .line 328
    .local v12, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v13, v2

    .line 329
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v2, v13, 0x20

    int-to-long v3, v2

    .line 330
    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 329
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 333
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 334
    nop

    .local v10, "_hidl_index_0":I
    :goto_45
    move v3, v10

    .end local v10    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v13, :cond_59

    .line 335
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 337
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 338
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 339
    nop

    .line 341
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catchall {:try_start_f .. :try_end_56} :catchall_5e

    .line 334
    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v10    # "_hidl_index_0":I
    goto :goto_45

    .line 345
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v10    # "_hidl_index_0":I
    .end local v12    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v13    # "_hidl_vec_size":I
    :cond_59
    nop

    .line 347
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 345
    return-object v11

    .line 347
    .end local v11    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_5e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final hashCode()I
    .registers 2

    .line 157
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 278
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 280
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 282
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 283
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 284
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 286
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 287
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 289
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 287
    return-object v2

    .line 289
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 297
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 301
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 302
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 303
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 305
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 306
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 308
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 306
    return-object v2

    .line 308
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 411
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 413
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 415
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 416
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 418
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 419
    nop

    .line 420
    return-void

    .line 418
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public onAcquired(JII)V
    .registers 10
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 184
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 186
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 187
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 189
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 191
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 192
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    .line 194
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 195
    nop

    .line 196
    return-void

    .line 194
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .registers 11
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    .local p5, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 202
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 204
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 205
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 206
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 208
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 210
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 211
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    .line 213
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 214
    nop

    .line 215
    return-void

    .line 213
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public onEnrollResult(JIII)V
    .registers 10
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 165
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 167
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 168
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 169
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 171
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 173
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 174
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_29

    .line 176
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 177
    nop

    .line 178
    return-void

    .line 176
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public onEnumerate(JIII)V
    .registers 11
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 258
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 260
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 261
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 262
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 264
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 266
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 267
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    .line 269
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 270
    nop

    .line 271
    return-void

    .line 269
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public onError(JII)V
    .registers 10
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 221
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 223
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 224
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 226
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 228
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 229
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    .line 231
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 232
    nop

    .line 233
    return-void

    .line 231
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public onRemoved(JIII)V
    .registers 11
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 239
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 241
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 242
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 243
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 245
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 247
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 248
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    .line 250
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 251
    nop

    .line 252
    return-void

    .line 250
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 375
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 379
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 380
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 381
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 383
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 384
    nop

    .line 385
    return-void

    .line 383
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 355
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 357
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 359
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 360
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 362
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 363
    nop

    .line 364
    return-void

    .line 362
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 143
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    .line 144
    :catch_16
    move-exception v0

    .line 147
    const-string v0, "[class or subclass of android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback]@Proxy"

    return-object v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
