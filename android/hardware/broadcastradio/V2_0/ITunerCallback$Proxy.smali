.class public final Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;
.super Ljava/lang/Object;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/broadcastradio/V2_0/ITunerCallback;
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

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 146
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 165
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

    .line 372
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 373
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 375
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 377
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 378
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 379
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 381
    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 382
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 383
    nop

    .line 385
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 383
    return-object v2

    .line 385
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

    .line 297
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 298
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 302
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 303
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 304
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 308
    .local v11, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v12, v2

    .line 310
    .local v12, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v13, v2

    .line 311
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v2, v13, 0x20

    int-to-long v3, v2

    .line 312
    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 311
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 315
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 316
    nop

    .local v10, "_hidl_index_0":I
    :goto_45
    move v3, v10

    .end local v10    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v13, :cond_59

    .line 317
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 319
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 320
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 321
    nop

    .line 323
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catchall {:try_start_f .. :try_end_56} :catchall_5e

    .line 316
    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v10    # "_hidl_index_0":I
    goto :goto_45

    .line 327
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v10    # "_hidl_index_0":I
    .end local v12    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v13    # "_hidl_vec_size":I
    :cond_59
    nop

    .line 329
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 327
    return-object v11

    .line 329
    .end local v11    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_5e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final hashCode()I
    .registers 2

    .line 170
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 259
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 260
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 264
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 265
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 266
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 268
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 269
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 271
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 269
    return-object v2

    .line 271
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

    .line 278
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 279
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 281
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 283
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 284
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 285
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 287
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 288
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 290
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 288
    return-object v2

    .line 290
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

    .line 351
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 392
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 393
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 397
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 398
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 400
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 401
    nop

    .line 402
    return-void

    .line 400
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public onAntennaStateChange(Z)V
    .registers 7
    .param p1, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 227
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 230
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 232
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 233
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    .line 235
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 236
    nop

    .line 237
    return-void

    .line 235
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/broadcastradio/V2_0/ProgramInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 195
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1, v0}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 198
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 200
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 201
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    .line 203
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 204
    nop

    .line 205
    return-void

    .line 203
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public onParametersUpdated(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    .local p1, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 243
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 244
    invoke-static {v0, p1}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 246
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 248
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 249
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    .line 251
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 252
    nop

    .line 253
    return-void

    .line 251
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public onProgramListUpdated(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .registers 7
    .param p1, "chunk"    # Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 211
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1, v0}, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->writeToParcel(Landroid/os/HwParcel;)V

    .line 214
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 216
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 217
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    .line 219
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 220
    nop

    .line 221
    return-void

    .line 219
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public onTuneFailed(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V
    .registers 7
    .param p1, "result"    # I
    .param p2, "selector"    # Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 178
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 180
    invoke-virtual {p2, v0}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->writeToParcel(Landroid/os/HwParcel;)V

    .line 182
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 184
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 185
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_23

    .line 187
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 188
    nop

    .line 189
    return-void

    .line 187
    :catchall_23
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

    .line 356
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 357
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 359
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 361
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 362
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 363
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 365
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 366
    nop

    .line 367
    return-void

    .line 365
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

    .line 336
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 337
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 341
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 342
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 344
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 345
    nop

    .line 346
    return-void

    .line 344
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 156
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    .line 157
    :catch_16
    move-exception v0

    .line 160
    const-string v0, "[class or subclass of android.hardware.broadcastradio@2.0::ITunerCallback]@Proxy"

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

    .line 407
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
