.class public abstract Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;
.super Landroid/os/HwBinder;
.source "ISurfaceFlingerConfigs.java"

# interfaces
.implements Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 603
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 606
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 648
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 649
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 650
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 651
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 652
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

    .line 624
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
        0x7ft
        0x5ft
        -0x18t
        -0xct
        -0x8t
        -0x5et
        0x40t
        0x37t
        0x15t
        0x3ct
        0x50t
        0x4dt
        -0x75t
        0x4dt
        0x33t
        0x13t
        -0x3et
        -0x32t
        0x33t
        -0x28t
        0x1ct
        -0x74t
        0x69t
        -0x2t
        0x51t
        -0x6ct
        -0x23t
        -0x2et
        -0x2ct
        0x8t
        0xet
        0x72t
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

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

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

    .line 618
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 637
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 657
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 658
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

    .line 686
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_30c

    sparse-switch p1, :sswitch_data_328

    goto/16 :goto_30b

    .line 1027
    :sswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12

    move v1, v2

    nop

    .line 1028
    .local v1, "_hidl_is_oneway":Z
    :cond_12
    if-eqz v1, :cond_30b

    .line 1029
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1030
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1031
    goto/16 :goto_30b

    .line 1014
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22

    move v1, v2

    nop

    .line 1015
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v1, v2, :cond_2c

    .line 1016
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1017
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1018
    goto/16 :goto_30b

    .line 1019
    :cond_2c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->notifySyspropsChanged()V

    .line 1022
    goto/16 :goto_30b

    .line 998
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v1

    .line 999
    .local v2, "_hidl_is_oneway":Z
    :goto_3c
    if-eqz v2, :cond_46

    .line 1000
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1001
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1002
    goto/16 :goto_30b

    .line 1003
    :cond_46
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1006
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1007
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1008
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1009
    goto/16 :goto_30b

    .line 983
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    goto :goto_60

    :cond_5f
    move v2, v1

    .line 984
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_60
    if-eqz v2, :cond_6a

    .line 985
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 986
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 987
    goto/16 :goto_30b

    .line 988
    :cond_6a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->ping()V

    .line 991
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 992
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 993
    goto/16 :goto_30b

    .line 973
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_80

    move v1, v2

    nop

    .line 974
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_80
    if-eqz v1, :cond_30b

    .line 975
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 976
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 977
    goto/16 :goto_30b

    .line 960
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_90

    move v1, v2

    nop

    .line 961
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_90
    if-eq v1, v2, :cond_9a

    .line 962
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 963
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 964
    goto/16 :goto_30b

    .line 965
    :cond_9a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->setHALInstrumentation()V

    .line 968
    goto/16 :goto_30b

    .line 927
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_a4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    goto :goto_aa

    :cond_a9
    move v2, v1

    .line 928
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_aa
    if-eqz v2, :cond_b4

    .line 929
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 930
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 931
    goto/16 :goto_30b

    .line 932
    :cond_b4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 935
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 937
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 939
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 940
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 941
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 942
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 943
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_dd
    if-ge v1, v4, :cond_ef

    .line 945
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 946
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 947
    nop

    .line 943
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_dd

    .line 950
    .end local v1    # "_hidl_index_0":I
    :cond_ef
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 952
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 954
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 955
    goto/16 :goto_30b

    .line 911
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_fc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_101

    goto :goto_102

    :cond_101
    move v2, v1

    .line 912
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_102
    if-eqz v2, :cond_10c

    .line 913
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 914
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 915
    goto/16 :goto_30b

    .line 916
    :cond_10c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 920
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 922
    goto/16 :goto_30b

    .line 897
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_120
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_125

    goto :goto_126

    :cond_125
    move v2, v1

    .line 898
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_126
    if-eqz v2, :cond_130

    .line 899
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 900
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 901
    goto/16 :goto_30b

    .line 902
    :cond_130
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 905
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 906
    goto/16 :goto_30b

    .line 881
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_13d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_142

    goto :goto_143

    :cond_142
    move v2, v1

    .line 882
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_143
    if-eqz v2, :cond_14d

    .line 883
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 884
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 885
    goto/16 :goto_30b

    .line 886
    :cond_14d
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 889
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 890
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 891
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 892
    goto/16 :goto_30b

    .line 865
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_161
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_166

    goto :goto_167

    :cond_166
    move v2, v1

    .line 866
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_167
    if-eqz v2, :cond_171

    .line 867
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 868
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 869
    goto/16 :goto_30b

    .line 870
    :cond_171
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->startGraphicsAllocatorService()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 873
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 874
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 875
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 876
    goto/16 :goto_30b

    .line 849
    .end local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_185
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18a

    goto :goto_18b

    :cond_18a
    move v2, v1

    .line 850
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_18b
    if-eqz v2, :cond_195

    .line 851
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 852
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 853
    goto/16 :goto_30b

    .line 854
    :cond_195
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->maxFrameBufferAcquiredBuffers()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object v0

    .line 857
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 858
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 859
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 860
    goto/16 :goto_30b

    .line 833
    .end local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1a9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ae

    goto :goto_1af

    :cond_1ae
    move v2, v1

    .line 834
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1af
    if-eqz v2, :cond_1b9

    .line 835
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 836
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 837
    goto/16 :goto_30b

    .line 838
    :cond_1b9
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->useVrFlinger()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 841
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 842
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 843
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 844
    goto/16 :goto_30b

    .line 817
    .end local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1cd
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d2

    goto :goto_1d3

    :cond_1d2
    move v2, v1

    .line 818
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1d3
    if-eqz v2, :cond_1dd

    .line 819
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 820
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 821
    goto/16 :goto_30b

    .line 822
    :cond_1dd
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->hasSyncFramework()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 825
    .restart local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 826
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 827
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 828
    goto/16 :goto_30b

    .line 801
    .end local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1f1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f6

    goto :goto_1f7

    :cond_1f6
    move v2, v1

    .line 802
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1f7
    if-eqz v2, :cond_201

    .line 803
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 804
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 805
    goto/16 :goto_30b

    .line 806
    :cond_201
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->maxVirtualDisplaySize()Landroid/hardware/configstore/V1_0/OptionalUInt64;

    move-result-object v0

    .line 809
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalUInt64;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 810
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalUInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 811
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 812
    goto/16 :goto_30b

    .line 785
    .end local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalUInt64;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_215
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21a

    goto :goto_21b

    :cond_21a
    move v2, v1

    .line 786
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_21b
    if-eqz v2, :cond_225

    .line 787
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 788
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 789
    goto/16 :goto_30b

    .line 790
    :cond_225
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->useHwcForRGBtoYUV()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 793
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 794
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 795
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 796
    goto/16 :goto_30b

    .line 769
    .end local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_239
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23e

    goto :goto_23f

    :cond_23e
    move v2, v1

    .line 770
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_23f
    if-eqz v2, :cond_249

    .line 771
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 772
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 773
    goto/16 :goto_30b

    .line 774
    :cond_249
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->presentTimeOffsetFromVSyncNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object v0

    .line 777
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 778
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 779
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 780
    goto/16 :goto_30b

    .line 753
    .end local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_25d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_262

    goto :goto_263

    :cond_262
    move v2, v1

    .line 754
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_263
    if-eqz v2, :cond_26d

    .line 755
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 756
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 757
    goto/16 :goto_30b

    .line 758
    :cond_26d
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->hasHDRDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 761
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 762
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 763
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 764
    goto/16 :goto_30b

    .line 737
    .end local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_281
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_286

    goto :goto_287

    :cond_286
    move v2, v1

    .line 738
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_287
    if-eqz v2, :cond_291

    .line 739
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 740
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 741
    goto/16 :goto_30b

    .line 742
    :cond_291
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->hasWideColorDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 745
    .restart local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 746
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 747
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 748
    goto/16 :goto_30b

    .line 721
    .end local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2a5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2aa

    goto :goto_2ab

    :cond_2aa
    move v2, v1

    .line 722
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2ab
    if-eqz v2, :cond_2b4

    .line 723
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 724
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 725
    goto :goto_30b

    .line 726
    :cond_2b4
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->useContextPriority()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 729
    .restart local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 730
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 731
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 732
    goto :goto_30b

    .line 705
    .end local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2c7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2cc

    goto :goto_2cd

    :cond_2cc
    move v2, v1

    .line 706
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2cd
    if-eqz v2, :cond_2d6

    .line 707
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 708
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 709
    goto :goto_30b

    .line 710
    :cond_2d6
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->vsyncSfEventPhaseOffsetNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object v0

    .line 713
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 714
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 715
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 716
    goto :goto_30b

    .line 689
    .end local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2e9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2ee

    goto :goto_2ef

    :cond_2ee
    move v2, v1

    .line 690
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2ef
    if-eqz v2, :cond_2f8

    .line 691
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 692
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 693
    goto :goto_30b

    .line 694
    :cond_2f8
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->vsyncEventPhaseOffsetNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object v0

    .line 697
    .restart local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 698
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 699
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 700
    nop

    .line 1036
    .end local v0    # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    .end local v2    # "_hidl_is_oneway":Z
    :cond_30b
    :goto_30b
    return-void

    :pswitch_data_30c
    .packed-switch 0x1
        :pswitch_2e9
        :pswitch_2c7
        :pswitch_2a5
        :pswitch_281
        :pswitch_25d
        :pswitch_239
        :pswitch_215
        :pswitch_1f1
        :pswitch_1cd
        :pswitch_1a9
        :pswitch_185
        :pswitch_161
    .end packed-switch

    :sswitch_data_328
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

    .line 642
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 668
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 669
    return-object p0

    .line 671
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

    .line 675
    invoke-virtual {p0, p1}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->registerService(Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 633
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 662
    const/4 v0, 0x1

    return v0
.end method
