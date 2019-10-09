.class public abstract Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;
.super Landroid/os/HwBinder;
.source "ITunerSession.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/ITunerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/broadcastradio/V2_0/ITunerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 657
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 660
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 702
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 703
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 704
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 705
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 706
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

    .line 678
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
        -0x29t
        0x4t
        0x64t
        -0x3bt
        0x17t
        -0x5ct
        -0x5ft
        -0x4bt
        0x16t
        0x77t
        0x30t
        -0x7ct
        0x37t
        0x75t
        -0x57t
        0x7ft
        0x45t
        0x51t
        0x2t
        -0x6ft
        -0x62t
        -0x6ct
        0x5bt
        0x4t
        -0x9t
        0x17t
        -0x47t
        -0x26t
        0x39t
        0xct
        0xft
        0x39t
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

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

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

    .line 672
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 691
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 711
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 712
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

    .line 740
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_308

    sparse-switch p1, :sswitch_data_322

    goto/16 :goto_307

    .line 1078
    :sswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12

    move v1, v2

    nop

    .line 1079
    .local v1, "_hidl_is_oneway":Z
    :cond_12
    if-eqz v1, :cond_307

    .line 1080
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1081
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1082
    goto/16 :goto_307

    .line 1065
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22

    move v1, v2

    nop

    .line 1066
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v1, v2, :cond_2c

    .line 1067
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1068
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1069
    goto/16 :goto_307

    .line 1070
    :cond_2c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->notifySyspropsChanged()V

    .line 1073
    goto/16 :goto_307

    .line 1049
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v1

    .line 1050
    .local v2, "_hidl_is_oneway":Z
    :goto_3c
    if-eqz v2, :cond_46

    .line 1051
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1052
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1053
    goto/16 :goto_307

    .line 1054
    :cond_46
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1057
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1058
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1059
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1060
    goto/16 :goto_307

    .line 1034
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    goto :goto_60

    :cond_5f
    move v2, v1

    .line 1035
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_60
    if-eqz v2, :cond_6a

    .line 1036
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1037
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1038
    goto/16 :goto_307

    .line 1039
    :cond_6a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->ping()V

    .line 1042
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1043
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1044
    goto/16 :goto_307

    .line 1024
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_80

    move v1, v2

    nop

    .line 1025
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_80
    if-eqz v1, :cond_307

    .line 1026
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1027
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1028
    goto/16 :goto_307

    .line 1011
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_90

    move v1, v2

    nop

    .line 1012
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_90
    if-eq v1, v2, :cond_9a

    .line 1013
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1014
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1015
    goto/16 :goto_307

    .line 1016
    :cond_9a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->setHALInstrumentation()V

    .line 1019
    goto/16 :goto_307

    .line 978
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_a4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    goto :goto_aa

    :cond_a9
    move v2, v1

    .line 979
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_aa
    if-eqz v2, :cond_b4

    .line 980
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 981
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 982
    goto/16 :goto_307

    .line 983
    :cond_b4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 986
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 988
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 990
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 991
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 992
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 993
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 994
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_dd
    if-ge v1, v4, :cond_ef

    .line 996
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 997
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 998
    nop

    .line 994
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_dd

    .line 1001
    .end local v1    # "_hidl_index_0":I
    :cond_ef
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1003
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1005
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1006
    goto/16 :goto_307

    .line 962
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_fc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_101

    goto :goto_102

    :cond_101
    move v2, v1

    .line 963
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_102
    if-eqz v2, :cond_10c

    .line 964
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 965
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 966
    goto/16 :goto_307

    .line 967
    :cond_10c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 971
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 973
    goto/16 :goto_307

    .line 948
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_120
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_125

    goto :goto_126

    :cond_125
    move v2, v1

    .line 949
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_126
    if-eqz v2, :cond_130

    .line 950
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 951
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 952
    goto/16 :goto_307

    .line 953
    :cond_130
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 956
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 957
    goto/16 :goto_307

    .line 932
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_13d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_142

    goto :goto_143

    :cond_142
    move v2, v1

    .line 933
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_143
    if-eqz v2, :cond_14d

    .line 934
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 935
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 936
    goto/16 :goto_307

    .line 937
    :cond_14d
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 940
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 942
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 943
    goto/16 :goto_307

    .line 917
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_161
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_166

    goto :goto_167

    :cond_166
    move v2, v1

    .line 918
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_167
    if-eqz v2, :cond_171

    .line 919
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 921
    goto/16 :goto_307

    .line 922
    :cond_171
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->close()V

    .line 925
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 926
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 927
    goto/16 :goto_307

    .line 900
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_181
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_186

    goto :goto_187

    :cond_186
    move v2, v1

    .line 901
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_187
    if-eqz v2, :cond_191

    .line 902
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 904
    goto/16 :goto_307

    .line 905
    :cond_191
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 908
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->getParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 909
    .local v3, "_hidl_out_parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 910
    invoke-static {p3, v3}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 911
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 912
    goto/16 :goto_307

    .line 883
    .end local v0    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    :pswitch_1a9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ae

    goto :goto_1af

    :cond_1ae
    move v2, v1

    .line 884
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1af
    if-eqz v2, :cond_1b9

    .line 885
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 886
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 887
    goto/16 :goto_307

    .line 888
    :cond_1b9
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-static {p2}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 891
    .local v0, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->setParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 892
    .local v3, "_hidl_out_results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 893
    invoke-static {p3, v3}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 894
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 895
    goto/16 :goto_307

    .line 865
    .end local v0    # "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    :pswitch_1d1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d6

    goto :goto_1d7

    :cond_1d6
    move v2, v1

    .line 866
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1d7
    if-eqz v2, :cond_1e1

    .line 867
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 868
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 869
    goto/16 :goto_307

    .line 870
    :cond_1e1
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 873
    .local v0, "flag":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 874
    .local v3, "value":Z
    invoke-virtual {p0, v0, v3}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->setConfigFlag(IZ)I

    move-result v4

    .line 875
    .local v4, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 876
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 877
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 878
    goto/16 :goto_307

    .line 844
    .end local v0    # "flag":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "value":Z
    .end local v4    # "_hidl_out_result":I
    :pswitch_1fd
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_203

    move v1, v2

    nop

    .line 845
    .local v1, "_hidl_is_oneway":Z
    :cond_203
    if-eqz v1, :cond_20d

    .line 846
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 848
    goto/16 :goto_307

    .line 849
    :cond_20d
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 852
    .restart local v0    # "flag":I
    new-instance v2, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub$1;

    invoke-direct {v2, p0, p3}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub$1;-><init>(Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->isConfigFlagSet(ILandroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;)V

    .line 860
    goto/16 :goto_307

    .line 829
    .end local v0    # "flag":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_220
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_225

    goto :goto_226

    :cond_225
    move v2, v1

    .line 830
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_226
    if-eqz v2, :cond_230

    .line 831
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 832
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 833
    goto/16 :goto_307

    .line 834
    :cond_230
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->stopProgramListUpdates()V

    .line 837
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 838
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 839
    goto/16 :goto_307

    .line 811
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_240
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_245

    goto :goto_246

    :cond_245
    move v2, v1

    .line 812
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_246
    if-eqz v2, :cond_250

    .line 813
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 814
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 815
    goto/16 :goto_307

    .line 816
    :cond_250
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;-><init>()V

    .line 819
    .local v0, "filter":Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
    invoke-virtual {v0, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->readFromParcel(Landroid/os/HwParcel;)V

    .line 820
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->startProgramListUpdates(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)I

    move-result v3

    .line 821
    .local v3, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 822
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 823
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 824
    goto/16 :goto_307

    .line 796
    .end local v0    # "filter":Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_result":I
    :pswitch_26c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_271

    goto :goto_272

    :cond_271
    move v2, v1

    .line 797
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_272
    if-eqz v2, :cond_27c

    .line 798
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 799
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 800
    goto/16 :goto_307

    .line 801
    :cond_27c
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->cancel()V

    .line 804
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 805
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 806
    goto/16 :goto_307

    .line 779
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_28c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_291

    goto :goto_292

    :cond_291
    move v2, v1

    .line 780
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_292
    if-eqz v2, :cond_29c

    .line 781
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 782
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 783
    goto/16 :goto_307

    .line 784
    :cond_29c
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 787
    .local v0, "directionUp":Z
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->step(Z)I

    move-result v3

    .line 788
    .restart local v3    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 789
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 790
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 791
    goto :goto_307

    .line 761
    .end local v0    # "directionUp":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_result":I
    :pswitch_2b3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b8

    goto :goto_2b9

    :cond_2b8
    move v2, v1

    .line 762
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2b9
    if-eqz v2, :cond_2c2

    .line 763
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 765
    goto :goto_307

    .line 766
    :cond_2c2
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 769
    .restart local v0    # "directionUp":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 770
    .local v3, "skipSubChannel":Z
    invoke-virtual {p0, v0, v3}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->scan(ZZ)I

    move-result v4

    .line 771
    .restart local v4    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 772
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 774
    goto :goto_307

    .line 743
    .end local v0    # "directionUp":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "skipSubChannel":Z
    .end local v4    # "_hidl_out_result":I
    :pswitch_2dd
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2e2

    goto :goto_2e3

    :cond_2e2
    move v2, v1

    .line 744
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2e3
    if-eqz v2, :cond_2ec

    .line 745
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 746
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 747
    goto :goto_307

    .line 748
    :cond_2ec
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 751
    .local v0, "program":Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    invoke-virtual {v0, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readFromParcel(Landroid/os/HwParcel;)V

    .line 752
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I

    move-result v3

    .line 753
    .local v3, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 754
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 755
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 756
    nop

    .line 1087
    .end local v0    # "program":Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_result":I
    :cond_307
    :goto_307
    return-void

    :pswitch_data_308
    .packed-switch 0x1
        :pswitch_2dd
        :pswitch_2b3
        :pswitch_28c
        :pswitch_26c
        :pswitch_240
        :pswitch_220
        :pswitch_1fd
        :pswitch_1d1
        :pswitch_1a9
        :pswitch_181
        :pswitch_161
    .end packed-switch

    :sswitch_data_322
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

    .line 696
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 722
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 723
    return-object p0

    .line 725
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

    .line 729
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->registerService(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 687
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 716
    const/4 v0, 0x1

    return v0
.end method
