.class public Lcom/android/server/pm/InstructionSets;
.super Ljava/lang/Object;
.source "InstructionSets.java"


# static fields
.field private static final PREFERRED_INSTRUCTION_SET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 37
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllDexCodeInstructionSets()[Ljava/lang/String;
    .registers 4

    .line 94
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 95
    .local v0, "supportedInstructionSets":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 96
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 97
    .local v2, "abi":Ljava/lang/String;
    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 95
    .end local v2    # "abi":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 99
    .end local v1    # "i":I
    :cond_16
    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAllInstructionSets()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 104
    .local v0, "allAbis":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v1, "allInstructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1e

    aget-object v4, v0, v3

    .line 107
    .local v4, "abi":Ljava/lang/String;
    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "instructionSet":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 109
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v4    # "abi":Ljava/lang/String;
    .end local v5    # "instructionSet":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 113
    :cond_1e
    return-object v1
.end method

.method public static getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;
    .registers 5
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 39
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 40
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 42
    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 43
    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 41
    return-object v0

    .line 45
    :cond_1e
    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 46
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 45
    return-object v0

    .line 50
    :cond_29
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getAppDexInstructionSets(Lcom/android/server/pm/PackageSetting;)[Ljava/lang/String;
    .registers 5
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 54
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 55
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 57
    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 58
    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 56
    return-object v0

    .line 60
    :cond_1e
    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 61
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 60
    return-object v0

    .line 65
    :cond_29
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "sharedLibraryIsa"    # Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.dalvik.vm.isa."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "dexCodeIsa":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move-object v1, p0

    goto :goto_1f

    :cond_1e
    move-object v1, v0

    :goto_1f
    return-object v1
.end method

.method public static getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "instructionSets"    # [Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 84
    .local v0, "dexCodeInstructionSets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    .line 85
    .local v3, "instructionSet":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v3    # "instructionSet":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 87
    :cond_16
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static getPreferredInstructionSet()Ljava/lang/String;
    .registers 1

    .line 69
    sget-object v0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    return-object v0
.end method

.method public static getPrimaryInstructionSet(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 117
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 118
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_9
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
