.class public Lcom/android/server/pm/PackageManagerServiceCompilerMapping;
.super Ljava/lang/Object;
.source "PackageManagerServiceCompilerMapping.java"


# static fields
.field static final REASON_SHARED_INDEX:I = 0x6

.field public static final REASON_STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 28
    const-string v0, "first-boot"

    const-string v1, "boot"

    const-string v2, "install"

    const-string v3, "bg-dexopt"

    const-string v4, "ab-ota"

    const-string v5, "inactive"

    const-string/jumbo v6, "shared"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x7

    if-ne v1, v0, :cond_32

    .line 39
    const-string/jumbo v0, "shared"

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 42
    return-void

    .line 40
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "REASON_STRINGS not correct because of shared index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "REASON_STRINGS not correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkProperties()V
    .registers 6

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "toThrow":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    .local v1, "reason":I
    :goto_2
    const/4 v2, 0x6

    if-gt v1, v2, :cond_49

    .line 82
    :try_start_5
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getSystemPropertyName(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "sysPropName":Ljava/lang/String;
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 89
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getAndCheckValidity(I)Ljava/lang/String;

    .line 95
    .end local v2    # "sysPropName":Ljava/lang/String;
    goto :goto_46

    .line 84
    .restart local v2    # "sysPropName":Ljava/lang/String;
    :cond_15
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reason system property name \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" for reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_38

    .line 90
    .end local v2    # "sysPropName":Ljava/lang/String;
    :catch_38
    move-exception v2

    .line 91
    .local v2, "exc":Ljava/lang/Exception;
    if-nez v0, :cond_43

    .line 92
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "PMS compiler filter settings are bad."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 94
    :cond_43
    invoke-virtual {v0, v2}, Ljava/lang/RuntimeException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 79
    .end local v2    # "exc":Ljava/lang/Exception;
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 98
    .end local v1    # "reason":I
    :cond_49
    if-nez v0, :cond_4c

    .line 101
    return-void

    .line 99
    :cond_4c
    throw v0
.end method

.method private static getAndCheckValidity(I)Ljava/lang/String;
    .registers 5
    .param p0, "reason"    # I

    .line 55
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getSystemPropertyName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "sysPropValue":Ljava/lang/String;
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    .line 57
    invoke-static {v0}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 60
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->isFilterAllowedForReason(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 65
    return-object v0

    .line 61
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" not allowed (reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_45
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" not valid (reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getCompilerFilterForReason(I)Ljava/lang/String;
    .registers 2
    .param p0, "reason"    # I

    .line 104
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getAndCheckValidity(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultCompilerFilter()Ljava/lang/String;
    .registers 2

    .line 114
    const-string v0, "dalvik.vm.dex2oat-filter"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_21

    .line 119
    :cond_f
    invoke-static {v0}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 120
    invoke-static {v0}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1d

    .line 124
    :cond_1c
    return-object v0

    .line 121
    :cond_1d
    :goto_1d
    const-string/jumbo v1, "speed"

    return-object v1

    .line 116
    :cond_21
    :goto_21
    const-string/jumbo v1, "speed"

    return-object v1
.end method

.method public static getReasonName(I)Ljava/lang/String;
    .registers 4
    .param p0, "reason"    # I

    .line 128
    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    .line 129
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 131
    :cond_7
    if-ltz p0, :cond_13

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_13

    .line 134
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 132
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemPropertyName(I)Ljava/lang/String;
    .registers 4
    .param p0, "reason"    # I

    .line 45
    if-ltz p0, :cond_1e

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1e

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pm.dexopt."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isFilterAllowedForReason(ILjava/lang/String;)Z
    .registers 3
    .param p0, "reason"    # I
    .param p1, "filter"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x6

    if-ne p0, v0, :cond_c

    invoke-static {p1}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method
