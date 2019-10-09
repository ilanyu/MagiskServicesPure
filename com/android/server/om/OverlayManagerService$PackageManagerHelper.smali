.class final Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageManagerHelper"
.end annotation


# static fields
.field private static final TAB1:Ljava/lang/String; = "    "

.field private static final TAB2:Ljava/lang/String; = "        "


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    .line 847
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 848
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 849
    return-void
.end method


# virtual methods
.method public cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "pi"    # Landroid/content/pm/PackageInfo;

    .line 903
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 904
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_15

    .line 905
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 906
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 908
    :cond_15
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Z)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "verbose"    # Z

    .line 930
    const-string v0, "PackageInfo cache"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    const/4 v0, 0x0

    if-nez p2, :cond_42

    .line 933
    const/4 v1, 0x0

    .line 934
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 935
    .local v2, "N":I
    nop

    .local v0, "i":I
    :goto_10
    if-ge v0, v2, :cond_28

    .line 936
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 937
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 935
    .end local v3    # "userId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 939
    .end local v0    # "i":I
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package(s)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    return-void

    .line 943
    .end local v1    # "count":I
    .end local v2    # "N":I
    :cond_42
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_50

    .line 944
    const-string v0, "    <empty>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    return-void

    .line 948
    :cond_50
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 949
    .local v1, "N":I
    nop

    .restart local v0    # "i":I
    :goto_57
    if-ge v0, v1, :cond_b9

    .line 950
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 951
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 953
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_83
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 954
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "        "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    goto :goto_83

    .line 949
    .end local v2    # "userId":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    :cond_b6
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 957
    .end local v0    # "i":I
    :cond_b9
    return-void
.end method

.method public forgetAllPackageInfos(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 923
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 924
    return-void
.end method

.method public forgetPackageInfo(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 912
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 913
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_b

    .line 914
    return-void

    .line 916
    :cond_b
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 918
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 920
    :cond_19
    return-void
.end method

.method public getCachedPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 897
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 898
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_12

    :cond_c
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    :goto_12
    return-object v1
.end method

.method public getOverlayPackages(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getOverlayPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 873
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "useCache"    # Z

    .line 853
    if-eqz p3, :cond_9

    .line 854
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getCachedPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 855
    .local v0, "cachedPi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_9

    .line 856
    return-object v0

    .line 860
    .end local v0    # "cachedPi":Landroid/content/pm/PackageInfo;
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 861
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz p3, :cond_17

    if-eqz v0, :cond_17

    .line 862
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_18

    .line 864
    :cond_17
    return-object v0

    .line 865
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :catch_18
    move-exception v0

    .line 868
    const/4 v0, 0x0

    return-object v0
.end method

.method public signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName1"    # Ljava/lang/String;
    .param p2, "packageName2"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 882
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_c

    if-nez v1, :cond_b

    const/4 v0, 0x1

    nop

    :cond_b
    return v0

    .line 884
    :catch_c
    move-exception v1

    .line 887
    return v0
.end method
