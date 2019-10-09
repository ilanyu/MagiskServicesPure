.class public abstract Landroid/hardware/health/V2_0/IHealth$Stub;
.super Landroid/os/HwBinder;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/V2_0/IHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 707
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 710
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 752
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 753
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 754
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 755
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 756
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

    .line 728
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
        0x67t
        0x56t
        -0x7et
        -0x23t
        0x30t
        0x7t
        -0x80t
        0x5ct
        -0x68t
        0x5et
        -0x56t
        -0x14t
        -0x6ft
        0x61t
        0x2at
        -0x44t
        -0x78t
        -0xct
        -0x3et
        0x5bt
        0x34t
        0x31t
        -0x5t
        -0x7ct
        0x7t
        0xbt
        0x75t
        -0x7ct
        -0x5ft
        -0x59t
        0x41t
        -0x5t
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

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.health@2.0::IHealth"

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

    .line 722
    const-string v0, "android.hardware.health@2.0::IHealth"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 741
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 761
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 762
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

    .line 790
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_2f0

    sparse-switch p1, :sswitch_data_30c

    goto/16 :goto_2ee

    .line 1169
    :sswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12

    move v1, v2

    nop

    .line 1170
    .local v1, "_hidl_is_oneway":Z
    :cond_12
    if-eqz v1, :cond_2ee

    .line 1171
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1172
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1173
    goto/16 :goto_2ee

    .line 1156
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22

    move v1, v2

    nop

    .line 1157
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v1, v2, :cond_2c

    .line 1158
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1159
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1160
    goto/16 :goto_2ee

    .line 1161
    :cond_2c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->notifySyspropsChanged()V

    .line 1164
    goto/16 :goto_2ee

    .line 1140
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v1

    .line 1141
    .local v2, "_hidl_is_oneway":Z
    :goto_3c
    if-eqz v2, :cond_46

    .line 1142
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1143
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1144
    goto/16 :goto_2ee

    .line 1145
    :cond_46
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1148
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1149
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1150
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1151
    goto/16 :goto_2ee

    .line 1125
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    goto :goto_60

    :cond_5f
    move v2, v1

    .line 1126
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_60
    if-eqz v2, :cond_6a

    .line 1127
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1128
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1129
    goto/16 :goto_2ee

    .line 1130
    :cond_6a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->ping()V

    .line 1133
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1135
    goto/16 :goto_2ee

    .line 1115
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_80

    move v1, v2

    nop

    .line 1116
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_80
    if-eqz v1, :cond_2ee

    .line 1117
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1119
    goto/16 :goto_2ee

    .line 1102
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_90

    move v1, v2

    nop

    .line 1103
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_90
    if-eq v1, v2, :cond_9a

    .line 1104
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1105
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1106
    goto/16 :goto_2ee

    .line 1107
    :cond_9a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->setHALInstrumentation()V

    .line 1110
    goto/16 :goto_2ee

    .line 1069
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_a4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    goto :goto_aa

    :cond_a9
    move v2, v1

    .line 1070
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_aa
    if-eqz v2, :cond_b4

    .line 1071
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1072
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1073
    goto/16 :goto_2ee

    .line 1074
    :cond_b4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1077
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1079
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1081
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1082
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1083
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1084
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1085
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_dd
    if-ge v1, v4, :cond_ef

    .line 1087
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 1088
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1089
    nop

    .line 1085
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_dd

    .line 1092
    .end local v1    # "_hidl_index_0":I
    :cond_ef
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1094
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1096
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1097
    goto/16 :goto_2ee

    .line 1053
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_fc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_101

    goto :goto_102

    :cond_101
    move v2, v1

    .line 1054
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_102
    if-eqz v2, :cond_10c

    .line 1055
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1056
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1057
    goto/16 :goto_2ee

    .line 1058
    :cond_10c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1062
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1064
    goto/16 :goto_2ee

    .line 1039
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_120
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_125

    goto :goto_126

    :cond_125
    move v2, v1

    .line 1040
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_126
    if-eqz v2, :cond_130

    .line 1041
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1042
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1043
    goto/16 :goto_2ee

    .line 1044
    :cond_130
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1047
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1048
    goto/16 :goto_2ee

    .line 1023
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_13d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_142

    goto :goto_143

    :cond_142
    move v2, v1

    .line 1024
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_143
    if-eqz v2, :cond_14d

    .line 1025
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1026
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1027
    goto/16 :goto_2ee

    .line 1028
    :cond_14d
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1031
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1032
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1034
    goto/16 :goto_2ee

    .line 1003
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_161
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_167

    move v1, v2

    nop

    .line 1004
    .local v1, "_hidl_is_oneway":Z
    :cond_167
    if-eqz v1, :cond_171

    .line 1005
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1006
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1007
    goto/16 :goto_2ee

    .line 1008
    :cond_171
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$9;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$9;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V

    .line 1018
    goto/16 :goto_2ee

    .line 983
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_180
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_186

    move v1, v2

    nop

    .line 984
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_186
    if-eqz v1, :cond_190

    .line 985
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 986
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 987
    goto/16 :goto_2ee

    .line 988
    :cond_190
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$8;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$8;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getDiskStats(Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;)V

    .line 998
    goto/16 :goto_2ee

    .line 963
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a5

    move v1, v2

    nop

    .line 964
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a5
    if-eqz v1, :cond_1af

    .line 965
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 966
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 967
    goto/16 :goto_2ee

    .line 968
    :cond_1af
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$7;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$7;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getStorageInfo(Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;)V

    .line 978
    goto/16 :goto_2ee

    .line 943
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1be
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c4

    move v1, v2

    nop

    .line 944
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c4
    if-eqz v1, :cond_1ce

    .line 945
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 946
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 947
    goto/16 :goto_2ee

    .line 948
    :cond_1ce
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$6;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$6;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    .line 958
    goto/16 :goto_2ee

    .line 923
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1dd
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e3

    move v1, v2

    nop

    .line 924
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e3
    if-eqz v1, :cond_1ed

    .line 925
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 926
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 927
    goto/16 :goto_2ee

    .line 928
    :cond_1ed
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$5;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$5;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    .line 938
    goto/16 :goto_2ee

    .line 903
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1fc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_202

    move v1, v2

    nop

    .line 904
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_202
    if-eqz v1, :cond_20c

    .line 905
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 907
    goto/16 :goto_2ee

    .line 908
    :cond_20c
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$4;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$4;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    .line 918
    goto/16 :goto_2ee

    .line 883
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_21b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_221

    move v1, v2

    nop

    .line 884
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_221
    if-eqz v1, :cond_22b

    .line 885
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 886
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 887
    goto/16 :goto_2ee

    .line 888
    :cond_22b
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$3;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    .line 898
    goto/16 :goto_2ee

    .line 863
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_23a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_240

    move v1, v2

    nop

    .line 864
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_240
    if-eqz v1, :cond_24a

    .line 865
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 866
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 867
    goto/16 :goto_2ee

    .line 868
    :cond_24a
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$2;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    .line 878
    goto/16 :goto_2ee

    .line 843
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_259
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25f

    move v1, v2

    nop

    .line 844
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25f
    if-eqz v1, :cond_269

    .line 845
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 846
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 847
    goto/16 :goto_2ee

    .line 848
    :cond_269
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$1;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    .line 858
    goto/16 :goto_2ee

    .line 827
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_278
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27d

    goto :goto_27e

    :cond_27d
    move v2, v1

    .line 828
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_27e
    if-eqz v2, :cond_287

    .line 829
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 830
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 831
    goto :goto_2ee

    .line 832
    :cond_287
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->update()I

    move-result v0

    .line 835
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 836
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 837
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 838
    goto :goto_2ee

    .line 810
    .end local v0    # "_hidl_out_result":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_29a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29f

    goto :goto_2a0

    :cond_29f
    move v2, v1

    .line 811
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2a0
    if-eqz v2, :cond_2a9

    .line 812
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 813
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 814
    goto :goto_2ee

    .line 815
    :cond_2a9
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object v0

    .line 818
    .local v0, "callback":Landroid/hardware/health/V2_0/IHealthInfoCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v3

    .line 819
    .local v3, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 820
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 821
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 822
    goto :goto_2ee

    .line 793
    .end local v0    # "callback":Landroid/hardware/health/V2_0/IHealthInfoCallback;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_result":I
    :pswitch_2c4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2c9

    goto :goto_2ca

    :cond_2c9
    move v2, v1

    .line 794
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2ca
    if-eqz v2, :cond_2d3

    .line 795
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 796
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 797
    goto :goto_2ee

    .line 798
    :cond_2d3
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object v0

    .line 801
    .restart local v0    # "callback":Landroid/hardware/health/V2_0/IHealthInfoCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v3

    .line 802
    .restart local v3    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 803
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 804
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 805
    nop

    .line 1178
    .end local v0    # "callback":Landroid/hardware/health/V2_0/IHealthInfoCallback;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_result":I
    :cond_2ee
    :goto_2ee
    return-void

    nop

    :pswitch_data_2f0
    .packed-switch 0x1
        :pswitch_2c4
        :pswitch_29a
        :pswitch_278
        :pswitch_259
        :pswitch_23a
        :pswitch_21b
        :pswitch_1fc
        :pswitch_1dd
        :pswitch_1be
        :pswitch_19f
        :pswitch_180
        :pswitch_161
    .end packed-switch

    :sswitch_data_30c
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

    .line 746
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 772
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 773
    return-object p0

    .line 775
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

    .line 779
    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->registerService(Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 737
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 766
    const/4 v0, 0x1

    return v0
.end method
