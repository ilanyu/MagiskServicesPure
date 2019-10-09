.class public final Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquiredInfo;
.super Ljava/lang/Object;
.source "FingerprintAcquiredInfo.java"


# static fields
.field public static final ACQUIRED_GOOD:I = 0x0

.field public static final ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final ACQUIRED_PARTIAL:I = 0x1

.field public static final ACQUIRED_TOO_FAST:I = 0x5

.field public static final ACQUIRED_TOO_SLOW:I = 0x4

.field public static final ACQUIRED_VENDOR:I = 0x6


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

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 52
    .local v1, "flipped":I
    const-string v2, "ACQUIRED_GOOD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 54
    const-string v2, "ACQUIRED_PARTIAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v1, v1, 0x1

    .line 57
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 58
    const-string v2, "ACQUIRED_INSUFFICIENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    or-int/lit8 v1, v1, 0x2

    .line 61
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 62
    const-string v2, "ACQUIRED_IMAGER_DIRTY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v1, v1, 0x3

    .line 65
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 66
    const-string v2, "ACQUIRED_TOO_SLOW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    or-int/lit8 v1, v1, 0x4

    .line 69
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 70
    const-string v2, "ACQUIRED_TOO_FAST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v1, v1, 0x5

    .line 73
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 74
    const-string v2, "ACQUIRED_VENDOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x6

    .line 77
    :cond_53
    if-eq p0, v1, :cond_6f

    .line 78
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

    .line 80
    :cond_6f
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 25
    if-nez p0, :cond_5

    .line 26
    const-string v0, "ACQUIRED_GOOD"

    return-object v0

    .line 28
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 29
    const-string v0, "ACQUIRED_PARTIAL"

    return-object v0

    .line 31
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 32
    const-string v0, "ACQUIRED_INSUFFICIENT"

    return-object v0

    .line 34
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 35
    const-string v0, "ACQUIRED_IMAGER_DIRTY"

    return-object v0

    .line 37
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 38
    const-string v0, "ACQUIRED_TOO_SLOW"

    return-object v0

    .line 40
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 41
    const-string v0, "ACQUIRED_TOO_FAST"

    return-object v0

    .line 43
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 44
    const-string v0, "ACQUIRED_VENDOR"

    return-object v0

    .line 46
    :cond_29
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
