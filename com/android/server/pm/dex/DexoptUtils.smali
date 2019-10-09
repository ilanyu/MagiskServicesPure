.class public final Lcom/android/server/pm/dex/DexoptUtils;
.super Ljava/lang/Object;
.source "DexoptUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DexoptUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "classpath"    # Ljava/lang/String;
    .param p1, "classLoaderName"    # Ljava/lang/String;

    .line 248
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    return-object p0

    .line 251
    :cond_9
    move-object v0, p1

    .line 252
    .local v0, "classLoaderDexoptEncoding":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 253
    const-string v0, "PCL"

    goto :goto_32

    .line 254
    :cond_13
    invoke-static {p1}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 255
    const-string v0, "DLC"

    goto :goto_32

    .line 257
    :cond_1c
    const-string v1, "DexoptUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported classLoaderName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "cl1"    # Ljava/lang/String;
    .param p1, "cl2"    # Ljava/lang/String;

    .line 271
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "&"

    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_34

    .line 275
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    return-object p1

    .line 276
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    return-object p0

    .line 277
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 273
    :cond_34
    :goto_34
    const-string v0, "&"

    return-object v0
.end method

.method private static encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "classpath"    # Ljava/lang/String;
    .param p1, "newElement"    # Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    goto :goto_1c

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0
.end method

.method private static encodeClasspath([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "classpathElements"    # [Ljava/lang/String;

    .line 218
    if-eqz p0, :cond_27

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_27

    .line 221
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_22

    aget-object v3, p0, v2

    .line 223
    .local v3, "element":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 224
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_1c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .end local v3    # "element":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 228
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 219
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_27
    :goto_27
    const-string v0, ""

    return-object v0
.end method

.method public static getClassLoaderContexts(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Z)[Ljava/lang/String;
    .registers 18
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "sharedLibraries"    # [Ljava/lang/String;
    .param p2, "pathsWithCode"    # [Z

    move-object v0, p0

    .line 69
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "sharedLibrariesClassPath":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "baseApkContextClassLoader":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_18

    .line 75
    new-array v3, v5, [Ljava/lang/String;

    aput-object v2, v3, v4

    return-object v3

    .line 81
    :cond_18
    invoke-static {v0}, Lcom/android/server/pm/dex/DexoptUtils;->getSplitRelativeCodePaths(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "splitRelativeCodePaths":[Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "baseApkName":Ljava/lang/String;
    nop

    .line 87
    invoke-static {v1, v6}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "sharedLibrariesAndBaseClassPath":Ljava/lang/String;
    array-length v8, v3

    add-int/2addr v8, v5

    new-array v8, v8, [Ljava/lang/String;

    .line 93
    .local v8, "classLoaderContexts":[Ljava/lang/String;
    aget-boolean v9, p2, v4

    const/4 v10, 0x0

    if-eqz v9, :cond_39

    move-object v9, v2

    goto :goto_3a

    :cond_39
    move-object v9, v10

    :goto_3a
    aput-object v9, v8, v4

    .line 95
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v9

    if-eqz v9, :cond_a3

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    if-nez v9, :cond_47

    goto :goto_a3

    .line 123
    :cond_47
    array-length v9, v3

    new-array v9, v9, [Ljava/lang/String;

    .line 124
    .local v9, "splitClassLoaderEncodingCache":[Ljava/lang/String;
    nop

    .local v4, "i":I
    :goto_4b
    array-length v11, v3

    if-ge v4, v11, :cond_5d

    .line 125
    aget-object v11, v3, v4

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    aget-object v12, v12, v4

    invoke-static {v11, v12}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v4

    .line 124
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 128
    .end local v4    # "i":I
    :cond_5d
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "splitDependencyOnBase":Ljava/lang/String;
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 135
    .local v11, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    move v12, v5

    .local v12, "i":I
    :goto_66
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_7a

    .line 136
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 137
    .local v13, "splitIndex":I
    aget-boolean v14, p2, v13

    if-eqz v14, :cond_77

    .line 139
    invoke-static {v13, v9, v11, v8, v4}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .end local v13    # "splitIndex":I
    :cond_77
    add-int/lit8 v12, v12, 0x1

    goto :goto_66

    .line 147
    .end local v12    # "i":I
    :cond_7a
    nop

    .local v5, "i":I
    :goto_7b
    array-length v12, v8

    if-ge v5, v12, :cond_c2

    .line 148
    const-string v12, ""

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    add-int/lit8 v14, v5, -0x1

    aget-object v13, v13, v14

    invoke-static {v12, v13}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 149
    .local v12, "splitClassLoader":Ljava/lang/String;
    aget-boolean v13, p2, v5

    if-eqz v13, :cond_9e

    .line 152
    aget-object v13, v8, v5

    if-nez v13, :cond_95

    .line 153
    nop

    .line 154
    move-object v13, v12

    goto :goto_9b

    :cond_95
    aget-object v13, v8, v5

    invoke-static {v12, v13}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_9b
    aput-object v13, v8, v5

    goto :goto_a0

    .line 158
    :cond_9e
    aput-object v10, v8, v5

    .line 147
    .end local v12    # "splitClassLoader":Ljava/lang/String;
    :goto_a0
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    .line 99
    .end local v4    # "splitDependencyOnBase":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v9    # "splitClassLoaderEncodingCache":[Ljava/lang/String;
    .end local v11    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :cond_a3
    :goto_a3
    move-object v4, v7

    .line 100
    .local v4, "classpath":Ljava/lang/String;
    nop

    .restart local v5    # "i":I
    :goto_a5
    array-length v9, v8

    if-ge v5, v9, :cond_c1

    .line 101
    aget-boolean v9, p2, v5

    if-eqz v9, :cond_b3

    .line 102
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_b4

    :cond_b3
    move-object v9, v10

    :goto_b4
    aput-object v9, v8, v5

    .line 110
    add-int/lit8 v9, v5, -0x1

    aget-object v9, v3, v9

    invoke-static {v4, v9}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_a5

    .line 112
    .end local v4    # "classpath":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_c1
    nop

    .line 163
    :cond_c2
    return-object v8
.end method

.method private static getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "index"    # I
    .param p1, "splitClassLoaderEncodingCache"    # [Ljava/lang/String;
    .param p3, "classLoaderContexts"    # [Ljava/lang/String;
    .param p4, "splitDependencyOnBase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 192
    .local p2, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-nez p0, :cond_3

    .line 193
    return-object p4

    .line 196
    :cond_3
    aget-object v0, p3, p0

    if-eqz v0, :cond_a

    .line 197
    aget-object v0, p3, p0

    return-object v0

    .line 200
    :cond_a
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 201
    .local v0, "parent":I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "parentDependencies":Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 206
    nop

    .line 207
    move-object v2, v1

    goto :goto_24

    :cond_1c
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    invoke-static {v2, v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "splitContext":Ljava/lang/String;
    :goto_24
    aput-object v2, p3, p0

    .line 209
    return-object v2
.end method

.method private static getSplitRelativeCodePaths(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;
    .registers 10
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 352
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "baseCodePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "splitCodePaths":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 355
    .local v2, "splitRelativeCodePaths":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    array-length v4, v1

    if-ge v3, v4, :cond_50

    .line 356
    new-instance v4, Ljava/io/File;

    aget-object v5, v1, v3

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v4, "pathFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 359
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "basePath":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 361
    const-string v6, "DexoptUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Split paths have different base paths: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v4    # "pathFile":Ljava/io/File;
    .end local v5    # "basePath":Ljava/lang/String;
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 365
    .end local v3    # "i":I
    :cond_50
    return-object v2
.end method

.method static processContextForDexLoad(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 307
    .local p0, "classLoadersNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "classPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_88

    .line 311
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_80

    .line 316
    const-string v0, ""

    .line 320
    .local v0, "parentContext":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_49

    .line 321
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 322
    return-object v3

    .line 324
    :cond_27
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "classpath":Ljava/lang/String;
    nop

    .line 326
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v0, v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .end local v2    # "classpath":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 330
    .end local v1    # "i":I
    :cond_49
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 331
    .local v2, "loadingClassLoader":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 332
    return-object v3

    .line 334
    :cond_57
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "loadedDexPaths":[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    .line 336
    .local v4, "loadedDexPathsContext":[Ljava/lang/String;
    const-string v5, ""

    .line 337
    .local v5, "currentLoadedDexPathClasspath":Ljava/lang/String;
    nop

    .restart local v1    # "i":I
    :goto_69
    array-length v6, v3

    if-ge v1, v6, :cond_7f

    .line 338
    aget-object v6, v3, v1

    .line 339
    .local v6, "dexPath":Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 341
    .local v7, "currentContext":Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 342
    invoke-static {v5, v6}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 337
    .end local v6    # "dexPath":Ljava/lang/String;
    .end local v7    # "currentContext":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 344
    .end local v1    # "i":I
    :cond_7f
    return-object v4

    .line 312
    .end local v0    # "parentContext":Ljava/lang/String;
    .end local v2    # "loadingClassLoader":Ljava/lang/String;
    .end local v3    # "loadedDexPaths":[Ljava/lang/String;
    .end local v4    # "loadedDexPathsContext":[Ljava/lang/String;
    .end local v5    # "currentLoadedDexPathClasspath":Ljava/lang/String;
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty classLoadersNames"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of the class loader names and the dex paths do not match."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
