.class public final Landroid/hardware/broadcastradio/V2_0/MetadataKey;
.super Ljava/lang/Object;
.source "MetadataKey.java"


# static fields
.field public static final ALBUM_ART:I = 0x9

.field public static final DAB_COMPONENT_NAME:I = 0xf

.field public static final DAB_COMPONENT_NAME_SHORT:I = 0x10

.field public static final DAB_ENSEMBLE_NAME:I = 0xb

.field public static final DAB_ENSEMBLE_NAME_SHORT:I = 0xc

.field public static final DAB_SERVICE_NAME:I = 0xd

.field public static final DAB_SERVICE_NAME_SHORT:I = 0xe

.field public static final PROGRAM_NAME:I = 0xa

.field public static final RBDS_PTY:I = 0x3

.field public static final RDS_PS:I = 0x1

.field public static final RDS_PTY:I = 0x2

.field public static final RDS_RT:I = 0x4

.field public static final SONG_ALBUM:I = 0x7

.field public static final SONG_ARTIST:I = 0x6

.field public static final SONG_TITLE:I = 0x5

.field public static final STATION_ICON:I = 0x8


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

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 121
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 122
    const-string v2, "RDS_PS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0x1

    .line 125
    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 126
    const-string v2, "RDS_PTY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v1, v1, 0x2

    .line 129
    :cond_1e
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    .line 130
    const-string v2, "RBDS_PTY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit8 v1, v1, 0x3

    .line 133
    :cond_2a
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_36

    .line 134
    const-string v2, "RDS_RT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v1, v1, 0x4

    .line 137
    :cond_36
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_42

    .line 138
    const-string v2, "SONG_TITLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v1, v1, 0x5

    .line 141
    :cond_42
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4e

    .line 142
    const-string v2, "SONG_ARTIST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v1, v1, 0x6

    .line 145
    :cond_4e
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5a

    .line 146
    const-string v2, "SONG_ALBUM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/lit8 v1, v1, 0x7

    .line 149
    :cond_5a
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_67

    .line 150
    const-string v2, "STATION_ICON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v1, v1, 0x8

    .line 153
    :cond_67
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_74

    .line 154
    const-string v2, "ALBUM_ART"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit8 v1, v1, 0x9

    .line 157
    :cond_74
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_81

    .line 158
    const-string v2, "PROGRAM_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v1, v1, 0xa

    .line 161
    :cond_81
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_8e

    .line 162
    const-string v2, "DAB_ENSEMBLE_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    or-int/lit8 v1, v1, 0xb

    .line 165
    :cond_8e
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9b

    .line 166
    const-string v2, "DAB_ENSEMBLE_NAME_SHORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    or-int/lit8 v1, v1, 0xc

    .line 169
    :cond_9b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_a8

    .line 170
    const-string v2, "DAB_SERVICE_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    or-int/lit8 v1, v1, 0xd

    .line 173
    :cond_a8
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_b5

    .line 174
    const-string v2, "DAB_SERVICE_NAME_SHORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    or-int/lit8 v1, v1, 0xe

    .line 177
    :cond_b5
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_c2

    .line 178
    const-string v2, "DAB_COMPONENT_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    or-int/lit8 v1, v1, 0xf

    .line 181
    :cond_c2
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_cf

    .line 182
    const-string v2, "DAB_COMPONENT_NAME_SHORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    or-int/lit8 v1, v1, 0x10

    .line 185
    :cond_cf
    if-eq p0, v1, :cond_eb

    .line 186
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

    .line 188
    :cond_eb
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 67
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 68
    const-string v0, "RDS_PS"

    return-object v0

    .line 70
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 71
    const-string v0, "RDS_PTY"

    return-object v0

    .line 73
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 74
    const-string v0, "RBDS_PTY"

    return-object v0

    .line 76
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 77
    const-string v0, "RDS_RT"

    return-object v0

    .line 79
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 80
    const-string v0, "SONG_TITLE"

    return-object v0

    .line 82
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    .line 83
    const-string v0, "SONG_ARTIST"

    return-object v0

    .line 85
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    .line 86
    const-string v0, "SONG_ALBUM"

    return-object v0

    .line 88
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    .line 89
    const-string v0, "STATION_ICON"

    return-object v0

    .line 91
    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    .line 92
    const-string v0, "ALBUM_ART"

    return-object v0

    .line 94
    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    .line 95
    const-string v0, "PROGRAM_NAME"

    return-object v0

    .line 97
    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    .line 98
    const-string v0, "DAB_ENSEMBLE_NAME"

    return-object v0

    .line 100
    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    .line 101
    const-string v0, "DAB_ENSEMBLE_NAME_SHORT"

    return-object v0

    .line 103
    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    .line 104
    const-string v0, "DAB_SERVICE_NAME"

    return-object v0

    .line 106
    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    .line 107
    const-string v0, "DAB_SERVICE_NAME_SHORT"

    return-object v0

    .line 109
    :cond_5b
    const/16 v0, 0xf

    if-ne p0, v0, :cond_62

    .line 110
    const-string v0, "DAB_COMPONENT_NAME"

    return-object v0

    .line 112
    :cond_62
    const/16 v0, 0x10

    if-ne p0, v0, :cond_69

    .line 113
    const-string v0, "DAB_COMPONENT_NAME_SHORT"

    return-object v0

    .line 115
    :cond_69
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
