.class final Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InstantAppIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
        "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final mOrderResult:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 13862
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 13876
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method protected filterResults(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)V"
        }
    .end annotation

    .line 13914
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 13915
    return-void

    .line 13917
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 13918
    .local v0, "resultSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_43

    .line 13919
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    iget-object v2, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 13920
    .local v2, "info":Landroid/content/pm/InstantAppResolveInfo;
    invoke-virtual {v2}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 13921
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 13922
    .local v4, "savedInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/InstantAppResolveInfo;>;"
    if-nez v4, :cond_27

    .line 13924
    goto :goto_40

    .line 13926
    :cond_27
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v5, v2, :cond_39

    .line 13928
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13929
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_40

    .line 13931
    goto :goto_43

    .line 13936
    :cond_39
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13937
    add-int/lit8 v0, v0, -0x1

    .line 13938
    add-int/lit8 v1, v1, -0x1

    .line 13918
    .end local v2    # "info":Landroid/content/pm/InstantAppResolveInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "savedInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/InstantAppResolveInfo;>;"
    :cond_40
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 13940
    .end local v1    # "i":I
    :cond_43
    :goto_43
    return-void
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 3

    .line 13862
    check-cast p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "responseObj"    # Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 13886
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 2

    .line 13862
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;->newArray(I)[Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    .registers 3
    .param p1, "size"    # I

    .line 13880
    new-array v0, p1, [Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;II)Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    .registers 10
    .param p1, "responseObj"    # Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .line 13892
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 13893
    return-object v1

    .line 13895
    :cond_a
    iget-object v0, p1, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 13896
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->getOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 13897
    .local v2, "order":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 13898
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 13900
    .local v3, "lastOrderResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/InstantAppResolveInfo;>;"
    if-eqz v3, :cond_31

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v4, v5, :cond_31

    .line 13901
    return-object v1

    .line 13903
    :cond_31
    iget-object v1, p1, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 13904
    .local v1, "res":Landroid/content/pm/InstantAppResolveInfo;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_43

    .line 13906
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13908
    :cond_43
    return-object p1
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 4

    .line 13862
    check-cast p1, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;->newResult(Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;II)Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    move-result-object p1

    return-object p1
.end method
