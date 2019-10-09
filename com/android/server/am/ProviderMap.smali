.class public final Lcom/android/server/am/ProviderMap;
.super Ljava/lang/Object;
.source "ProviderMap.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ProviderMap"


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mProvidersByClassPerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProvidersByNamePerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSingletonByClass:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSingletonByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 66
    iput-object p1, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 67
    return-void
.end method

.method private collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .line 199
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    .local p6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    const/4 v0, 0x0

    .line 200
    .local v0, "didSomething":Z
    invoke-virtual {p5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 201
    .local v2, "provider":Lcom/android/server/am/ContentProviderRecord;
    const/4 v3, 0x1

    if-eqz p1, :cond_33

    iget-object v4, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 202
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    if-eqz p2, :cond_33

    iget-object v4, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 204
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    goto :goto_33

    :cond_31
    const/4 v4, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    move v4, v3

    .line 205
    .local v4, "sameComponent":Z
    :goto_34
    if-eqz v4, :cond_49

    iget-object v5, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_42

    if-nez p4, :cond_42

    iget-object v5, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v5, :cond_49

    .line 207
    :cond_42
    if-nez p3, :cond_45

    .line 208
    return v3

    .line 210
    :cond_45
    const/4 v0, 0x1

    .line 211
    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v2    # "provider":Lcom/android/server/am/ContentProviderRecord;
    .end local v4    # "sameComponent":Z
    :cond_49
    goto :goto_9

    .line 214
    :cond_4a
    return v0
.end method

.method private dumpProvider(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;Z)V
    .registers 16
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "r"    # Lcom/android/server/am/ContentProviderRecord;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "dumpAll"    # Z

    .line 376
    array-length v0, p5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_27

    aget-object v2, p5, v1

    .line 377
    .local v2, "s":Ljava/lang/String;
    if-nez p6, :cond_24

    const-string v3, "--proto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 378
    iget-object v0, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_23

    iget-object v0, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_23

    .line 379
    const/4 v4, 0x0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ProviderMap;->dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;)V

    .line 381
    :cond_23
    return-void

    .line 376
    .end local v2    # "s":Ljava/lang/String;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 384
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 386
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "PROVIDER "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 388
    const-string v2, " pid="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    iget-object v2, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_5a

    .line 390
    iget-object v2, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_5f

    .line 392
    :cond_5a
    const-string v2, "(not running)"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    :goto_5f
    if-eqz p6, :cond_65

    .line 395
    const/4 v2, 0x1

    invoke-virtual {p4, p3, v0, v2}, Lcom/android/server/am/ContentProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 397
    :cond_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_3b .. :try_end_66} :catchall_86

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 398
    iget-object v1, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_85

    iget-object v1, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_85

    .line 399
    const-string v1, "    Client:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 401
    const-string v3, "      "

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ProviderMap;->dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;)V

    .line 403
    :cond_85
    return-void

    .line 397
    :catchall_86
    move-exception v2

    :try_start_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "needSep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .line 251
    .local p6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {p6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 252
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;>;"
    const/4 v1, 0x0

    .line 253
    .local v1, "written":Z
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 255
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 256
    .local v3, "r":Lcom/android/server/am/ContentProviderRecord;
    if-eqz p3, :cond_28

    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 257
    goto :goto_9

    .line 259
    :cond_28
    if-eqz p5, :cond_30

    .line 260
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    const/4 p5, 0x0

    .line 263
    :cond_30
    if-eqz p4, :cond_36

    .line 264
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    const/4 p4, 0x0

    .line 267
    :cond_36
    const/4 v1, 0x1

    .line 268
    const-string v4, "  * "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 270
    const-string v4, "    "

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/am/ContentProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 271
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    .end local v3    # "r":Lcom/android/server/am/ContentProviderRecord;
    goto :goto_9

    .line 272
    :cond_45
    return v1
.end method

.method private dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/lang/String;
    .param p4, "needSep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .line 277
    .local p5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 278
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;>;"
    const/4 v1, 0x0

    .line 279
    .local v1, "written":Z
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 281
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 282
    .local v3, "r":Lcom/android/server/am/ContentProviderRecord;
    if-eqz p2, :cond_28

    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 283
    goto :goto_9

    .line 285
    :cond_28
    if-eqz p4, :cond_30

    .line 286
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    const/4 p4, 0x0

    .line 289
    :cond_30
    if-eqz p3, :cond_36

    .line 290
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    const/4 p3, 0x0

    .line 293
    :cond_36
    const/4 v1, 0x1

    .line 294
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    .end local v3    # "r":Lcom/android/server/am/ContentProviderRecord;
    goto :goto_9

    .line 299
    :cond_52
    return v1
.end method

.method private dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;)V
    .registers 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "r"    # Lcom/android/server/am/ContentProviderRecord;
    .param p5, "args"    # [Ljava/lang/String;

    .line 439
    :try_start_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_27

    .line 441
    .local v0, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_5
    iget-object v1, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 442
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iget-object v3, p4, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 441
    invoke-interface {v1, v2, v3, p5}, Landroid/app/IApplicationThread;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0, p1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 446
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_22

    .line 448
    :try_start_1e
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 449
    goto :goto_43

    .line 448
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_2e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_27

    .line 452
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_27
    move-exception v0

    .line 453
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "      Got a RemoteException while dumping the service"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_44

    .line 450
    :catch_2e
    move-exception v0

    .line 451
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      Failure while dumping the provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_43
    nop

    .line 455
    :goto_44
    return-void
.end method

.method private getProvidersByName(I)Ljava/util/HashMap;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    .line 170
    if-ltz p1, :cond_18

    .line 171
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 172
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    if-nez v0, :cond_17

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v1, "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    return-object v1

    .line 177
    .end local v1    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_17
    return-object v0

    .line 170
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getProvidersForName(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v0, "allProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-static {p1}, Lcom/android/internal/util/DumpUtils;->filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v2

    .line 338
    .local v2, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/am/ContentProviderRecord;>;"
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 339
    iget-object v4, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 340
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    iget-object v5, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_38

    .line 341
    iget-object v5, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 340
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 344
    .end local v4    # "i":I
    :cond_38
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/CollectionUtils;->addIf(Ljava/util/List;Ljava/util/Collection;Ljava/util/function/Predicate;)V

    .line 345
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 347
    sget-object v3, Lcom/android/server/am/-$$Lambda$HKoBBTwYfMTyX1rzuzxIXu0s2cc;->INSTANCE:Lcom/android/server/am/-$$Lambda$HKoBBTwYfMTyX1rzuzxIXu0s2cc;

    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 348
    return-object v1

    .line 345
    :catchall_49
    move-exception v4

    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method


# virtual methods
.method collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZILjava/util/ArrayList;)Z
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    move-object v7, p0

    move/from16 v8, p5

    .line 220
    const/4 v9, 0x0

    .line 221
    .local v9, "didSomething":Z
    const/4 v10, -0x1

    if-eq v8, v10, :cond_9

    if-nez v8, :cond_17

    .line 222
    :cond_9
    iget-object v5, v7, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v9

    .line 225
    :cond_17
    const/4 v11, 0x1

    if-nez p3, :cond_1d

    if-eqz v9, :cond_1d

    .line 226
    return v11

    .line 228
    :cond_1d
    if-ne v8, v10, :cond_47

    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    iget-object v0, v7, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v10, v0, :cond_5c

    .line 230
    iget-object v0, v7, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 231
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/HashMap;

    .line 230
    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 232
    if-nez p3, :cond_43

    .line 233
    return v11

    .line 235
    :cond_43
    const/4 v9, 0x1

    .line 229
    :cond_44
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "i":I
    .restart local v0    # "i":I
    goto :goto_20

    .line 239
    .end local v0    # "i":I
    :cond_47
    nop

    .line 240
    invoke-virtual {v7, v8}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v10

    .line 241
    .local v10, "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    if-eqz v10, :cond_5c

    .line 242
    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v5, v10

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    or-int/2addr v9, v0

    .line 246
    .end local v10    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_5c
    return v9
.end method

.method protected dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 19
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z

    .line 353
    move-object v7, p0

    move-object v8, p3

    invoke-direct {v7, v8}, Lcom/android/server/am/ProviderMap;->getProvidersForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 355
    .local v9, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_e

    .line 356
    return v1

    .line 359
    :cond_e
    const/4 v0, 0x0

    .line 360
    .local v0, "needSep":Z
    nop

    .local v1, "i":I
    :goto_10
    move v10, v1

    .end local v1    # "i":I
    .local v10, "i":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_34

    .line 361
    if-eqz v0, :cond_1c

    .line 362
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 364
    :cond_1c
    const/4 v11, 0x1

    .line 365
    .end local v0    # "needSep":Z
    .local v11, "needSep":Z
    const-string v1, ""

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ContentProviderRecord;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvider(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;Z)V

    .line 360
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "i":I
    .restart local v1    # "i":I
    move v0, v11

    goto :goto_10

    .line 367
    .end local v1    # "i":I
    .end local v11    # "needSep":Z
    .restart local v0    # "needSep":Z
    :cond_34
    const/4 v1, 0x1

    return v1
.end method

.method protected dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 412
    array-length v0, p4

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 413
    .local v0, "newArgs":[Ljava/lang/String;
    array-length v2, p4

    const-string v3, "--proto"

    aput-object v3, v0, v2

    .line 415
    invoke-direct {p0, p3}, Lcom/android/server/am/ProviderMap;->getProvidersForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 417
    .local v8, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_1a

    .line 418
    return v3

    .line 422
    :cond_1a
    move v2, v3

    .local v2, "i":I
    :goto_1b
    move v9, v2

    .end local v2    # "i":I
    .local v9, "i":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_40

    .line 423
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/server/am/ContentProviderRecord;

    .line 424
    .local v10, "r":Lcom/android/server/am/ContentProviderRecord;
    iget-object v2, v10, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3d

    iget-object v2, v10, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_3d

    .line 425
    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v10

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ProviderMap;->dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;)V

    .line 426
    return v1

    .line 422
    .end local v10    # "r":Lcom/android/server/am/ContentProviderRecord;
    :cond_3d
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "i":I
    .restart local v2    # "i":I
    goto :goto_1b

    .line 429
    .end local v2    # "i":I
    :cond_40
    return v3
.end method

.method dumpProvidersLocked(Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 303
    const/4 v7, 0x0

    .line 305
    .local v7, "needSep":Z
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 306
    const-string v4, "  Published single-user content providers (by class):"

    iget-object v6, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v0

    or-int/2addr v7, v0

    .line 311
    :cond_17
    const/4 v0, 0x0

    move v1, v0

    move v9, v7

    .end local v7    # "needSep":Z
    .local v1, "i":I
    .local v9, "needSep":Z
    :goto_1a
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_55

    .line 312
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/util/HashMap;

    .line 313
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Published user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 314
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " content providers (by class):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 313
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v7, v9

    move-object v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v2

    or-int/2addr v9, v2

    .line 311
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 318
    .end local v1    # "i":I
    :cond_55
    if-eqz p2, :cond_9e

    .line 319
    const-string v5, "  Single-user authority to provider mappings:"

    iget-object v7, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v1

    or-int/2addr v1, v9

    .line 322
    .end local v9    # "needSep":Z
    .local v1, "needSep":Z
    move v7, v1

    .end local v1    # "needSep":Z
    .local v0, "i":I
    .restart local v7    # "needSep":Z
    :goto_65
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_9f

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 324
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " authority to provider mappings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 326
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/HashMap;

    .line 323
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v1

    or-int/2addr v7, v1

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 329
    .end local v0    # "i":I
    .end local v7    # "needSep":Z
    .restart local v9    # "needSep":Z
    :cond_9e
    move v7, v9

    .end local v9    # "needSep":Z
    .restart local v7    # "needSep":Z
    :cond_9f
    return v7
.end method

.method getProviderByClass(Landroid/content/ComponentName;)Lcom/android/server/am/ContentProviderRecord;
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 88
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v0

    return-object v0
.end method

.method getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 96
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    .line 97
    .local v0, "record":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v0, :cond_b

    .line 98
    return-object v0

    .line 102
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    return-object v1
.end method

.method getProviderByName(Ljava/lang/String;)Lcom/android/server/am/ContentProviderRecord;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 70
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v0

    return-object v0
.end method

.method getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 78
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    .line 79
    .local v0, "record":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v0, :cond_b

    .line 80
    return-object v0

    .line 84
    :cond_b
    invoke-direct {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    return-object v1
.end method

.method getProvidersByClass(I)Ljava/util/HashMap;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    .line 182
    if-ltz p1, :cond_18

    .line 183
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 184
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 185
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    if-nez v0, :cond_17

    .line 186
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v1, "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    return-object v1

    .line 191
    .end local v1    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_17
    return-object v0

    .line 182
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "record"    # Lcom/android/server/am/ContentProviderRecord;

    .line 123
    iget-boolean v0, p2, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v0, :cond_a

    .line 124
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 126
    :cond_a
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 127
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v0    # "userId":I
    :goto_19
    return-void
.end method

.method putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "record"    # Lcom/android/server/am/ContentProviderRecord;

    .line 110
    iget-boolean v0, p2, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v0, :cond_a

    .line 111
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 113
    :cond_a
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 114
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v0    # "userId":I
    :goto_19
    return-void
.end method

.method removeProviderByClass(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 151
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 154
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 156
    :cond_e
    if-ltz p2, :cond_23

    .line 160
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v0

    .line 162
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_22

    .line 164
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 167
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_22
    :goto_22
    return-void

    .line 156
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeProviderByName(Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 132
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 135
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 137
    :cond_e
    if-ltz p2, :cond_23

    .line 141
    invoke-direct {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v0

    .line 143
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_22

    .line 145
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 148
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_22
    :goto_22
    return-void

    .line 137
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
