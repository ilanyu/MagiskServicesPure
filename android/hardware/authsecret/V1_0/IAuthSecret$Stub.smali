.class public abstract Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;
.super Landroid/os/HwBinder;
.source "IAuthSecret.java"

# interfaces
.implements Landroid/hardware/authsecret/V1_0/IAuthSecret;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/authsecret/V1_0/IAuthSecret;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 307
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 310
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 352
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 353
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 354
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 355
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 356
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

    .line 328
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
        0x42t
        -0x60t
        0x6dt
        -0x3et
        -0x78t
        -0xat
        0x1bt
        0x6t
        -0x70t
        0x58t
        0xft
        0x3dt
        0x37t
        -0x4dt
        0xbt
        0x66t
        0x3ct
        0x31t
        -0x29t
        0x4dt
        0x50t
        -0x45t
        0x58t
        -0x30t
        0x77t
        0x23t
        -0x7at
        -0x4bt
        0x50t
        -0x2bt
        -0x6t
        -0x55t
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

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.authsecret@1.0::IAuthSecret"

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

    .line 322
    const-string v0, "android.hardware.authsecret@1.0::IAuthSecret"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 361
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 362
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

    .line 390
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_176

    goto/16 :goto_175

    .line 553
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    move v1, v2

    nop

    .line 554
    .local v1, "_hidl_is_oneway":Z
    :cond_f
    if-eqz v1, :cond_175

    .line 555
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 556
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 557
    goto/16 :goto_175

    .line 540
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 541
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_29

    .line 542
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 543
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 544
    goto/16 :goto_175

    .line 545
    :cond_29
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->notifySyspropsChanged()V

    .line 548
    goto/16 :goto_175

    .line 524
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v2, v1

    .line 525
    .local v2, "_hidl_is_oneway":Z
    :goto_39
    if-eqz v2, :cond_43

    .line 526
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 527
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 528
    goto/16 :goto_175

    .line 529
    :cond_43
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 532
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 533
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 534
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 535
    goto/16 :goto_175

    .line 509
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_57
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5c

    goto :goto_5d

    :cond_5c
    move v2, v1

    .line 510
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5d
    if-eqz v2, :cond_67

    .line 511
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 512
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 513
    goto/16 :goto_175

    .line 514
    :cond_67
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->ping()V

    .line 517
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 518
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 519
    goto/16 :goto_175

    .line 499
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    move v1, v2

    nop

    .line 500
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7d
    if-eqz v1, :cond_175

    .line 501
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 502
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 503
    goto/16 :goto_175

    .line 486
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    move v1, v2

    nop

    .line 487
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8d
    if-eq v1, v2, :cond_97

    .line 488
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 489
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 490
    goto/16 :goto_175

    .line 491
    :cond_97
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->setHALInstrumentation()V

    .line 494
    goto/16 :goto_175

    .line 453
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_a1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a6

    goto :goto_a7

    :cond_a6
    move v2, v1

    .line 454
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a7
    if-eqz v2, :cond_b1

    .line 455
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 456
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 457
    goto/16 :goto_175

    .line 458
    :cond_b1
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 461
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 463
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 465
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 466
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 467
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 468
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 469
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_da
    if-ge v1, v4, :cond_ec

    .line 471
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 472
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 473
    nop

    .line 469
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    .line 476
    .end local v1    # "_hidl_index_0":I
    :cond_ec
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 478
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 480
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 481
    goto/16 :goto_175

    .line 437
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_f9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fe

    goto :goto_ff

    :cond_fe
    move v2, v1

    .line 438
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_ff
    if-eqz v2, :cond_109

    .line 439
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 440
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 441
    goto/16 :goto_175

    .line 442
    :cond_109
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 446
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 448
    goto :goto_175

    .line 423
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_11c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_121

    goto :goto_122

    :cond_121
    move v2, v1

    .line 424
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_122
    if-eqz v2, :cond_12b

    .line 425
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 426
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 427
    goto :goto_175

    .line 428
    :cond_12b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 431
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 432
    goto :goto_175

    .line 407
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_137
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13c

    goto :goto_13d

    :cond_13c
    move v2, v1

    .line 408
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_13d
    if-eqz v2, :cond_146

    .line 409
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 410
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 411
    goto :goto_175

    .line 412
    :cond_146
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 415
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 416
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 417
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 418
    goto :goto_175

    .line 393
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_159
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15f

    move v1, v2

    nop

    .line 394
    .local v1, "_hidl_is_oneway":Z
    :cond_15f
    if-eq v1, v2, :cond_168

    .line 395
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 396
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 397
    goto :goto_175

    .line 398
    :cond_168
    const-string v0, "android.hardware.authsecret@1.0::IAuthSecret"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 401
    .local v0, "secret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->primaryUserCredential(Ljava/util/ArrayList;)V

    .line 402
    nop

    .line 562
    .end local v0    # "secret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :cond_175
    :goto_175
    return-void

    :sswitch_data_176
    .sparse-switch
        0x1 -> :sswitch_159
        0xf43484e -> :sswitch_137
        0xf444247 -> :sswitch_11c
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

    .line 346
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 372
    const-string v0, "android.hardware.authsecret@1.0::IAuthSecret"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 373
    return-object p0

    .line 375
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

    .line 379
    invoke-virtual {p0, p1}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->registerService(Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 337
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 366
    const/4 v0, 0x1

    return v0
.end method
