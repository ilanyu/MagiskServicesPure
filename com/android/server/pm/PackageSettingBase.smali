.class public abstract Lcom/android/server/pm/PackageSettingBase;
.super Lcom/android/server/pm/SettingBase;
.source "PackageSettingBase.java"


# static fields
.field static final DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

.field private static final EMPTY_INT_ARRAY:[I


# instance fields
.field categoryHint:I

.field childPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field cpuAbiOverrideString:Ljava/lang/String;

.field firstInstallTime:J

.field installPermissionsFixed:Z

.field installerPackageName:Ljava/lang/String;

.field isOrphaned:Z

.field keySetData:Lcom/android/server/pm/PackageKeySetData;

.field lastUpdateTime:J

.field legacyNativeLibraryPathString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field oldCodePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field parentPackageName:Ljava/lang/String;

.field primaryCpuAbiString:Ljava/lang/String;

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field secondaryCpuAbiString:Ljava/lang/String;

.field signatures:Lcom/android/server/pm/PackageSignatures;

.field timeStamp:J

.field uidError:Z

.field updateAvailable:Z

.field private final userState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/PackageUserState;",
            ">;"
        }
    .end annotation
.end field

.field usesStaticLibraries:[Ljava/lang/String;

.field usesStaticLibrariesVersions:[J

.field verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

.field versionCode:J

.field volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->EMPTY_INT_ARRAY:[I

    .line 108
    new-instance v0, Landroid/content/pm/PackageUserState;

    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;Ljava/lang/String;)V
    .registers 4
    .param p1, "base"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "realName"    # Ljava/lang/String;

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 106
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 163
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->doCopy(Lcom/android/server/pm/PackageSettingBase;)V

    .line 166
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)V
    .registers 33
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "pVersionCode"    # J
    .param p11, "pkgFlags"    # I
    .param p12, "pkgPrivateFlags"    # I
    .param p13, "parentPackageName"    # Ljava/lang/String;
    .param p15, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p16, "usesStaticLibrariesVersions"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    .local p14, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p14

    .line 142
    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct {v9, v11, v12}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 106
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, v9, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v9, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    .line 130
    const/4 v0, -0x1

    iput v0, v9, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 143
    move-object/from16 v13, p1

    iput-object v13, v9, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 144
    move-object/from16 v14, p2

    iput-object v14, v9, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 145
    move-object/from16 v15, p13

    iput-object v15, v9, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    .line 146
    if-eqz v10, :cond_30

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    iput-object v0, v9, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    .line 148
    move-object/from16 v7, p15

    iput-object v7, v9, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 149
    move-object/from16 v8, p16

    iput-object v8, v9, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 150
    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-wide/from16 v7, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 152
    return-void
.end method

.method private doCopy(Lcom/android/server/pm/PackageSettingBase;)V
    .registers 7
    .param p1, "orig"    # Lcom/android/server/pm/PackageSettingBase;

    .line 235
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_e

    :cond_d
    move-object v0, v1

    :goto_e
    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    .line 237
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 238
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 239
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 240
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 241
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    .line 242
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 243
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    .line 244
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 245
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 246
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 248
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    .line 249
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 250
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 251
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 252
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 253
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 254
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 255
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 256
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5e
    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_7c

    .line 258
    iget-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageUserState;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 260
    .end local v0    # "i":I
    :cond_7c
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 261
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 262
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 263
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 264
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_9c

    .line 265
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_9d

    .line 266
    :cond_9c
    move-object v0, v1

    :goto_9d
    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 267
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    if-eqz v0, :cond_ad

    .line 268
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    nop

    .line 269
    :cond_ad
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 270
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 271
    return-void
.end method

.method private modifyUserState(I)Landroid/content/pm/PackageUserState;
    .registers 4
    .param p1, "userId"    # I

    .line 274
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 275
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-nez v0, :cond_15

    .line 276
    new-instance v1, Landroid/content/pm/PackageUserState;

    invoke-direct {v1}, Landroid/content/pm/PackageUserState;-><init>()V

    move-object v0, v1

    .line 277
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    :cond_15
    return-object v0
.end method


# virtual methods
.method addDisabledComponent(Ljava/lang/String;I)V
    .registers 5
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 494
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .registers 5
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 498
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 499
    return-void
.end method

.method clearDomainVerificationStatusForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 589
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 591
    return-void
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .registers 2
    .param p1, "orig"    # Lcom/android/server/pm/PackageSettingBase;

    .line 230
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->doCopy(Lcom/android/server/pm/PackageSettingBase;)V

    .line 232
    return-void
.end method

.method public bridge synthetic copyFrom(Lcom/android/server/pm/SettingBase;)V
    .registers 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 510
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 511
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_11

    .line 512
    iget-object v0, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    nop

    .line 513
    .local v0, "changed":Z
    :cond_11
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 514
    return v0
.end method

.method enableComponentLPw(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 502
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 503
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_11

    .line 504
    iget-object v0, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    nop

    .line 505
    .local v0, "changed":Z
    :cond_11
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 506
    return v0
.end method

.method getCeDataInode(I)J
    .registers 4
    .param p1, "userId"    # I

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    return-wide v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .registers 5
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 527
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 528
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_12

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 529
    const/4 v1, 0x1

    return v1

    .line 530
    :cond_12
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_20

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 531
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 532
    const/4 v1, 0x2

    return v1

    .line 534
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method getDisabledComponents(I)Landroid/util/ArraySet;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 461
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method getDomainVerificationStatusForUser(I)J
    .registers 8
    .param p1, "userId"    # I

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 575
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget v1, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    int-to-long v1, v1

    .line 576
    .local v1, "result":J
    iget v3, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    .line 577
    return-wide v1
.end method

.method getEnabled(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->enabled:I

    return v0
.end method

.method getEnabledComponents(I)Landroid/util/ArraySet;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method getHarmfulAppWarning(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 630
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 631
    .local v0, "userState":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    return-object v1
.end method

.method getHidden(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    return v0
.end method

.method getInstallReason(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->installReason:I

    return v0
.end method

.method getInstalled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->installed:Z

    return v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstantApp(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    return v0
.end method

.method getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 2

    .line 562
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    return-object v0
.end method

.method getLastDisabledAppCaller(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getNotInstalledUserIds()[I
    .registers 8

    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 545
    .local v1, "userStateCount":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "count":I
    :goto_a
    if-ge v0, v1, :cond_1d

    .line 546
    iget-object v4, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageUserState;

    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v4, :cond_1a

    .line 547
    add-int/lit8 v3, v3, 0x1

    .line 545
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 550
    .end local v0    # "i":I
    :cond_1d
    if-nez v3, :cond_22

    sget-object v0, Lcom/android/server/pm/PackageSettingBase;->EMPTY_INT_ARRAY:[I

    return-object v0

    .line 551
    :cond_22
    new-array v0, v3, [I

    .line 552
    .local v0, "excludedUserIds":[I
    const/4 v4, 0x0

    .line 553
    .local v4, "idx":I
    nop

    .local v2, "i":I
    :goto_26
    if-ge v2, v1, :cond_42

    .line 554
    iget-object v5, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageUserState;

    iget-boolean v5, v5, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v5, :cond_3f

    .line 555
    add-int/lit8 v5, v4, 0x1

    .local v5, "idx":I
    iget-object v6, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v0, v4

    .line 553
    .end local v4    # "idx":I
    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 558
    .end local v2    # "i":I
    :cond_42
    return-object v0
.end method

.method getNotLaunched(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    return v0
.end method

.method getOverlayPaths(I)[Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;
    .registers 2

    .line 47
    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    return-object v0
.end method

.method public getSignatures()[Landroid/content/pm/Signature;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v0
.end method

.method getStopped(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    return v0
.end method

.method getSuspended(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    return v0
.end method

.method getUserState()Landroid/util/SparseArray;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/PackageUserState;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    return-object v0
.end method

.method getVirtulalPreload(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 418
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    return v0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "codePath"    # Ljava/io/File;
    .param p2, "resourcePath"    # Ljava/io/File;
    .param p3, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p4, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p5, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p6, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p7, "pVersionCode"    # J

    .line 171
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 172
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 174
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 175
    iput-object p3, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 176
    iput-object p4, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 177
    iput-object p5, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 178
    iput-object p6, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 179
    iput-wide p7, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 180
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 181
    return-void
.end method

.method isAnyInstalled([I)Z
    .registers 7
    .param p1, "users"    # [I

    .line 337
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget v3, p1, v2

    .line 338
    .local v3, "user":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_11

    .line 339
    const/4 v0, 0x1

    return v0

    .line 337
    .end local v3    # "user":I
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 342
    :cond_14
    return v1
.end method

.method public isSharedUser()Z
    .registers 2

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isUpdateAvailable()Z
    .registers 2

    .line 208
    iget-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    return v0
.end method

.method modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;
    .registers 7
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .param p3, "enabled"    # Z

    .line 483
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 484
    .local v0, "state":Landroid/content/pm/PackageUserState;
    const/4 v1, 0x1

    if-eqz p2, :cond_12

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_12

    .line 485
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 487
    :cond_12
    if-eqz p3, :cond_1f

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_1f

    .line 488
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 490
    :cond_1f
    return-object v0
.end method

.method queryInstalledUsers([IZ)[I
    .registers 9
    .param p1, "users"    # [I
    .param p2, "installed"    # Z

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "num":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "num":I
    .local v3, "num":I
    :goto_5
    if-ge v0, v1, :cond_14

    aget v4, p1, v0

    .line 348
    .local v4, "user":I
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v5

    if-ne v5, p2, :cond_11

    .line 349
    add-int/lit8 v3, v3, 0x1

    .line 347
    .end local v4    # "user":I
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 352
    :cond_14
    new-array v0, v3, [I

    .line 353
    .local v0, "res":[I
    const/4 v1, 0x0

    .line 354
    .end local v3    # "num":I
    .local v1, "num":I
    array-length v3, p1

    :goto_18
    if-ge v2, v3, :cond_29

    aget v4, p1, v2

    .line 355
    .restart local v4    # "user":I
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v5

    if-ne v5, p2, :cond_26

    .line 356
    aput v4, v0, v1

    .line 357
    add-int/lit8 v1, v1, 0x1

    .line 354
    .end local v4    # "user":I
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 360
    :cond_29
    return-object v0
.end method

.method public readUserState(I)Landroid/content/pm/PackageUserState;
    .registers 4
    .param p1, "userId"    # I

    .line 283
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 284
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-nez v0, :cond_d

    .line 285
    sget-object v1, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-object v1

    .line 287
    :cond_d
    iget v1, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v1, v0, Landroid/content/pm/PackageUserState;->categoryHint:I

    .line 288
    return-object v0
.end method

.method removeUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 539
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 540
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 518
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 519
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 520
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_12

    :cond_11
    move v1, v2

    .line 521
    .local v1, "changed":Z
    :goto_12
    iget-object v3, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v3, :cond_1d

    .line 522
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    nop

    :cond_1d
    or-int/2addr v1, v2

    .line 523
    return v1
.end method

.method setCeDataInode(JI)V
    .registers 5
    .param p1, "ceDataInode"    # J
    .param p3, "userId"    # I

    .line 368
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-wide p1, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 369
    return-void
.end method

.method setDisabledComponents(Landroid/util/ArraySet;I)V
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 469
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 470
    return-void
.end method

.method setDisabledComponentsCopy(Landroid/util/ArraySet;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 478
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    if-eqz p1, :cond_c

    .line 479
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 480
    return-void
.end method

.method setDomainVerificationStatusForUser(III)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "generation"    # I
    .param p3, "userId"    # I

    .line 581
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 582
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 583
    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    .line 584
    iput p2, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 586
    :cond_b
    return-void
.end method

.method setEnabled(IILjava/lang/String;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 292
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 293
    .local v0, "st":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 294
    iput-object p3, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 295
    return-void
.end method

.method setEnabledComponents(Landroid/util/ArraySet;I)V
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 465
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 466
    return-void
.end method

.method setEnabledComponentsCopy(Landroid/util/ArraySet;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 473
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    if-eqz p1, :cond_c

    .line 474
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 475
    return-void
.end method

.method setHarmfulAppWarning(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "harmfulAppWarning"    # Ljava/lang/String;

    .line 625
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 626
    .local v0, "userState":Landroid/content/pm/PackageUserState;
    iput-object p2, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    .line 627
    return-void
.end method

.method setHidden(ZI)V
    .registers 4
    .param p1, "hidden"    # Z
    .param p2, "userId"    # I

    .line 392
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 393
    return-void
.end method

.method setInstallReason(II)V
    .registers 4
    .param p1, "installReason"    # I
    .param p2, "userId"    # I

    .line 318
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput p1, v0, Landroid/content/pm/PackageUserState;->installReason:I

    .line 319
    return-void
.end method

.method setInstalled(ZI)V
    .registers 4
    .param p1, "inst"    # Z
    .param p2, "userId"    # I

    .line 306
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 307
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method setInstantApp(ZI)V
    .registers 4
    .param p1, "instantApp"    # Z
    .param p2, "userId"    # I

    .line 414
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 415
    return-void
.end method

.method setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/content/pm/IntentFilterVerificationInfo;

    .line 566
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 567
    return-void
.end method

.method setNotLaunched(ZI)V
    .registers 4
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .line 384
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 385
    return-void
.end method

.method setOverlayPaths(Ljava/util/List;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 322
    .local p1, "overlayPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    if-nez p1, :cond_8

    const/4 v1, 0x0

    goto :goto_14

    .line 323
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_14
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    .line 324
    return-void
.end method

.method setStopped(ZI)V
    .registers 4
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .line 376
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 377
    return-void
.end method

.method setSuspended(ZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;I)V
    .registers 10
    .param p1, "suspended"    # Z
    .param p2, "suspendingPackage"    # Ljava/lang/String;
    .param p3, "dialogMessage"    # Ljava/lang/String;
    .param p4, "appExtras"    # Landroid/os/PersistableBundle;
    .param p5, "launcherExtras"    # Landroid/os/PersistableBundle;
    .param p6, "userId"    # I

    .line 401
    invoke-direct {p0, p6}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 402
    .local v0, "existingUserState":Landroid/content/pm/PackageUserState;
    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 403
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    move-object v2, p2

    goto :goto_c

    :cond_b
    move-object v2, v1

    :goto_c
    iput-object v2, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    .line 404
    if-eqz p1, :cond_12

    move-object v2, p3

    goto :goto_13

    :cond_12
    move-object v2, v1

    :goto_13
    iput-object v2, v0, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    .line 405
    if-eqz p1, :cond_19

    move-object v2, p4

    goto :goto_1a

    :cond_19
    move-object v2, v1

    :goto_1a
    iput-object v2, v0, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    .line 406
    if-eqz p1, :cond_20

    move-object v1, p5

    nop

    :cond_20
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    .line 407
    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3
    .param p1, "newStamp"    # J

    .line 200
    iput-wide p1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 201
    return-void
.end method

.method public setUpdateAvailable(Z)V
    .registers 2
    .param p1, "updateAvailable"    # Z

    .line 204
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 205
    return-void
.end method

.method setUserState(IJIZZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    .registers 40
    .param p1, "userId"    # I
    .param p2, "ceDataInode"    # J
    .param p4, "enabled"    # I
    .param p5, "installed"    # Z
    .param p6, "stopped"    # Z
    .param p7, "notLaunched"    # Z
    .param p8, "hidden"    # Z
    .param p9, "suspended"    # Z
    .param p10, "suspendingPackage"    # Ljava/lang/String;
    .param p11, "dialogMessage"    # Ljava/lang/String;
    .param p12, "suspendedAppExtras"    # Landroid/os/PersistableBundle;
    .param p13, "suspendedLauncherExtras"    # Landroid/os/PersistableBundle;
    .param p14, "instantApp"    # Z
    .param p15, "virtualPreload"    # Z
    .param p16, "lastDisableAppCaller"    # Ljava/lang/String;
    .param p19, "domainVerifState"    # I
    .param p20, "linkGeneration"    # I
    .param p21, "installReason"    # I
    .param p22, "harmfulAppWarning"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJIZZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/PersistableBundle;",
            "Landroid/os/PersistableBundle;",
            "ZZ",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 433
    .local p17, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p18, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 434
    .local v0, "state":Landroid/content/pm/PackageUserState;
    move-wide/from16 v1, p2

    iput-wide v1, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 435
    move/from16 v3, p4

    iput v3, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 436
    move/from16 v4, p5

    iput-boolean v4, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 437
    move/from16 v5, p6

    iput-boolean v5, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 438
    move/from16 v6, p7

    iput-boolean v6, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 439
    move/from16 v7, p8

    iput-boolean v7, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 440
    move/from16 v8, p9

    iput-boolean v8, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 441
    move-object/from16 v9, p10

    iput-object v9, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    .line 442
    move-object/from16 v10, p11

    iput-object v10, v0, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    .line 443
    move-object/from16 v11, p12

    iput-object v11, v0, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    .line 444
    move-object/from16 v12, p13

    iput-object v12, v0, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    .line 445
    move-object/from16 v13, p16

    iput-object v13, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 446
    move-object/from16 v14, p17

    iput-object v14, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 447
    move-object/from16 v15, p18

    iput-object v15, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 448
    move/from16 v1, p19

    iput v1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 449
    move/from16 v2, p20

    iput v2, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 450
    move/from16 v1, p21

    iput v1, v0, Landroid/content/pm/PackageUserState;->installReason:I

    .line 451
    move/from16 v1, p14

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 452
    move/from16 v1, p15

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 453
    move-object/from16 v1, p22

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    .line 454
    return-void
.end method

.method setVirtualPreload(ZI)V
    .registers 4
    .param p1, "virtualPreload"    # Z
    .param p2, "userId"    # I

    .line 422
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 423
    return-void
.end method

.method public setVolumeUuid(Ljava/lang/String;)V
    .registers 2
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 193
    return-void
.end method

.method protected writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 15
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 594
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 595
    .local v0, "count":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_8c

    .line 596
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 597
    .local v3, "userToken":J
    iget-object v5, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 598
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageUserState;

    .line 599
    .local v6, "state":Landroid/content/pm/PackageUserState;
    const-wide v7, 0x10500000001L

    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 601
    iget-boolean v7, v6, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v7, :cond_2a

    .line 602
    const/4 v7, 0x2

    .local v7, "installType":I
    :goto_29
    goto :goto_31

    .line 603
    .end local v7    # "installType":I
    :cond_2a
    iget-boolean v7, v6, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v7, :cond_30

    .line 604
    const/4 v7, 0x1

    goto :goto_29

    .line 606
    :cond_30
    move v7, v1

    .line 608
    .restart local v7    # "installType":I
    :goto_31
    const-wide v8, 0x10e00000002L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 609
    const-wide v8, 0x10800000003L

    iget-boolean v10, v6, Landroid/content/pm/PackageUserState;->hidden:Z

    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 610
    const-wide v8, 0x10800000004L

    iget-boolean v10, v6, Landroid/content/pm/PackageUserState;->suspended:Z

    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 611
    iget-boolean v8, v6, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v8, :cond_5b

    .line 612
    const-wide v8, 0x10900000009L

    iget-object v10, v6, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 614
    :cond_5b
    const-wide v8, 0x10800000005L

    iget-boolean v10, v6, Landroid/content/pm/PackageUserState;->stopped:Z

    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 615
    const-wide v8, 0x10800000006L

    iget-boolean v10, v6, Landroid/content/pm/PackageUserState;->notLaunched:Z

    xor-int/lit8 v10, v10, 0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 616
    const-wide v8, 0x10e00000007L

    iget v10, v6, Landroid/content/pm/PackageUserState;->enabled:I

    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 617
    const-wide v8, 0x10900000008L

    iget-object v10, v6, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 620
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 595
    .end local v3    # "userToken":J
    .end local v5    # "userId":I
    .end local v6    # "state":Landroid/content/pm/PackageUserState;
    .end local v7    # "installType":I
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 622
    .end local v2    # "i":I
    :cond_8c
    return-void
.end method
