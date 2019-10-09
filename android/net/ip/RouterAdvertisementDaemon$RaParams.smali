.class public Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
.super Ljava/lang/Object;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RaParams"
.end annotation


# instance fields
.field public dnses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field public hasDefaultRoute:Z

.field public mtu:I

.field public prefixes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    .line 129
    const/16 v0, 0x500

    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .registers 3
    .param p1, "other"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iget-boolean v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    iput-boolean v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    .line 136
    iget v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 137
    iget-object v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    .line 138
    iget-object v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 139
    return-void
.end method

.method public static getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .registers 6
    .param p0, "oldRa"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .param p1, "newRa"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 146
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-direct {v0}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    .line 148
    .local v0, "newlyDeprecated":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    if-eqz p0, :cond_4b

    .line 149
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 150
    .local v2, "ipp":Landroid/net/IpPrefix;
    if-eqz p1, :cond_23

    iget-object v3, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 151
    :cond_23
    iget-object v3, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v2    # "ipp":Landroid/net/IpPrefix;
    :cond_28
    goto :goto_d

    .line 155
    :cond_29
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Inet6Address;

    .line 156
    .local v2, "dns":Ljava/net/Inet6Address;
    if-eqz p1, :cond_45

    iget-object v3, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 157
    :cond_45
    iget-object v3, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v2    # "dns":Ljava/net/Inet6Address;
    :cond_4a
    goto :goto_2f

    .line 162
    :cond_4b
    return-object v0
.end method
