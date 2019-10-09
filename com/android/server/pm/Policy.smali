.class final Lcom/android/server/pm/Policy;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Policy$PolicyBuilder;
    }
.end annotation


# instance fields
.field private final mCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeinfo:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/Policy$PolicyBuilder;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    # getter for: Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->access$000(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    .line 410
    # getter for: Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->access$100(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    .line 411
    # getter for: Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->access$200(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    .line 412
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/Policy$PolicyBuilder;Lcom/android/server/pm/Policy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/Policy$PolicyBuilder;
    .param p2, "x1"    # Lcom/android/server/pm/Policy$1;

    .line 401
    invoke-direct {p0, p1}, Lcom/android/server/pm/Policy;-><init>(Lcom/android/server/pm/Policy$PolicyBuilder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/Policy;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Policy;

    .line 401
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/Policy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Policy;

    .line 401
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/Policy;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Policy;

    .line 401
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getInnerPackages()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMatchedSeInfo(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .registers 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 497
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/content/pm/Signature;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    .line 498
    .local v0, "certs":[Landroid/content/pm/Signature;
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v2, v3, :cond_2b

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 499
    invoke-static {v0, v2}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 502
    array-length v2, v0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_29

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    aget-object v1, v0, v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 503
    :cond_29
    const/4 v1, 0x0

    return-object v1

    .line 509
    :cond_2b
    iget-object v1, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 510
    .local v1, "seinfoValue":Ljava/lang/String;
    if-eqz v1, :cond_38

    .line 511
    return-object v1

    .line 515
    :cond_38
    iget-object v2, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    return-object v2
.end method

.method public getSignatures()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    return-object v0
.end method

.method public hasGlobalSeinfo()Z
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasInnerPackages()Z
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/Signature;

    .line 456
    .local v2, "cert":Landroid/content/pm/Signature;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cert="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0xb

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .end local v2    # "cert":Landroid/content/pm/Signature;
    goto :goto_b

    .line 459
    :cond_3c
    iget-object v1, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    if-eqz v1, :cond_57

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seinfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :cond_57
    iget-object v1, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_61
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 464
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_61

    .line 467
    :cond_92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
