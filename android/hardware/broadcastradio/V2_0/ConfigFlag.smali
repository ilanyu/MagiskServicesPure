.class public final Landroid/hardware/broadcastradio/V2_0/ConfigFlag;
.super Ljava/lang/Object;
.source "ConfigFlag.java"


# static fields
.field public static final DAB_DAB_LINKING:I = 0x6

.field public static final DAB_DAB_SOFT_LINKING:I = 0x8

.field public static final DAB_FM_LINKING:I = 0x7

.field public static final DAB_FM_SOFT_LINKING:I = 0x9

.field public static final FORCE_ANALOG:I = 0x2

.field public static final FORCE_DIGITAL:I = 0x3

.field public static final FORCE_MONO:I = 0x1

.field public static final RDS_AF:I = 0x4

.field public static final RDS_REG:I = 0x5


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

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 92
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 93
    const-string v2, "FORCE_MONO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v1, v1, 0x1

    .line 96
    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 97
    const-string v2, "FORCE_ANALOG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v1, v1, 0x2

    .line 100
    :cond_1e
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    .line 101
    const-string v2, "FORCE_DIGITAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v1, v1, 0x3

    .line 104
    :cond_2a
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_36

    .line 105
    const-string v2, "RDS_AF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v1, v1, 0x4

    .line 108
    :cond_36
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_42

    .line 109
    const-string v2, "RDS_REG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v1, v1, 0x5

    .line 112
    :cond_42
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4e

    .line 113
    const-string v2, "DAB_DAB_LINKING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v1, v1, 0x6

    .line 116
    :cond_4e
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5a

    .line 117
    const-string v2, "DAB_FM_LINKING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v1, v1, 0x7

    .line 120
    :cond_5a
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_67

    .line 121
    const-string v2, "DAB_DAB_SOFT_LINKING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v1, v1, 0x8

    .line 124
    :cond_67
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_74

    .line 125
    const-string v2, "DAB_FM_SOFT_LINKING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit8 v1, v1, 0x9

    .line 128
    :cond_74
    if-eq p0, v1, :cond_90

    .line 129
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

    .line 131
    :cond_90
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 59
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 60
    const-string v0, "FORCE_MONO"

    return-object v0

    .line 62
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 63
    const-string v0, "FORCE_ANALOG"

    return-object v0

    .line 65
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 66
    const-string v0, "FORCE_DIGITAL"

    return-object v0

    .line 68
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 69
    const-string v0, "RDS_AF"

    return-object v0

    .line 71
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 72
    const-string v0, "RDS_REG"

    return-object v0

    .line 74
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    .line 75
    const-string v0, "DAB_DAB_LINKING"

    return-object v0

    .line 77
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    .line 78
    const-string v0, "DAB_FM_LINKING"

    return-object v0

    .line 80
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    .line 81
    const-string v0, "DAB_DAB_SOFT_LINKING"

    return-object v0

    .line 83
    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    .line 84
    const-string v0, "DAB_FM_SOFT_LINKING"

    return-object v0

    .line 86
    :cond_38
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
