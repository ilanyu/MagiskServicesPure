.class public final Lcom/android/server/hdmi/HdmiCecMessage;
.super Ljava/lang/Object;
.source "HdmiCecMessage.java"


# static fields
.field public static final EMPTY_PARAM:[B


# instance fields
.field private final mDestination:I

.field private final mOpcode:I

.field private final mParams:[B

.field private final mSource:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 6
    .param p1, "source"    # I
    .param p2, "destination"    # I
    .param p3, "opcode"    # I
    .param p4, "params"    # [B

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 42
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 43
    and-int/lit16 v0, p3, 0xff

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 44
    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 45
    return-void
.end method

.method private static opcodeToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "opcode"    # I

    .line 103
    packed-switch p0, :pswitch_data_10a

    packed-switch p0, :pswitch_data_11e

    packed-switch p0, :pswitch_data_126

    packed-switch p0, :pswitch_data_134

    packed-switch p0, :pswitch_data_146

    packed-switch p0, :pswitch_data_150

    packed-switch p0, :pswitch_data_158

    packed-switch p0, :pswitch_data_16c

    packed-switch p0, :pswitch_data_186

    packed-switch p0, :pswitch_data_18e

    packed-switch p0, :pswitch_data_1a2

    sparse-switch p0, :sswitch_data_1b2

    .line 247
    const-string v0, "Opcode: %02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :sswitch_35
    const-string v0, "Abort"

    return-object v0

    .line 243
    :sswitch_38
    const-string v0, "Cdc Message"

    return-object v0

    .line 209
    :sswitch_3b
    const-string v0, "Set Digital Timer"

    return-object v0

    .line 165
    :sswitch_3e
    const-string v0, "Report Audio Status"

    return-object v0

    .line 157
    :sswitch_41
    const-string v0, "Set Timer Program Title"

    return-object v0

    .line 155
    :sswitch_44
    const-string v0, "Set Osd String"

    return-object v0

    .line 125
    :sswitch_47
    const-string v0, "Record Tv Screen"

    return-object v0

    .line 123
    :sswitch_4a
    const-string v0, "Text View On"

    return-object v0

    .line 105
    :sswitch_4d
    const-string v0, "Feature Abort"

    return-object v0

    .line 241
    :pswitch_50
    const-string v0, "Terminate ARC"

    return-object v0

    .line 239
    :pswitch_53
    const-string v0, "Request ARC Termination"

    return-object v0

    .line 237
    :pswitch_56
    const-string v0, "Request ARC Initiation"

    return-object v0

    .line 235
    :pswitch_59
    const-string v0, "Report ARC Terminated"

    return-object v0

    .line 233
    :pswitch_5c
    const-string v0, "Report ARC Initiated"

    return-object v0

    .line 231
    :pswitch_5f
    const-string v0, "Initiate ARC"

    return-object v0

    .line 229
    :pswitch_62
    const-string v0, "Request Short Audio Descriptor"

    return-object v0

    .line 227
    :pswitch_65
    const-string v0, "Repot Short Audio Descriptor"

    return-object v0

    .line 225
    :pswitch_68
    const-string v0, "Set External Timer"

    return-object v0

    .line 223
    :pswitch_6b
    const-string v0, "Clear External Timer"

    return-object v0

    .line 221
    :pswitch_6e
    const-string v0, "Vendor Command With Id"

    return-object v0

    .line 219
    :pswitch_71
    const-string v0, "Get Cec Version"

    return-object v0

    .line 217
    :pswitch_74
    const-string v0, "Cec Version"

    return-object v0

    .line 215
    :pswitch_77
    const-string v0, "InActive Source"

    return-object v0

    .line 213
    :pswitch_7a
    const-string v0, "Set Audio Rate"

    return-object v0

    .line 211
    :pswitch_7d
    const-string v0, "Clear Digital Timer"

    return-object v0

    .line 207
    :pswitch_80
    const-string v0, "Select Digital Service"

    return-object v0

    .line 205
    :pswitch_83
    const-string v0, "Select Analog Service"

    return-object v0

    .line 203
    :pswitch_86
    const-string v0, "Get Menu Language"

    return-object v0

    .line 201
    :pswitch_89
    const-string v0, "Report Power Status"

    return-object v0

    .line 199
    :pswitch_8c
    const-string v0, "Give Device Power Status"

    return-object v0

    .line 197
    :pswitch_8f
    const-string v0, "Menu Status"

    return-object v0

    .line 195
    :pswitch_92
    const-string v0, "Menu REquest"

    return-object v0

    .line 193
    :pswitch_95
    const-string v0, "Give Device Vendor Id"

    return-object v0

    .line 191
    :pswitch_98
    const-string v0, "Vendor Remote Button Up"

    return-object v0

    .line 189
    :pswitch_9b
    const-string v0, "Vendor Remote Button Down"

    return-object v0

    .line 187
    :pswitch_9e
    const-string v0, "Vendor Commandn"

    return-object v0

    .line 185
    :pswitch_a1
    const-string v0, "Device Vendor Id"

    return-object v0

    .line 183
    :pswitch_a4
    const-string v0, "Set Stream Path"

    return-object v0

    .line 181
    :pswitch_a7
    const-string v0, "Request Active Source"

    return-object v0

    .line 179
    :pswitch_aa
    const-string v0, "Report Physical Address"

    return-object v0

    .line 177
    :pswitch_ad
    const-string v0, "Give Physical Address"

    return-object v0

    .line 175
    :pswitch_b0
    const-string v0, "Active Source"

    return-object v0

    .line 173
    :pswitch_b3
    const-string v0, "Routing Information"

    return-object v0

    .line 171
    :pswitch_b6
    const-string v0, "Routing Change"

    return-object v0

    .line 169
    :pswitch_b9
    const-string v0, "System Audio Mode Status"

    return-object v0

    .line 167
    :pswitch_bc
    const-string v0, "Give System Audio Mode Status"

    return-object v0

    .line 163
    :pswitch_bf
    const-string v0, "Set System Audio Mode"

    return-object v0

    .line 161
    :pswitch_c2
    const-string v0, "Give Audio Status"

    return-object v0

    .line 159
    :pswitch_c5
    const-string v0, "System Audio Mode Request"

    return-object v0

    .line 153
    :pswitch_c8
    const-string v0, "Set Osd Name"

    return-object v0

    .line 151
    :pswitch_cb
    const-string v0, "Give Osd Name"

    return-object v0

    .line 149
    :pswitch_ce
    const-string v0, "User Control Release"

    return-object v0

    .line 147
    :pswitch_d1
    const-string v0, "User Control Pressed"

    return-object v0

    .line 145
    :pswitch_d4
    const-string v0, "Timer Cleared Status"

    return-object v0

    .line 143
    :pswitch_d7
    const-string v0, "Deck Control"

    return-object v0

    .line 141
    :pswitch_da
    const-string v0, "Play"

    return-object v0

    .line 139
    :pswitch_dd
    const-string v0, "Standby"

    return-object v0

    .line 137
    :pswitch_e0
    const-string v0, "Timer Status"

    return-object v0

    .line 135
    :pswitch_e3
    const-string v0, "Set Analog Timer"

    return-object v0

    .line 133
    :pswitch_e6
    const-string v0, "Clear Analog Timer"

    return-object v0

    .line 131
    :pswitch_e9
    const-string v0, "Set Menu Language"

    return-object v0

    .line 129
    :pswitch_ec
    const-string v0, "Deck Status"

    return-object v0

    .line 127
    :pswitch_ef
    const-string v0, "Give Deck Status"

    return-object v0

    .line 121
    :pswitch_f2
    const-string v0, "Record Off"

    return-object v0

    .line 119
    :pswitch_f5
    const-string v0, "Record Status"

    return-object v0

    .line 117
    :pswitch_f8
    const-string v0, "Record On"

    return-object v0

    .line 115
    :pswitch_fb
    const-string v0, "Give Tuner Device Status"

    return-object v0

    .line 113
    :pswitch_fe
    const-string v0, "Tuner Device Staus"

    return-object v0

    .line 111
    :pswitch_101
    const-string v0, "Tuner Step Decrement"

    return-object v0

    .line 109
    :pswitch_104
    const-string v0, "Tuner Step Increment"

    return-object v0

    .line 107
    :pswitch_107
    const-string v0, "Image View On"

    return-object v0

    :pswitch_data_10a
    .packed-switch 0x4
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x1a
        :pswitch_ef
        :pswitch_ec
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x32
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
    .end packed-switch

    :pswitch_data_134
    .packed-switch 0x41
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
    .end packed-switch

    :pswitch_data_146
    .packed-switch 0x70
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
    .end packed-switch

    :pswitch_data_150
    .packed-switch 0x7d
        :pswitch_bc
        :pswitch_b9
    .end packed-switch

    :pswitch_data_158
    .packed-switch 0x80
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
    .end packed-switch

    :pswitch_data_16c
    .packed-switch 0x89
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
    .end packed-switch

    :pswitch_data_186
    .packed-switch 0x99
        :pswitch_7d
        :pswitch_7a
    .end packed-switch

    :pswitch_data_18e
    .packed-switch 0x9d
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch

    :pswitch_data_1a2
    .packed-switch 0xc0
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
    .end packed-switch

    :sswitch_data_1b2
    .sparse-switch
        0x0 -> :sswitch_4d
        0xd -> :sswitch_4a
        0xf -> :sswitch_47
        0x64 -> :sswitch_44
        0x67 -> :sswitch_41
        0x7a -> :sswitch_3e
        0x97 -> :sswitch_3b
        0xf8 -> :sswitch_38
        0xff -> :sswitch_35
    .end sparse-switch
.end method


# virtual methods
.method public getDestination()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    return v0
.end method

.method public getOpcode()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    return v0
.end method

.method public getParams()[B
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    return-object v0
.end method

.method public getSource()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v0, "s":Ljava/lang/StringBuffer;
    const-string v1, "<%s> src: %d, dst: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 92
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiCecMessage;->opcodeToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 91
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v1, v1

    if-lez v1, :cond_52

    .line 94
    const-string v1, ", params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v2, v1

    move v3, v4

    :goto_3a
    if-ge v3, v2, :cond_52

    aget-byte v6, v1, v3

    .line 96
    .local v6, "data":B
    const-string v7, " %02X"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    .end local v6    # "data":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 99
    :cond_52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
