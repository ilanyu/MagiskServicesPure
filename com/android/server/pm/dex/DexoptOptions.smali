.class public final Lcom/android/server/pm/dex/DexoptOptions;
.super Ljava/lang/Object;
.source "DexoptOptions.java"


# static fields
.field public static final DEXOPT_AS_SHARED_LIBRARY:I = 0x40

.field public static final DEXOPT_BG_CPUSET:I = 0x4000

.field public static final DEXOPT_BG_TAG:Ljava/lang/String; = "bg-filter:"

.field public static final DEXOPT_BOOT_COMPLETE:I = 0x4

.field public static final DEXOPT_CHECK_FOR_PROFILES_UPDATES:I = 0x1

.field public static final DEXOPT_DOWNGRADE:I = 0x20

.field public static final DEXOPT_FORCE:I = 0x2

.field public static final DEXOPT_IDLE_BACKGROUND_JOB:I = 0x200

.field public static final DEXOPT_INSTALL_WITH_DEX_METADATA_FILE:I = 0x400

.field public static final DEXOPT_ONLY_SECONDARY_DEX:I = 0x8

.field public static final DEXOPT_ONLY_SHARED_DEX:I = 0x10


# instance fields
.field private final mCompilationReason:I

.field private final mCompilerFilter:Ljava/lang/String;

.field private final mFlags:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSplitName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compilationReason"    # I
    .param p3, "flags"    # I

    .line 97
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compilationReason"    # I
    .param p3, "compilerFilter"    # Ljava/lang/String;
    .param p4, "splitName"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-eqz p3, :cond_19

    const-string v0, "bg-filter:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 105
    const-string v0, "bg-filter:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 106
    or-int/lit16 p5, p5, 0x4000

    .line 109
    :cond_19
    const/16 v0, 0x467f

    .line 122
    .local v0, "validityMask":I
    not-int v1, v0

    and-int/2addr v1, p5

    if-nez v1, :cond_2a

    .line 126
    iput-object p1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    .line 128
    iput p5, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    .line 129
    iput-object p4, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    .line 130
    iput p2, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    .line 131
    return-void

    .line 123
    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid flags : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compilerFilter"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 93
    const/4 v2, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 94
    return-void
.end method


# virtual methods
.method public getCompilationReason()I
    .registers 2

    .line 192
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    return v0
.end method

.method public getCompilerFilter()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .line 188
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSplitName()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    return-object v0
.end method

.method public isBootComplete()Z
    .registers 2

    .line 150
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isCheckForProfileUpdates()Z
    .registers 3

    .line 138
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isDexoptAsSharedLibrary()Z
    .registers 2

    .line 172
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDexoptBgCpuset()Z
    .registers 2

    .line 159
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDexoptIdleBackgroundJob()Z
    .registers 2

    .line 176
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDexoptInstallWithDexMetadata()Z
    .registers 2

    .line 180
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDexoptOnlySecondaryDex()Z
    .registers 2

    .line 154
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDexoptOnlySharedDex()Z
    .registers 2

    .line 164
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDowngrade()Z
    .registers 2

    .line 168
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isForce()Z
    .registers 2

    .line 146
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
