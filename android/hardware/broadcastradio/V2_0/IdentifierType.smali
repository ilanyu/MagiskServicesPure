.class public final Landroid/hardware/broadcastradio/V2_0/IdentifierType;
.super Ljava/lang/Object;
.source "IdentifierType.java"


# static fields
.field public static final AMFM_FREQUENCY:I = 0x1

.field public static final DAB_ENSEMBLE:I = 0x6

.field public static final DAB_FREQUENCY:I = 0x8

.field public static final DAB_SCID:I = 0x7

.field public static final DAB_SID_EXT:I = 0x5

.field public static final DRMO_FREQUENCY:I = 0xa

.field public static final DRMO_SERVICE_ID:I = 0x9

.field public static final HD_STATION_ID_EXT:I = 0x3

.field public static final HD_STATION_NAME:I = 0x4

.field public static final INVALID:I = 0x0

.field public static final RDS_PI:I = 0x2

.field public static final SXM_CHANNEL:I = 0xd

.field public static final SXM_SERVICE_ID:I = 0xc

.field public static final VENDOR_END:I = 0x7cf

.field public static final VENDOR_START:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 159
    .local v1, "flipped":I
    and-int/lit16 v2, p0, 0x3e8

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_13

    .line 160
    const-string v2, "VENDOR_START"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    or-int/lit16 v1, v1, 0x3e8

    .line 163
    :cond_13
    and-int/lit16 v2, p0, 0x7cf

    const/16 v3, 0x7cf

    if-ne v2, v3, :cond_20

    .line 164
    const-string v2, "VENDOR_END"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    or-int/lit16 v1, v1, 0x7cf

    .line 167
    :cond_20
    const-string v2, "INVALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    .line 169
    const-string v2, "AMFM_FREQUENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    or-int/lit8 v1, v1, 0x1

    .line 172
    :cond_31
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3d

    .line 173
    const-string v2, "RDS_PI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    or-int/lit8 v1, v1, 0x2

    .line 176
    :cond_3d
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_49

    .line 177
    const-string v2, "HD_STATION_ID_EXT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    or-int/lit8 v1, v1, 0x3

    .line 180
    :cond_49
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_55

    .line 181
    const-string v2, "HD_STATION_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    or-int/lit8 v1, v1, 0x4

    .line 184
    :cond_55
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_61

    .line 185
    const-string v2, "DAB_SID_EXT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    or-int/lit8 v1, v1, 0x5

    .line 188
    :cond_61
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6d

    .line 189
    const-string v2, "DAB_ENSEMBLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    or-int/lit8 v1, v1, 0x6

    .line 192
    :cond_6d
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_79

    .line 193
    const-string v2, "DAB_SCID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    or-int/lit8 v1, v1, 0x7

    .line 196
    :cond_79
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_86

    .line 197
    const-string v2, "DAB_FREQUENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    or-int/lit8 v1, v1, 0x8

    .line 200
    :cond_86
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_93

    .line 201
    const-string v2, "DRMO_SERVICE_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    or-int/lit8 v1, v1, 0x9

    .line 204
    :cond_93
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a0

    .line 205
    const-string v2, "DRMO_FREQUENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    or-int/lit8 v1, v1, 0xa

    .line 208
    :cond_a0
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_ad

    .line 209
    const-string v2, "SXM_SERVICE_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    or-int/lit8 v1, v1, 0xc

    .line 212
    :cond_ad
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_ba

    .line 213
    const-string v2, "SXM_CHANNEL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    or-int/lit8 v1, v1, 0xd

    .line 216
    :cond_ba
    if-eq p0, v1, :cond_d6

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_d6
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 108
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_7

    .line 109
    const-string v0, "VENDOR_START"

    return-object v0

    .line 111
    :cond_7
    const/16 v0, 0x7cf

    if-ne p0, v0, :cond_e

    .line 112
    const-string v0, "VENDOR_END"

    return-object v0

    .line 114
    :cond_e
    if-nez p0, :cond_13

    .line 115
    const-string v0, "INVALID"

    return-object v0

    .line 117
    :cond_13
    const/4 v0, 0x1

    if-ne p0, v0, :cond_19

    .line 118
    const-string v0, "AMFM_FREQUENCY"

    return-object v0

    .line 120
    :cond_19
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1f

    .line 121
    const-string v0, "RDS_PI"

    return-object v0

    .line 123
    :cond_1f
    const/4 v0, 0x3

    if-ne p0, v0, :cond_25

    .line 124
    const-string v0, "HD_STATION_ID_EXT"

    return-object v0

    .line 126
    :cond_25
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2b

    .line 127
    const-string v0, "HD_STATION_NAME"

    return-object v0

    .line 129
    :cond_2b
    const/4 v0, 0x5

    if-ne p0, v0, :cond_31

    .line 130
    const-string v0, "DAB_SID_EXT"

    return-object v0

    .line 132
    :cond_31
    const/4 v0, 0x6

    if-ne p0, v0, :cond_37

    .line 133
    const-string v0, "DAB_ENSEMBLE"

    return-object v0

    .line 135
    :cond_37
    const/4 v0, 0x7

    if-ne p0, v0, :cond_3d

    .line 136
    const-string v0, "DAB_SCID"

    return-object v0

    .line 138
    :cond_3d
    const/16 v0, 0x8

    if-ne p0, v0, :cond_44

    .line 139
    const-string v0, "DAB_FREQUENCY"

    return-object v0

    .line 141
    :cond_44
    const/16 v0, 0x9

    if-ne p0, v0, :cond_4b

    .line 142
    const-string v0, "DRMO_SERVICE_ID"

    return-object v0

    .line 144
    :cond_4b
    const/16 v0, 0xa

    if-ne p0, v0, :cond_52

    .line 145
    const-string v0, "DRMO_FREQUENCY"

    return-object v0

    .line 147
    :cond_52
    const/16 v0, 0xc

    if-ne p0, v0, :cond_59

    .line 148
    const-string v0, "SXM_SERVICE_ID"

    return-object v0

    .line 150
    :cond_59
    const/16 v0, 0xd

    if-ne p0, v0, :cond_60

    .line 151
    const-string v0, "SXM_CHANNEL"

    return-object v0

    .line 153
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
