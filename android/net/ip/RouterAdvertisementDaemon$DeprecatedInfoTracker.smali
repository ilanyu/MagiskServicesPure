.class Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
.super Ljava/lang/Object;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeprecatedInfoTracker"
.end annotation


# instance fields
.field private final mDnses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/net/Inet6Address;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefixes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/IpPrefix;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon$1;

    .line 166
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    .line 166
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->decrementCounters()Z

    move-result v0

    return v0
.end method

.method private decrementCounter(Ljava/util/HashMap;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 207
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 209
    .local v0, "removed":Z
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 210
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;Ljava/lang/Integer;>;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 211
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 212
    .local v2, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_26

    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 214
    const/4 v0, 0x1

    goto :goto_39

    .line 216
    :cond_26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v2    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Integer;>;"
    :goto_39
    goto :goto_9

    .line 220
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;Ljava/lang/Integer;>;>;"
    :cond_3a
    return v0
.end method

.method private decrementCounters()Z
    .registers 3

    .line 201
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->decrementCounter(Ljava/util/HashMap;)Z

    move-result v0

    .line 202
    .local v0, "removed":Z
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->decrementCounter(Ljava/util/HashMap;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 203
    return v0
.end method


# virtual methods
.method getDnses()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getPrefixes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method isEmpty()Z
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method putDnses(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p1, "dnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    .line 188
    .local v1, "dns":Ljava/net/Inet6Address;
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v1    # "dns":Ljava/net/Inet6Address;
    goto :goto_4

    .line 190
    :cond_1b
    return-void
.end method

.method putPrefixes(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p1, "prefixes":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/IpPrefix;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpPrefix;

    .line 174
    .local v1, "ipp":Landroid/net/IpPrefix;
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .end local v1    # "ipp":Landroid/net/IpPrefix;
    goto :goto_4

    .line 176
    :cond_1b
    return-void
.end method

.method removeDnses(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p1, "dnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    .line 194
    .local v1, "dns":Ljava/net/Inet6Address;
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v1    # "dns":Ljava/net/Inet6Address;
    goto :goto_4

    .line 196
    :cond_16
    return-void
.end method

.method removePrefixes(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p1, "prefixes":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/IpPrefix;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpPrefix;

    .line 180
    .local v1, "ipp":Landroid/net/IpPrefix;
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v1    # "ipp":Landroid/net/IpPrefix;
    goto :goto_4

    .line 182
    :cond_16
    return-void
.end method
