.class public final Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;
.super Ljava/lang/Object;
.source "IOffloadControl.java"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
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

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 322
    return-void
.end method


# virtual methods
.method public addDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 482
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 483
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 487
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 489
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 490
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 491
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 493
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 494
    .local v2, "_hidl_out_success":Z
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, "_hidl_out_errMsg":Ljava/lang/String;
    invoke-interface {p3, v2, v3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;->onValues(ZLjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_32

    .line 497
    .end local v2    # "_hidl_out_success":Z
    .end local v3    # "_hidl_out_errMsg":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 498
    nop

    .line 499
    return-void

    .line 497
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 326
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 341
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

    .line 640
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 641
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 643
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 645
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 646
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 647
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 649
    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 650
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 651
    nop

    .line 653
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 651
    return-object v2

    .line 653
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getForwardedStats(Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;)V
    .registers 9
    .param p1, "upstream"    # Ljava/lang/String;
    .param p2, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 416
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 419
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 421
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 422
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 423
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 425
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 426
    .local v2, "_hidl_out_rxBytes":J
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    .line 427
    .local v4, "_hidl_out_txBytes":J
    invoke-interface {p2, v2, v3, v4, v5}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;->onValues(JJ)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 429
    .end local v2    # "_hidl_out_rxBytes":J
    .end local v4    # "_hidl_out_txBytes":J
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 430
    nop

    .line 431
    return-void

    .line 429
    :catchall_2f
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

    .line 565
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 566
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 568
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 570
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 571
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 572
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 574
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 576
    .local v11, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v12, v2

    .line 578
    .local v12, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v13, v2

    .line 579
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v2, v13, 0x20

    int-to-long v3, v2

    .line 580
    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 579
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 583
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 584
    nop

    .local v10, "_hidl_index_0":I
    :goto_45
    move v3, v10

    .end local v10    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v13, :cond_59

    .line 585
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 587
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 588
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 589
    nop

    .line 591
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catchall {:try_start_f .. :try_end_56} :catchall_5e

    .line 584
    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v10    # "_hidl_index_0":I
    goto :goto_45

    .line 595
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v10    # "_hidl_index_0":I
    .end local v12    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v13    # "_hidl_vec_size":I
    :cond_59
    nop

    .line 597
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 595
    return-object v11

    .line 597
    .end local v11    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_5e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final hashCode()I
    .registers 2

    .line 346
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public initOffload(Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;)V
    .registers 8
    .param p1, "cb"    # Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;
    .param p2, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 354
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    if-nez p1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p1}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 357
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 359
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1a
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 360
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 361
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 363
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 364
    .local v2, "_hidl_out_success":Z
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "_hidl_out_errMsg":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;->onValues(ZLjava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_37

    .line 367
    .end local v2    # "_hidl_out_success":Z
    .end local v3    # "_hidl_out_errMsg":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 368
    nop

    .line 369
    return-void

    .line 367
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
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

    .line 527
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 528
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 530
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 532
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 533
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 534
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 536
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 537
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 539
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 537
    return-object v2

    .line 539
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

    .line 546
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 547
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 549
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 551
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 552
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 553
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 555
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 556
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 558
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 556
    return-object v2

    .line 558
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

    .line 619
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 660
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 661
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 663
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 665
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 666
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 668
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 669
    nop

    .line 670
    return-void

    .line 668
    :catchall_20
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

    .line 624
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 625
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 627
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 629
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 630
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 631
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 633
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 634
    nop

    .line 635
    return-void

    .line 633
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public removeDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 505
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 509
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 511
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 512
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 513
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 515
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 516
    .local v2, "_hidl_out_success":Z
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "_hidl_out_errMsg":Ljava/lang/String;
    invoke-interface {p3, v2, v3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;->onValues(ZLjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_33

    .line 519
    .end local v2    # "_hidl_out_success":Z
    .end local v3    # "_hidl_out_errMsg":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 520
    nop

    .line 521
    return-void

    .line 519
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setDataLimit(Ljava/lang/String;JLandroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;)V
    .registers 10
    .param p1, "upstream"    # Ljava/lang/String;
    .param p2, "limit"    # J
    .param p4, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 437
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0, p2, p3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 441
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 443
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 444
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 445
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 447
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 448
    .local v2, "_hidl_out_success":Z
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "_hidl_out_errMsg":Ljava/lang/String;
    invoke-interface {p4, v2, v3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;->onValues(ZLjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_32

    .line 451
    .end local v2    # "_hidl_out_success":Z
    .end local v3    # "_hidl_out_errMsg":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 452
    nop

    .line 453
    return-void

    .line 451
    :catchall_32
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

    .line 604
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 605
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 607
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 609
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 610
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 612
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 613
    nop

    .line 614
    return-void

    .line 612
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setLocalPrefixes(Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;)V
    .registers 8
    .param p2, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    .local p1, "prefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 395
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 398
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 400
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 401
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 402
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 404
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 405
    .local v2, "_hidl_out_success":Z
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, "_hidl_out_errMsg":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;->onValues(ZLjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 408
    .end local v2    # "_hidl_out_success":Z
    .end local v3    # "_hidl_out_errMsg":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 409
    nop

    .line 410
    return-void

    .line 408
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;)V
    .registers 11
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "v4Addr"    # Ljava/lang/String;
    .param p3, "v4Gw"    # Ljava/lang/String;
    .param p5, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    .local p4, "v6Gws":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 459
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 465
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 467
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 468
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 469
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 471
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 472
    .local v2, "_hidl_out_success":Z
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "_hidl_out_errMsg":Ljava/lang/String;
    invoke-interface {p5, v2, v3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;->onValues(ZLjava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_38

    .line 475
    .end local v2    # "_hidl_out_success":Z
    .end local v3    # "_hidl_out_errMsg":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 476
    nop

    .line 477
    return-void

    .line 475
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public stopOffload(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;)V
    .registers 7
    .param p1, "_hidl_cb"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;
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
    const-string v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 379
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 380
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 381
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 383
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 384
    .local v2, "_hidl_out_success":Z
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "_hidl_out_errMsg":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;->onValues(ZLjava/lang/String;)V
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_2c

    .line 387
    .end local v2    # "_hidl_out_success":Z
    .end local v3    # "_hidl_out_errMsg":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 388
    nop

    .line 389
    return-void

    .line 387
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 332
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    .line 333
    :catch_16
    move-exception v0

    .line 336
    const-string v0, "[class or subclass of android.hardware.tetheroffload.control@1.0::IOffloadControl]@Proxy"

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

    .line 675
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
