.class public final synthetic Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Id7yPLmMAQz0Sm1dnrJVkXkUQNQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroid/net/IpPrefix;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpPrefix;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Id7yPLmMAQz0Sm1dnrJVkXkUQNQ;->f$0:Landroid/net/IpPrefix;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Id7yPLmMAQz0Sm1dnrJVkXkUQNQ;->f$0:Landroid/net/IpPrefix;

    check-cast p1, Landroid/net/RouteInfo;

    invoke-static {v0, p1}, Landroid/net/ip/IpClient$InitialConfiguration;->lambda$isProvisionedBy$3(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z

    move-result p1

    return p1
.end method
