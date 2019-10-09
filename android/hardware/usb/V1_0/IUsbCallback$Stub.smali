.class public abstract Landroid/hardware/usb/V1_0/IUsbCallback$Stub;
.super Landroid/os/HwBinder;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/hardware/usb/V1_0/IUsbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_0/IUsbCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 324
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 327
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 369
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 370
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 371
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 372
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 373
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_20

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_20
    .array-data 1
        0x4bt
        -0x19t
        -0x78t
        0x1et
        0x41t
        0x1bt
        -0x5ct
        0x27t
        -0x7ct
        -0x41t
        0x5bt
        0x73t
        0x54t
        -0x3ft
        0x4at
        -0x20t
        -0x31t
        0x16t
        0x10t
        0x4t
        -0x2dt
        -0x6ct
        0x33t
        -0x56t
        -0x14t
        -0x56t
        -0x50t
        -0x2ft
        -0x62t
        -0x57t
        -0x6dt
        0x54t
    .end array-data

    :array_34
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.usb@1.0::IUsbCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 339
    const-string v0, "android.hardware.usb@1.0::IUsbCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 358
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 378
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 379
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 14
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_1a6

    goto/16 :goto_1a4

    .line 588
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    move v1, v2

    nop

    .line 589
    .local v1, "_hidl_is_oneway":Z
    :cond_f
    if-eqz v1, :cond_1a4

    .line 590
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 591
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 592
    goto/16 :goto_1a4

    .line 575
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 576
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_29

    .line 577
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 578
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 579
    goto/16 :goto_1a4

    .line 580
    :cond_29
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->notifySyspropsChanged()V

    .line 583
    goto/16 :goto_1a4

    .line 559
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v2, v1

    .line 560
    .local v2, "_hidl_is_oneway":Z
    :goto_39
    if-eqz v2, :cond_43

    .line 561
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 562
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 563
    goto/16 :goto_1a4

    .line 564
    :cond_43
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 567
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 568
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 569
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 570
    goto/16 :goto_1a4

    .line 544
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_57
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5c

    goto :goto_5d

    :cond_5c
    move v2, v1

    .line 545
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5d
    if-eqz v2, :cond_67

    .line 546
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 547
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 548
    goto/16 :goto_1a4

    .line 549
    :cond_67
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->ping()V

    .line 552
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 553
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 554
    goto/16 :goto_1a4

    .line 534
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    move v1, v2

    nop

    .line 535
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7d
    if-eqz v1, :cond_1a4

    .line 536
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 537
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 538
    goto/16 :goto_1a4

    .line 521
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    move v1, v2

    nop

    .line 522
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8d
    if-eq v1, v2, :cond_97

    .line 523
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 524
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 525
    goto/16 :goto_1a4

    .line 526
    :cond_97
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->setHALInstrumentation()V

    .line 529
    goto/16 :goto_1a4

    .line 488
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_a1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a6

    goto :goto_a7

    :cond_a6
    move v2, v1

    .line 489
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a7
    if-eqz v2, :cond_b1

    .line 490
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 491
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 492
    goto/16 :goto_1a4

    .line 493
    :cond_b1
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 496
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 498
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 500
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 501
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 502
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 503
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 504
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_da
    if-ge v1, v4, :cond_ec

    .line 506
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 507
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 508
    nop

    .line 504
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    .line 511
    .end local v1    # "_hidl_index_0":I
    :cond_ec
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 513
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 515
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 516
    goto/16 :goto_1a4

    .line 472
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_f9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fe

    goto :goto_ff

    :cond_fe
    move v2, v1

    .line 473
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_ff
    if-eqz v2, :cond_109

    .line 474
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 475
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 476
    goto/16 :goto_1a4

    .line 477
    :cond_109
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 481
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 483
    goto/16 :goto_1a4

    .line 458
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_11d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_122

    goto :goto_123

    :cond_122
    move v2, v1

    .line 459
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_123
    if-eqz v2, :cond_12d

    .line 460
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 461
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 462
    goto/16 :goto_1a4

    .line 463
    :cond_12d
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 466
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 467
    goto/16 :goto_1a4

    .line 442
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_13a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13f

    goto :goto_140

    :cond_13f
    move v2, v1

    .line 443
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_140
    if-eqz v2, :cond_149

    .line 444
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 445
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 446
    goto :goto_1a4

    .line 447
    :cond_149
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 450
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 451
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 452
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 453
    goto :goto_1a4

    .line 425
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_15c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_162

    move v1, v2

    nop

    .line 426
    .local v1, "_hidl_is_oneway":Z
    :cond_162
    if-eq v1, v2, :cond_16b

    .line 427
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 428
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 429
    goto :goto_1a4

    .line 430
    :cond_16b
    const-string v0, "android.hardware.usb@1.0::IUsbCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "portName":Ljava/lang/String;
    new-instance v2, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v2}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 434
    .local v2, "newRole":Landroid/hardware/usb/V1_0/PortRole;
    invoke-virtual {v2, p2}, Landroid/hardware/usb/V1_0/PortRole;->readFromParcel(Landroid/os/HwParcel;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 436
    .local v3, "retval":I
    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V

    .line 437
    goto :goto_1a4

    .line 410
    .end local v0    # "portName":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "newRole":Landroid/hardware/usb/V1_0/PortRole;
    .end local v3    # "retval":I
    :sswitch_184
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18a

    move v1, v2

    nop

    .line 411
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18a
    if-eq v1, v2, :cond_193

    .line 412
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 413
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 414
    goto :goto_1a4

    .line 415
    :cond_193
    const-string v0, "android.hardware.usb@1.0::IUsbCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-static {p2}, Landroid/hardware/usb/V1_0/PortStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 418
    .local v0, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_0/PortStatus;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 419
    .local v2, "retval":I
    invoke-virtual {p0, v0, v2}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->notifyPortStatusChange(Ljava/util/ArrayList;I)V

    .line 420
    nop

    .line 597
    .end local v0    # "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_0/PortStatus;>;"
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "retval":I
    :cond_1a4
    :goto_1a4
    return-void

    nop

    :sswitch_data_1a6
    .sparse-switch
        0x1 -> :sswitch_184
        0x2 -> :sswitch_15c
        0xf43484e -> :sswitch_13a
        0xf444247 -> :sswitch_11d
        0xf445343 -> :sswitch_f9
        0xf485348 -> :sswitch_a1
        0xf494e54 -> :sswitch_87
        0xf4c5444 -> :sswitch_77
        0xf504e47 -> :sswitch_57
        0xf524546 -> :sswitch_33
        0xf535953 -> :sswitch_19
        0xf555444 -> :sswitch_9
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 363
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 389
    const-string v0, "android.hardware.usb@1.0::IUsbCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 390
    return-object p0

    .line 392
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    invoke-virtual {p0, p1}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 354
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 383
    const/4 v0, 0x1

    return v0
.end method
