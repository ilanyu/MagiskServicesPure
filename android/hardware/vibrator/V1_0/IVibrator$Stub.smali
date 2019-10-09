.class public abstract Landroid/hardware/vibrator/V1_0/IVibrator$Stub;
.super Landroid/os/HwBinder;
.source "IVibrator.java"

# interfaces
.implements Landroid/hardware/vibrator/V1_0/IVibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/V1_0/IVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 422
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 425
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 467
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 468
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 469
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 470
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 471
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

    .line 443
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
        0x6t
        -0x16t
        0x64t
        -0x34t
        0x35t
        0x65t
        0x77t
        0x7ft
        0x3bt
        0x25t
        -0x62t
        0x40t
        0xft
        -0x6t
        0x71t
        0x0t
        -0x30t
        0x7ft
        0x38t
        0x27t
        -0x53t
        -0x6dt
        0x57t
        -0x50t
        -0x3bt
        -0x2dt
        -0x3at
        0x51t
        0x38t
        0x4et
        0x55t
        0x53t
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

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.vibrator@1.0::IVibrator"

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

    .line 437
    const-string v0, "android.hardware.vibrator@1.0::IVibrator"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 456
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 476
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 477
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

    .line 505
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_21c

    sparse-switch p1, :sswitch_data_22a

    goto/16 :goto_21a

    .line 742
    :sswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12

    move v1, v2

    nop

    .line 743
    .local v1, "_hidl_is_oneway":Z
    :cond_12
    if-eqz v1, :cond_21a

    .line 744
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 745
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 746
    goto/16 :goto_21a

    .line 729
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22

    move v1, v2

    nop

    .line 730
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v1, v2, :cond_2c

    .line 731
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 732
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 733
    goto/16 :goto_21a

    .line 734
    :cond_2c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->notifySyspropsChanged()V

    .line 737
    goto/16 :goto_21a

    .line 713
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v1

    .line 714
    .local v2, "_hidl_is_oneway":Z
    :goto_3c
    if-eqz v2, :cond_46

    .line 715
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 716
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 717
    goto/16 :goto_21a

    .line 718
    :cond_46
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 721
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 722
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 723
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 724
    goto/16 :goto_21a

    .line 698
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    goto :goto_60

    :cond_5f
    move v2, v1

    .line 699
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_60
    if-eqz v2, :cond_6a

    .line 700
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 701
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 702
    goto/16 :goto_21a

    .line 703
    :cond_6a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->ping()V

    .line 706
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 707
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 708
    goto/16 :goto_21a

    .line 688
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_80

    move v1, v2

    nop

    .line 689
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_80
    if-eqz v1, :cond_21a

    .line 690
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 691
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 692
    goto/16 :goto_21a

    .line 675
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_90

    move v1, v2

    nop

    .line 676
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_90
    if-eq v1, v2, :cond_9a

    .line 677
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 678
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 679
    goto/16 :goto_21a

    .line 680
    :cond_9a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->setHALInstrumentation()V

    .line 683
    goto/16 :goto_21a

    .line 642
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_a4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    goto :goto_aa

    :cond_a9
    move v2, v1

    .line 643
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_aa
    if-eqz v2, :cond_b4

    .line 644
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 645
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 646
    goto/16 :goto_21a

    .line 647
    :cond_b4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 650
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 652
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 654
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 655
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 656
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 657
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 658
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_dd
    if-ge v1, v4, :cond_ef

    .line 660
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 661
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 662
    nop

    .line 658
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_dd

    .line 665
    .end local v1    # "_hidl_index_0":I
    :cond_ef
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 667
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 669
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 670
    goto/16 :goto_21a

    .line 626
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_fc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_101

    goto :goto_102

    :cond_101
    move v2, v1

    .line 627
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_102
    if-eqz v2, :cond_10c

    .line 628
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 629
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 630
    goto/16 :goto_21a

    .line 631
    :cond_10c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 635
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 637
    goto/16 :goto_21a

    .line 612
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_120
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_125

    goto :goto_126

    :cond_125
    move v2, v1

    .line 613
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_126
    if-eqz v2, :cond_130

    .line 614
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 615
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 616
    goto/16 :goto_21a

    .line 617
    :cond_130
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 620
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 621
    goto/16 :goto_21a

    .line 596
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_13d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_142

    goto :goto_143

    :cond_142
    move v2, v1

    .line 597
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_143
    if-eqz v2, :cond_14d

    .line 598
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 599
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 600
    goto/16 :goto_21a

    .line 601
    :cond_14d
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 604
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 605
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 607
    goto/16 :goto_21a

    .line 574
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_161
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_167

    move v1, v2

    nop

    .line 575
    .local v1, "_hidl_is_oneway":Z
    :cond_167
    if-eqz v1, :cond_171

    .line 576
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 577
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 578
    goto/16 :goto_21a

    .line 579
    :cond_171
    const-string v0, "android.hardware.vibrator@1.0::IVibrator"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 582
    .local v0, "effect":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v2

    .line 583
    .local v2, "strength":B
    new-instance v3, Landroid/hardware/vibrator/V1_0/IVibrator$Stub$1;

    invoke-direct {v3, p0, p3}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub$1;-><init>(Landroid/hardware/vibrator/V1_0/IVibrator$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->perform(IBLandroid/hardware/vibrator/V1_0/IVibrator$performCallback;)V

    .line 591
    goto/16 :goto_21a

    .line 557
    .end local v0    # "effect":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "strength":B
    :pswitch_188
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18d

    goto :goto_18e

    :cond_18d
    move v2, v1

    .line 558
    .local v2, "_hidl_is_oneway":Z
    :goto_18e
    if-eqz v2, :cond_198

    .line 559
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 560
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 561
    goto/16 :goto_21a

    .line 562
    :cond_198
    const-string v0, "android.hardware.vibrator@1.0::IVibrator"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 565
    .local v0, "amplitude":B
    invoke-virtual {p0, v0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->setAmplitude(B)I

    move-result v3

    .line 566
    .local v3, "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 567
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 568
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 569
    goto/16 :goto_21a

    .line 541
    .end local v0    # "amplitude":B
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":I
    :pswitch_1b0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b5

    goto :goto_1b6

    :cond_1b5
    move v2, v1

    .line 542
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1b6
    if-eqz v2, :cond_1bf

    .line 543
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 544
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 545
    goto :goto_21a

    .line 546
    :cond_1bf
    const-string v0, "android.hardware.vibrator@1.0::IVibrator"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->supportsAmplitudeControl()Z

    move-result v0

    .line 549
    .local v0, "_hidl_out_supports":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 550
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 551
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 552
    goto :goto_21a

    .line 525
    .end local v0    # "_hidl_out_supports":Z
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1d2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d7

    goto :goto_1d8

    :cond_1d7
    move v2, v1

    .line 526
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1d8
    if-eqz v2, :cond_1e1

    .line 527
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 528
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 529
    goto :goto_21a

    .line 530
    :cond_1e1
    const-string v0, "android.hardware.vibrator@1.0::IVibrator"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->off()I

    move-result v0

    .line 533
    .local v0, "_hidl_out_vibratorOffRet":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 534
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 535
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 536
    goto :goto_21a

    .line 508
    .end local v0    # "_hidl_out_vibratorOffRet":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1f4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f9

    goto :goto_1fa

    :cond_1f9
    move v2, v1

    .line 509
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1fa
    if-eqz v2, :cond_203

    .line 510
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 511
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 512
    goto :goto_21a

    .line 513
    :cond_203
    const-string v0, "android.hardware.vibrator@1.0::IVibrator"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 516
    .local v0, "timeoutMs":I
    invoke-virtual {p0, v0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->on(I)I

    move-result v3

    .line 517
    .local v3, "_hidl_out_vibratorOnRet":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 518
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 519
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 520
    nop

    .line 751
    .end local v0    # "timeoutMs":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_vibratorOnRet":I
    :cond_21a
    :goto_21a
    return-void

    nop

    :pswitch_data_21c
    .packed-switch 0x1
        :pswitch_1f4
        :pswitch_1d2
        :pswitch_1b0
        :pswitch_188
        :pswitch_161
    .end packed-switch

    :sswitch_data_22a
    .sparse-switch
        0xf43484e -> :sswitch_13d
        0xf444247 -> :sswitch_120
        0xf445343 -> :sswitch_fc
        0xf485348 -> :sswitch_a4
        0xf494e54 -> :sswitch_8a
        0xf4c5444 -> :sswitch_7a
        0xf504e47 -> :sswitch_5a
        0xf524546 -> :sswitch_36
        0xf535953 -> :sswitch_1c
        0xf555444 -> :sswitch_c
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 461
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 487
    const-string v0, "android.hardware.vibrator@1.0::IVibrator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 488
    return-object p0

    .line 490
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

    .line 494
    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->registerService(Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 452
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 481
    const/4 v0, 0x1

    return v0
.end method
