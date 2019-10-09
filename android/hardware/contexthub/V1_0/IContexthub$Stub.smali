.class public abstract Landroid/hardware/contexthub/V1_0/IContexthub$Stub;
.super Landroid/os/HwBinder;
.source "IContexthub.java"

# interfaces
.implements Landroid/hardware/contexthub/V1_0/IContexthub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/V1_0/IContexthub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 576
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 579
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 621
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 622
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 623
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 624
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 625
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

    .line 597
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
        -0x5bt
        -0x52t
        0xft
        -0x18t
        0x66t
        0x7ft
        0xbt
        0x1at
        -0x10t
        -0x65t
        0x13t
        -0x19t
        0x2dt
        0x29t
        0x60t
        0xft
        0x4et
        -0x4dt
        -0x7bt
        0x3bt
        0x25t
        0x70t
        0x79t
        -0x3ct
        0x5at
        -0x67t
        -0x4at
        -0xct
        -0x5dt
        0x36t
        0x6t
        0x49t
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

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

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

    .line 591
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 630
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 631
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

    .line 659
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_2ce

    sparse-switch p1, :sswitch_data_2e2

    goto/16 :goto_2cc

    .line 955
    :sswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12

    move v1, v2

    nop

    .line 956
    .local v1, "_hidl_is_oneway":Z
    :cond_12
    if-eqz v1, :cond_2cc

    .line 957
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 958
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 959
    goto/16 :goto_2cc

    .line 942
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22

    move v1, v2

    nop

    .line 943
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v1, v2, :cond_2c

    .line 944
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 945
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 946
    goto/16 :goto_2cc

    .line 947
    :cond_2c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->notifySyspropsChanged()V

    .line 950
    goto/16 :goto_2cc

    .line 926
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v1

    .line 927
    .local v2, "_hidl_is_oneway":Z
    :goto_3c
    if-eqz v2, :cond_46

    .line 928
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 929
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 930
    goto/16 :goto_2cc

    .line 931
    :cond_46
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 934
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 935
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 936
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 937
    goto/16 :goto_2cc

    .line 911
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    goto :goto_60

    :cond_5f
    move v2, v1

    .line 912
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_60
    if-eqz v2, :cond_6a

    .line 913
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 914
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 915
    goto/16 :goto_2cc

    .line 916
    :cond_6a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->ping()V

    .line 919
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 921
    goto/16 :goto_2cc

    .line 901
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_80

    move v1, v2

    nop

    .line 902
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_80
    if-eqz v1, :cond_2cc

    .line 903
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 904
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 905
    goto/16 :goto_2cc

    .line 888
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_90

    move v1, v2

    nop

    .line 889
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_90
    if-eq v1, v2, :cond_9a

    .line 890
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 891
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 892
    goto/16 :goto_2cc

    .line 893
    :cond_9a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->setHALInstrumentation()V

    .line 896
    goto/16 :goto_2cc

    .line 855
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_a4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    goto :goto_aa

    :cond_a9
    move v2, v1

    .line 856
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_aa
    if-eqz v2, :cond_b4

    .line 857
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 858
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 859
    goto/16 :goto_2cc

    .line 860
    :cond_b4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 863
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 865
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 867
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 868
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 869
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 870
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 871
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_dd
    if-ge v1, v4, :cond_ef

    .line 873
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 874
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 875
    nop

    .line 871
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_dd

    .line 878
    .end local v1    # "_hidl_index_0":I
    :cond_ef
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 880
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 882
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 883
    goto/16 :goto_2cc

    .line 839
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_fc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_101

    goto :goto_102

    :cond_101
    move v2, v1

    .line 840
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_102
    if-eqz v2, :cond_10c

    .line 841
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 842
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 843
    goto/16 :goto_2cc

    .line 844
    :cond_10c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 848
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 850
    goto/16 :goto_2cc

    .line 825
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_120
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_125

    goto :goto_126

    :cond_125
    move v2, v1

    .line 826
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_126
    if-eqz v2, :cond_130

    .line 827
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 828
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 829
    goto/16 :goto_2cc

    .line 830
    :cond_130
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 833
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 834
    goto/16 :goto_2cc

    .line 809
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_13d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_142

    goto :goto_143

    :cond_142
    move v2, v1

    .line 810
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_143
    if-eqz v2, :cond_14d

    .line 811
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 813
    goto/16 :goto_2cc

    .line 814
    :cond_14d
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 817
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 818
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 819
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 820
    goto/16 :goto_2cc

    .line 792
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_161
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_166

    goto :goto_167

    :cond_166
    move v2, v1

    .line 793
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_167
    if-eqz v2, :cond_171

    .line 794
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 795
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 796
    goto/16 :goto_2cc

    .line 797
    :cond_171
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 800
    .local v0, "hubId":I
    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->queryApps(I)I

    move-result v3

    .line 801
    .local v3, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 802
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 803
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 804
    goto/16 :goto_2cc

    .line 773
    .end local v0    # "hubId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_result":I
    :pswitch_189
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18e

    goto :goto_18f

    :cond_18e
    move v2, v1

    .line 774
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_18f
    if-eqz v2, :cond_199

    .line 775
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 776
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 777
    goto/16 :goto_2cc

    .line 778
    :cond_199
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 781
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 782
    .local v3, "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 783
    .local v5, "transactionId":I
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->disableNanoApp(IJI)I

    move-result v6

    .line 784
    .local v6, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 785
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 786
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 787
    goto/16 :goto_2cc

    .line 754
    .end local v0    # "hubId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "appId":J
    .end local v5    # "transactionId":I
    .end local v6    # "_hidl_out_result":I
    :pswitch_1b9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1be

    goto :goto_1bf

    :cond_1be
    move v2, v1

    .line 755
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1bf
    if-eqz v2, :cond_1c9

    .line 756
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 757
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 758
    goto/16 :goto_2cc

    .line 759
    :cond_1c9
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 762
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 763
    .restart local v3    # "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 764
    .restart local v5    # "transactionId":I
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->enableNanoApp(IJI)I

    move-result v6

    .line 765
    .restart local v6    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 766
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 767
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 768
    goto/16 :goto_2cc

    .line 735
    .end local v0    # "hubId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "appId":J
    .end local v5    # "transactionId":I
    .end local v6    # "_hidl_out_result":I
    :pswitch_1e9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ee

    goto :goto_1ef

    :cond_1ee
    move v2, v1

    .line 736
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1ef
    if-eqz v2, :cond_1f9

    .line 737
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 738
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 739
    goto/16 :goto_2cc

    .line 740
    :cond_1f9
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 743
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 744
    .restart local v3    # "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 745
    .restart local v5    # "transactionId":I
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->unloadNanoApp(IJI)I

    move-result v6

    .line 746
    .restart local v6    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 747
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 748
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 749
    goto/16 :goto_2cc

    .line 715
    .end local v0    # "hubId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "appId":J
    .end local v5    # "transactionId":I
    .end local v6    # "_hidl_out_result":I
    :pswitch_219
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21e

    goto :goto_21f

    :cond_21e
    move v2, v1

    .line 716
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_21f
    if-eqz v2, :cond_229

    .line 717
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 718
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 719
    goto/16 :goto_2cc

    .line 720
    :cond_229
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 723
    .restart local v0    # "hubId":I
    new-instance v3, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    invoke-direct {v3}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    .line 724
    .local v3, "appBinary":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    invoke-virtual {v3, p2}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->readFromParcel(Landroid/os/HwParcel;)V

    .line 725
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 726
    .local v4, "transactionId":I
    invoke-virtual {p0, v0, v3, v4}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->loadNanoApp(ILandroid/hardware/contexthub/V1_0/NanoAppBinary;I)I

    move-result v5

    .line 727
    .local v5, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 728
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 729
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 730
    goto/16 :goto_2cc

    .line 696
    .end local v0    # "hubId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "appBinary":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    .end local v4    # "transactionId":I
    .end local v5    # "_hidl_out_result":I
    :pswitch_24d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_252

    goto :goto_253

    :cond_252
    move v2, v1

    .line 697
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_253
    if-eqz v2, :cond_25d

    .line 698
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 699
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 700
    goto/16 :goto_2cc

    .line 701
    :cond_25d
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 704
    .restart local v0    # "hubId":I
    new-instance v3, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v3}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 705
    .local v3, "msg":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    invoke-virtual {v3, p2}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->readFromParcel(Landroid/os/HwParcel;)V

    .line 706
    invoke-virtual {p0, v0, v3}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I

    move-result v4

    .line 707
    .local v4, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 708
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 709
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 710
    goto :goto_2cc

    .line 678
    .end local v0    # "hubId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "msg":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .end local v4    # "_hidl_out_result":I
    :pswitch_27c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_281

    goto :goto_282

    :cond_281
    move v2, v1

    .line 679
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_282
    if-eqz v2, :cond_28b

    .line 680
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 681
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 682
    goto :goto_2cc

    .line 683
    :cond_28b
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 686
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contexthub/V1_0/IContexthubCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/contexthub/V1_0/IContexthubCallback;

    move-result-object v3

    .line 687
    .local v3, "cb":Landroid/hardware/contexthub/V1_0/IContexthubCallback;
    invoke-virtual {p0, v0, v3}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    move-result v4

    .line 688
    .restart local v4    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 689
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 690
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 691
    goto :goto_2cc

    .line 662
    .end local v0    # "hubId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "cb":Landroid/hardware/contexthub/V1_0/IContexthubCallback;
    .end local v4    # "_hidl_out_result":I
    :pswitch_2aa
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2af

    goto :goto_2b0

    :cond_2af
    move v2, v1

    .line 663
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2b0
    if-eqz v2, :cond_2b9

    .line 664
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 665
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 666
    goto :goto_2cc

    .line 667
    :cond_2b9
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->getHubs()Ljava/util/ArrayList;

    move-result-object v0

    .line 670
    .local v0, "_hidl_out_hubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 671
    invoke-static {p3, v0}, Landroid/hardware/contexthub/V1_0/ContextHub;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 672
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 673
    nop

    .line 964
    .end local v0    # "_hidl_out_hubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :cond_2cc
    :goto_2cc
    return-void

    nop

    :pswitch_data_2ce
    .packed-switch 0x1
        :pswitch_2aa
        :pswitch_27c
        :pswitch_24d
        :pswitch_219
        :pswitch_1e9
        :pswitch_1b9
        :pswitch_189
        :pswitch_161
    .end packed-switch

    :sswitch_data_2e2
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

    .line 615
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 641
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 642
    return-object p0

    .line 644
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

    .line 648
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->registerService(Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 606
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 635
    const/4 v0, 0x1

    return v0
.end method
