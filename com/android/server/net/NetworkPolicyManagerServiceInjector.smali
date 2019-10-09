.class public Lcom/android/server/net/NetworkPolicyManagerServiceInjector;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerServiceInjector.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-string v0, "NetworkPolicyManagerServiceInjector"

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerServiceInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPolicyForNetwork(Landroid/net/NetworkPolicy;)Z
    .registers 3
    .param p0, "policy"    # Landroid/net/NetworkPolicy;

    .line 44
    iget-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_b

    .line 45
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static updateNetworkRules(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/net/NetworkPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p0, "networkRules":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/NetworkPolicy;[Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 20
    .local v0, "findWifi":Z
    const/4 v1, 0x0

    .line 21
    .local v1, "findWifiWildCard":Z
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x7

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 22
    .local v3, "policy":Landroid/net/NetworkPolicy;
    iget-wide v5, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    goto :goto_22

    :cond_21
    const/4 v5, 0x0

    .line 23
    .local v5, "hasLimit":Z
    :goto_22
    if-nez v5, :cond_28

    iget-boolean v6, v3, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v6, :cond_3c

    .line 24
    :cond_28
    iget-object v6, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    if-ne v6, v4, :cond_32

    .line 25
    const/4 v1, 0x1

    goto :goto_3c

    .line 26
    :cond_32
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_3c

    .line 27
    const/4 v0, 0x1

    .line 30
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    .end local v5    # "hasLimit":Z
    :cond_3c
    :goto_3c
    goto :goto_a

    .line 31
    :cond_3d
    if-eqz v0, :cond_71

    if-eqz v1, :cond_71

    .line 32
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 33
    .local v2, "newNetworkRules":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/NetworkPolicy;[Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkPolicy;

    .line 34
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    if-eq v6, v4, :cond_6a

    .line 35
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_6a
    goto :goto_4d

    .line 38
    :cond_6b
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 39
    invoke-interface {p0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    .end local v2    # "newNetworkRules":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/NetworkPolicy;[Ljava/lang/String;>;"
    :cond_71
    return-void
.end method
