.class public abstract Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;
.super Landroid/os/HwBinder;
.source "IBiometricsFingerprintClientCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 429
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 432
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 474
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 475
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 476
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 477
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 478
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

    .line 450
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
        -0x56t
        -0x45t
        0x5ct
        0x3ct
        0x58t
        0x55t
        -0x6et
        -0x29t
        0x1et
        -0x1bt
        0x7bt
        0x77t
        0x29t
        -0x74t
        0x14t
        -0x67t
        0x3dt
        0x77t
        -0x6ft
        0x4dt
        -0x22t
        -0x56t
        0x64t
        -0x4et
        -0x3bt
        0x10t
        -0x66t
        0x60t
        0x2bt
        0x2t
        -0x16t
        0x47t
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

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

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

    .line 444
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 463
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 483
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 484
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 20
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 512
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_26e

    sparse-switch p1, :sswitch_data_27e

    goto/16 :goto_26d

    .line 761
    :sswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 762
    .local v1, "_hidl_is_oneway":Z
    :cond_17
    if-eqz v1, :cond_26d

    .line 763
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 765
    goto/16 :goto_26d

    .line 748
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 749
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_31

    .line 750
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 751
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 752
    goto/16 :goto_26d

    .line 753
    :cond_31
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v6}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->notifySyspropsChanged()V

    .line 756
    goto/16 :goto_26d

    .line 732
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_3b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_40

    goto :goto_41

    :cond_40
    move v2, v1

    .line 733
    .local v2, "_hidl_is_oneway":Z
    :goto_41
    if-eqz v2, :cond_4b

    .line 734
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 735
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 736
    goto/16 :goto_26d

    .line 737
    :cond_4b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v6}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 740
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 741
    invoke-virtual {v0, v8}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 743
    goto/16 :goto_26d

    .line 717
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_5f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_64

    goto :goto_65

    :cond_64
    move v2, v1

    .line 718
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_65
    if-eqz v2, :cond_6f

    .line 719
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 720
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 721
    goto/16 :goto_26d

    .line 722
    :cond_6f
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v6}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->ping()V

    .line 725
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 727
    goto/16 :goto_26d

    .line 707
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_85

    move v1, v2

    nop

    .line 708
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_85
    if-eqz v1, :cond_26d

    .line 709
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 711
    goto/16 :goto_26d

    .line 694
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_95

    move v1, v2

    nop

    .line 695
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_95
    if-eq v1, v2, :cond_9f

    .line 696
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 698
    goto/16 :goto_26d

    .line 699
    :cond_9f
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v6}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->setHALInstrumentation()V

    .line 702
    goto/16 :goto_26d

    .line 661
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_a9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ae

    goto :goto_af

    :cond_ae
    move v2, v1

    .line 662
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_af
    if-eqz v2, :cond_b9

    .line 663
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 664
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 665
    goto/16 :goto_26d

    .line 666
    :cond_b9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v6}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 669
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 671
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 673
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 674
    .local v4, "_hidl_vec_size":I
    const-wide/16 v9, 0x8

    invoke-virtual {v3, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 675
    const-wide/16 v9, 0xc

    invoke-virtual {v3, v9, v10, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 676
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v9, v4, 0x20

    invoke-direct {v5, v9}, Landroid/os/HwBlob;-><init>(I)V

    .line 677
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_e2
    if-ge v1, v4, :cond_f4

    .line 679
    mul-int/lit8 v9, v1, 0x20

    int-to-long v9, v9

    .line 680
    .local v9, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 681
    nop

    .line 677
    .end local v9    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_e2

    .line 684
    .end local v1    # "_hidl_index_0":I
    :cond_f4
    const-wide/16 v9, 0x0

    invoke-virtual {v3, v9, v10, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 686
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 688
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 689
    goto/16 :goto_26d

    .line 645
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_101
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_106

    goto :goto_107

    :cond_106
    move v2, v1

    .line 646
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_107
    if-eqz v2, :cond_111

    .line 647
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 649
    goto/16 :goto_26d

    .line 650
    :cond_111
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v6}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 654
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 656
    goto/16 :goto_26d

    .line 631
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_125
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12a

    goto :goto_12b

    :cond_12a
    move v2, v1

    .line 632
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_12b
    if-eqz v2, :cond_135

    .line 633
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 634
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 635
    goto/16 :goto_26d

    .line 636
    :cond_135
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 640
    goto/16 :goto_26d

    .line 615
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_142
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_147

    goto :goto_148

    :cond_147
    move v2, v1

    .line 616
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_148
    if-eqz v2, :cond_152

    .line 617
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 619
    goto/16 :goto_26d

    .line 620
    :cond_152
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v6}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 623
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 624
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 625
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 626
    goto/16 :goto_26d

    .line 598
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_166
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16c

    move v1, v2

    nop

    :cond_16c
    move v9, v1

    .line 599
    .local v9, "_hidl_is_oneway":Z
    if-eq v9, v2, :cond_177

    .line 600
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 601
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 602
    goto/16 :goto_26d

    .line 603
    :cond_177
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    .line 606
    .local v10, "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 607
    .local v12, "fingerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 608
    .local v13, "groupId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 609
    .local v14, "remaining":I
    move-object v0, v6

    move-wide v1, v10

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onEnumerate(JIII)V

    .line 610
    goto/16 :goto_26d

    .line 581
    .end local v9    # "_hidl_is_oneway":Z
    .end local v10    # "deviceId":J
    .end local v12    # "fingerId":I
    .end local v13    # "groupId":I
    .end local v14    # "remaining":I
    :pswitch_196
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19c

    move v1, v2

    nop

    :cond_19c
    move v9, v1

    .line 582
    .restart local v9    # "_hidl_is_oneway":Z
    if-eq v9, v2, :cond_1a7

    .line 583
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 585
    goto/16 :goto_26d

    .line 586
    :cond_1a7
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    .line 589
    .restart local v10    # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 590
    .restart local v12    # "fingerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 591
    .restart local v13    # "groupId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 592
    .restart local v14    # "remaining":I
    move-object v0, v6

    move-wide v1, v10

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onRemoved(JIII)V

    .line 593
    goto/16 :goto_26d

    .line 565
    .end local v9    # "_hidl_is_oneway":Z
    .end local v10    # "deviceId":J
    .end local v12    # "fingerId":I
    .end local v13    # "groupId":I
    .end local v14    # "remaining":I
    :pswitch_1c6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1cc

    move v1, v2

    nop

    .line 566
    .local v1, "_hidl_is_oneway":Z
    :cond_1cc
    if-eq v1, v2, :cond_1d6

    .line 567
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 569
    goto/16 :goto_26d

    .line 570
    :cond_1d6
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 573
    .local v2, "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 574
    .local v0, "error":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 575
    .local v4, "vendorCode":I
    invoke-virtual {v6, v2, v3, v0, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onError(JII)V

    .line 576
    goto/16 :goto_26d

    .line 548
    .end local v0    # "error":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "deviceId":J
    .end local v4    # "vendorCode":I
    :pswitch_1ec
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f2

    move v1, v2

    nop

    :cond_1f2
    move v9, v1

    .line 549
    .restart local v9    # "_hidl_is_oneway":Z
    if-eq v9, v2, :cond_1fd

    .line 550
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 552
    goto/16 :goto_26d

    .line 553
    :cond_1fd
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    .line 556
    .restart local v10    # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 557
    .restart local v12    # "fingerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 558
    .restart local v13    # "groupId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v14

    .line 559
    .local v14, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object v0, v6

    move-wide v1, v10

    move v3, v12

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onAuthenticated(JIILjava/util/ArrayList;)V

    .line 560
    goto :goto_26d

    .line 532
    .end local v9    # "_hidl_is_oneway":Z
    .end local v10    # "deviceId":J
    .end local v12    # "fingerId":I
    .end local v13    # "groupId":I
    .end local v14    # "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_21b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_221

    move v1, v2

    nop

    .line 533
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_221
    if-eq v1, v2, :cond_22a

    .line 534
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 536
    goto :goto_26d

    .line 537
    :cond_22a
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 540
    .restart local v2    # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 541
    .local v0, "acquiredInfo":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 542
    .restart local v4    # "vendorCode":I
    invoke-virtual {v6, v2, v3, v0, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onAcquired(JII)V

    .line 543
    goto :goto_26d

    .line 515
    .end local v0    # "acquiredInfo":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "deviceId":J
    .end local v4    # "vendorCode":I
    :pswitch_23f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_245

    move v1, v2

    nop

    :cond_245
    move v9, v1

    .line 516
    .restart local v9    # "_hidl_is_oneway":Z
    if-eq v9, v2, :cond_24f

    .line 517
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 519
    goto :goto_26d

    .line 520
    :cond_24f
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    .line 523
    .restart local v10    # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 524
    .restart local v12    # "fingerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 525
    .restart local v13    # "groupId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 526
    .local v14, "remaining":I
    move-object v0, v6

    move-wide v1, v10

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onEnrollResult(JIII)V

    .line 527
    nop

    .line 770
    .end local v9    # "_hidl_is_oneway":Z
    .end local v10    # "deviceId":J
    .end local v12    # "fingerId":I
    .end local v13    # "groupId":I
    .end local v14    # "remaining":I
    :cond_26d
    :goto_26d
    return-void

    :pswitch_data_26e
    .packed-switch 0x1
        :pswitch_23f
        :pswitch_21b
        :pswitch_1ec
        :pswitch_1c6
        :pswitch_196
        :pswitch_166
    .end packed-switch

    :sswitch_data_27e
    .sparse-switch
        0xf43484e -> :sswitch_142
        0xf444247 -> :sswitch_125
        0xf445343 -> :sswitch_101
        0xf485348 -> :sswitch_a9
        0xf494e54 -> :sswitch_8f
        0xf4c5444 -> :sswitch_7f
        0xf504e47 -> :sswitch_5f
        0xf524546 -> :sswitch_3b
        0xf535953 -> :sswitch_21
        0xf555444 -> :sswitch_11
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 468
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 494
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 495
    return-object p0

    .line 497
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

    .line 501
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 459
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 488
    const/4 v0, 0x1

    return v0
.end method
