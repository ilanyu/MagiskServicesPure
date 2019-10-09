.class Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
.super Ljava/lang/Object;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivateDnsValidationStatuses"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;
    }
.end annotation


# instance fields
.field private mValidationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/net/InetAddress;",
            ">;",
            "Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    .line 223
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/DnsManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/connectivity/DnsManager$1;

    .line 209
    invoke-direct {p0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    .line 209
    invoke-direct {p0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->hasValidatedServer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->fillInValidatedPrivateDns(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
    .param p1, "x1"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->updateStatus(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->updateTrackedDnses([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillInValidatedPrivateDns(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 272
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->setValidatedPrivateDnsServers(Ljava/util/Collection;)V

    .line 273
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$DnsManager$PrivateDnsValidationStatuses$_X4_M08nKysv-L4hDpqAsa4SBxI;

    invoke-direct {v1, p1}, Lcom/android/server/connectivity/-$$Lambda$DnsManager$PrivateDnsValidationStatuses$_X4_M08nKysv-L4hDpqAsa4SBxI;-><init>(Landroid/net/LinkProperties;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 278
    return-object p1
.end method

.method private hasValidatedServer()Z
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    .line 227
    .local v1, "status":Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;
    sget-object v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->SUCCEEDED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    if-ne v1, v2, :cond_1c

    .line 228
    const/4 v0, 0x1

    return v0

    .line 230
    .end local v1    # "status":Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;
    :cond_1c
    goto :goto_a

    .line 231
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$fillInValidatedPrivateDns$0(Landroid/net/LinkProperties;Landroid/util/Pair;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;)V
    .registers 4
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .param p1, "key"    # Landroid/util/Pair;
    .param p2, "value"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    .line 274
    sget-object v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->SUCCEEDED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    if-ne p2, v0, :cond_b

    .line 275
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addValidatedPrivateDnsServer(Ljava/net/InetAddress;)Z

    .line 277
    :cond_b
    return-void
.end method

.method private updateStatus(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .registers 5
    .param p1, "update"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 259
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->hostname:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->ipAddress:Ljava/net/InetAddress;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 262
    return-void

    .line 264
    :cond_12
    iget-boolean v1, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->validated:Z

    if-eqz v1, :cond_1e

    .line 265
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    sget-object v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->SUCCEEDED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 267
    :cond_1e
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    sget-object v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->FAILED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :goto_25
    return-void
.end method

.method private updateTrackedDnses([Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "ipAddresses"    # [Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 236
    .local v0, "latestDnses":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1c

    aget-object v3, p1, v2

    .line 238
    .local v3, "ipAddress":Ljava/lang/String;
    :try_start_b
    new-instance v4, Landroid/util/Pair;

    .line 239
    invoke-static {v3}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_17} :catch_18

    .line 240
    goto :goto_19

    :catch_18
    move-exception v4

    .line 236
    .end local v3    # "ipAddress":Ljava/lang/String;
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 243
    :cond_1c
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    .line 244
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;>;>;"
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 246
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 249
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;>;"
    :cond_3f
    goto :goto_26

    .line 251
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;>;>;"
    :cond_40
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 252
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;"
    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 253
    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    sget-object v4, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->IN_PROGRESS:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;"
    :cond_5f
    goto :goto_44

    .line 256
    :cond_60
    return-void
.end method
