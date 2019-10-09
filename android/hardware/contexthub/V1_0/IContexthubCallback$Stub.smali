.class public abstract Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;
.super Landroid/os/HwBinder;
.source "IContexthubCallback.java"

# interfaces
.implements Landroid/hardware/contexthub/V1_0/IContexthubCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/V1_0/IContexthubCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 410
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 413
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 455
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 456
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 457
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 458
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 459
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

    .line 431
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
        0x2at
        -0x4dt
        0x5t
        0x4ct
        0x2dt
        -0x6dt
        0x2t
        -0x28t
        0x41t
        0x7et
        -0x19t
        0x49t
        0x53t
        0x53t
        -0x5et
        -0x78t
        0x7ft
        -0x1dt
        0x38t
        -0x7t
        0x13t
        0x27t
        0x6ft
        0x2et
        -0x4ct
        0x1et
        -0x80t
        -0xft
        0x13t
        -0x6bt
        -0x14t
        0x2et
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

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.contexthub@1.0::IContexthubCallback"

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

    .line 425
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 464
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 465
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

    .line 493
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_21c

    sparse-switch p1, :sswitch_data_22a

    goto/16 :goto_21b

    .line 725
    :sswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12

    move v1, v2

    nop

    .line 726
    .local v1, "_hidl_is_oneway":Z
    :cond_12
    if-eqz v1, :cond_21b

    .line 727
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 728
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 729
    goto/16 :goto_21b

    .line 712
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22

    move v1, v2

    nop

    .line 713
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v1, v2, :cond_2c

    .line 714
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 715
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 716
    goto/16 :goto_21b

    .line 717
    :cond_2c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->notifySyspropsChanged()V

    .line 720
    goto/16 :goto_21b

    .line 696
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v1

    .line 697
    .local v2, "_hidl_is_oneway":Z
    :goto_3c
    if-eqz v2, :cond_46

    .line 698
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 699
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 700
    goto/16 :goto_21b

    .line 701
    :cond_46
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 704
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 705
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 706
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 707
    goto/16 :goto_21b

    .line 681
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    goto :goto_60

    :cond_5f
    move v2, v1

    .line 682
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_60
    if-eqz v2, :cond_6a

    .line 683
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 684
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 685
    goto/16 :goto_21b

    .line 686
    :cond_6a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->ping()V

    .line 689
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 690
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 691
    goto/16 :goto_21b

    .line 671
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_80

    move v1, v2

    nop

    .line 672
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_80
    if-eqz v1, :cond_21b

    .line 673
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 674
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 675
    goto/16 :goto_21b

    .line 658
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_90

    move v1, v2

    nop

    .line 659
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_90
    if-eq v1, v2, :cond_9a

    .line 660
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 661
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 662
    goto/16 :goto_21b

    .line 663
    :cond_9a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->setHALInstrumentation()V

    .line 666
    goto/16 :goto_21b

    .line 625
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_a4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    goto :goto_aa

    :cond_a9
    move v2, v1

    .line 626
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_aa
    if-eqz v2, :cond_b4

    .line 627
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 628
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 629
    goto/16 :goto_21b

    .line 630
    :cond_b4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 633
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 635
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 637
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 638
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 639
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 640
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 641
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_dd
    if-ge v1, v4, :cond_ef

    .line 643
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 644
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 645
    nop

    .line 641
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_dd

    .line 648
    .end local v1    # "_hidl_index_0":I
    :cond_ef
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 650
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 652
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 653
    goto/16 :goto_21b

    .line 609
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_fc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_101

    goto :goto_102

    :cond_101
    move v2, v1

    .line 610
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_102
    if-eqz v2, :cond_10c

    .line 611
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 612
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 613
    goto/16 :goto_21b

    .line 614
    :cond_10c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 618
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 620
    goto/16 :goto_21b

    .line 595
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_120
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_125

    goto :goto_126

    :cond_125
    move v2, v1

    .line 596
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_126
    if-eqz v2, :cond_130

    .line 597
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 598
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 599
    goto/16 :goto_21b

    .line 600
    :cond_130
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 603
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 604
    goto/16 :goto_21b

    .line 579
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_13d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_142

    goto :goto_143

    :cond_142
    move v2, v1

    .line 580
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_143
    if-eqz v2, :cond_14d

    .line 581
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 582
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 583
    goto/16 :goto_21b

    .line 584
    :cond_14d
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 587
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 588
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 589
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 590
    goto/16 :goto_21b

    .line 563
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_161
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_166

    goto :goto_167

    :cond_166
    move v2, v1

    .line 564
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_167
    if-eqz v2, :cond_171

    .line 565
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 567
    goto/16 :goto_21b

    .line 568
    :cond_171
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-static {p2}, Landroid/hardware/contexthub/V1_0/HubAppInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 571
    .local v0, "appInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/HubAppInfo;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleAppsInfo(Ljava/util/ArrayList;)V

    .line 572
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 573
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 574
    goto/16 :goto_21b

    .line 546
    .end local v0    # "appInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/HubAppInfo;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_185
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18a

    goto :goto_18b

    :cond_18a
    move v2, v1

    .line 547
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_18b
    if-eqz v2, :cond_195

    .line 548
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 549
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 550
    goto/16 :goto_21b

    .line 551
    :cond_195
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 554
    .local v3, "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 555
    .local v0, "abortCode":I
    invoke-virtual {p0, v3, v4, v0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleAppAbort(JI)V

    .line 556
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 557
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 558
    goto/16 :goto_21b

    .line 530
    .end local v0    # "abortCode":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "appId":J
    :pswitch_1ad
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b2

    goto :goto_1b3

    :cond_1b2
    move v2, v1

    .line 531
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1b3
    if-eqz v2, :cond_1bc

    .line 532
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 533
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 534
    goto :goto_21b

    .line 535
    :cond_1bc
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 538
    .local v0, "evt":I
    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleHubEvent(I)V

    .line 539
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 540
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 541
    goto :goto_21b

    .line 513
    .end local v0    # "evt":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1cf
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d4

    goto :goto_1d5

    :cond_1d4
    move v2, v1

    .line 514
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1d5
    if-eqz v2, :cond_1de

    .line 515
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 516
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 517
    goto :goto_21b

    .line 518
    :cond_1de
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 521
    .local v0, "txnId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 522
    .local v3, "result":I
    invoke-virtual {p0, v0, v3}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleTxnResult(II)V

    .line 523
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 524
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 525
    goto :goto_21b

    .line 496
    .end local v0    # "txnId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "result":I
    :pswitch_1f5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fa

    goto :goto_1fb

    :cond_1fa
    move v2, v1

    .line 497
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1fb
    if-eqz v2, :cond_204

    .line 498
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 499
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 500
    goto :goto_21b

    .line 501
    :cond_204
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    new-instance v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 504
    .local v0, "msg":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    invoke-virtual {v0, p2}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->readFromParcel(Landroid/os/HwParcel;)V

    .line 505
    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleClientMsg(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)V

    .line 506
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 507
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 508
    nop

    .line 734
    .end local v0    # "msg":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .end local v2    # "_hidl_is_oneway":Z
    :cond_21b
    :goto_21b
    return-void

    :pswitch_data_21c
    .packed-switch 0x1
        :pswitch_1f5
        :pswitch_1cf
        :pswitch_1ad
        :pswitch_185
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

    .line 449
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 475
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 476
    return-object p0

    .line 478
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

    .line 482
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 440
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 469
    const/4 v0, 0x1

    return v0
.end method
