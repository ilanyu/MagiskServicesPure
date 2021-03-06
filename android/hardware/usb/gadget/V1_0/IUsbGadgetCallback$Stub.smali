.class public abstract Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;
.super Landroid/os/HwBinder;
.source "IUsbGadgetCallback.java"

# interfaces
.implements Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 323
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 326
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 368
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 369
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 370
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 371
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 372
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

    .line 344
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
        -0x53t
        0xat
        0x62t
        0xct
        -0x26t
        0x8t
        -0x10t
        0x1bt
        0x15t
        0x1ct
        0x30t
        -0x35t
        0x7at
        -0x6t
        0x23t
        -0x50t
        0x63t
        0x7ct
        -0x38t
        0x43t
        0x40t
        -0x31t
        -0x73t
        -0x14t
        0x0t
        -0x54t
        -0x72t
        0x32t
        -0x31t
        0x54t
        -0x58t
        -0x25t
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

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.usb.gadget@1.0::IUsbGadgetCallback"

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

    .line 338
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadgetCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 377
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 378
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

    .line 406
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_19e

    goto/16 :goto_19c

    .line 585
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    move v1, v2

    nop

    .line 586
    .local v1, "_hidl_is_oneway":Z
    :cond_f
    if-eqz v1, :cond_19c

    .line 587
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 589
    goto/16 :goto_19c

    .line 572
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 573
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_29

    .line 574
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 575
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 576
    goto/16 :goto_19c

    .line 577
    :cond_29
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->notifySyspropsChanged()V

    .line 580
    goto/16 :goto_19c

    .line 556
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v2, v1

    .line 557
    .local v2, "_hidl_is_oneway":Z
    :goto_39
    if-eqz v2, :cond_43

    .line 558
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 559
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 560
    goto/16 :goto_19c

    .line 561
    :cond_43
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 564
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 565
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 566
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 567
    goto/16 :goto_19c

    .line 541
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_57
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5c

    goto :goto_5d

    :cond_5c
    move v2, v1

    .line 542
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5d
    if-eqz v2, :cond_67

    .line 543
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 544
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 545
    goto/16 :goto_19c

    .line 546
    :cond_67
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->ping()V

    .line 549
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 550
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 551
    goto/16 :goto_19c

    .line 531
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    move v1, v2

    nop

    .line 532
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7d
    if-eqz v1, :cond_19c

    .line 533
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 534
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 535
    goto/16 :goto_19c

    .line 518
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    move v1, v2

    nop

    .line 519
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8d
    if-eq v1, v2, :cond_97

    .line 520
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 521
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 522
    goto/16 :goto_19c

    .line 523
    :cond_97
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->setHALInstrumentation()V

    .line 526
    goto/16 :goto_19c

    .line 485
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_a1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a6

    goto :goto_a7

    :cond_a6
    move v2, v1

    .line 486
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a7
    if-eqz v2, :cond_b1

    .line 487
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 488
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 489
    goto/16 :goto_19c

    .line 490
    :cond_b1
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 493
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 495
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 497
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 498
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 499
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 500
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 501
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_da
    if-ge v1, v4, :cond_ec

    .line 503
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 504
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 505
    nop

    .line 501
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    .line 508
    .end local v1    # "_hidl_index_0":I
    :cond_ec
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 510
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 512
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 513
    goto/16 :goto_19c

    .line 469
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_f9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fe

    goto :goto_ff

    :cond_fe
    move v2, v1

    .line 470
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_ff
    if-eqz v2, :cond_109

    .line 471
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 472
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 473
    goto/16 :goto_19c

    .line 474
    :cond_109
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 478
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 480
    goto/16 :goto_19c

    .line 455
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_11d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_122

    goto :goto_123

    :cond_122
    move v2, v1

    .line 456
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_123
    if-eqz v2, :cond_12d

    .line 457
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 458
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 459
    goto/16 :goto_19c

    .line 460
    :cond_12d
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 463
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 464
    goto/16 :goto_19c

    .line 439
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_13a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13f

    goto :goto_140

    :cond_13f
    move v2, v1

    .line 440
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_140
    if-eqz v2, :cond_149

    .line 441
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 442
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 443
    goto :goto_19c

    .line 444
    :cond_149
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 447
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 448
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 449
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 450
    goto :goto_19c

    .line 424
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_15c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_162

    move v1, v2

    nop

    .line 425
    .local v1, "_hidl_is_oneway":Z
    :cond_162
    if-eq v1, v2, :cond_16b

    .line 426
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 427
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 428
    goto :goto_19c

    .line 429
    :cond_16b
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadgetCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 432
    .local v2, "functions":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 433
    .local v0, "status":I
    invoke-virtual {p0, v2, v3, v0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->getCurrentUsbFunctionsCb(JI)V

    .line 434
    goto :goto_19c

    .line 409
    .end local v0    # "status":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "functions":J
    :sswitch_17c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_182

    move v1, v2

    nop

    .line 410
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_182
    if-eq v1, v2, :cond_18b

    .line 411
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 412
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 413
    goto :goto_19c

    .line 414
    :cond_18b
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadgetCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 417
    .restart local v2    # "functions":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 418
    .restart local v0    # "status":I
    invoke-virtual {p0, v2, v3, v0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->setCurrentUsbFunctionsCb(JI)V

    .line 419
    nop

    .line 594
    .end local v0    # "status":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "functions":J
    :cond_19c
    :goto_19c
    return-void

    nop

    :sswitch_data_19e
    .sparse-switch
        0x1 -> :sswitch_17c
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

    .line 362
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 388
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadgetCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 389
    return-object p0

    .line 391
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

    .line 395
    invoke-virtual {p0, p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 353
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 382
    const/4 v0, 0x1

    return v0
.end method
