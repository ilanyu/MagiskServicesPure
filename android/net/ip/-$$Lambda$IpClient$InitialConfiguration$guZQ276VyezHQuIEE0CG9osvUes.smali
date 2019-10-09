.class public final synthetic Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$guZQ276VyezHQuIEE0CG9osvUes;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$guZQ276VyezHQuIEE0CG9osvUes;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$guZQ276VyezHQuIEE0CG9osvUes;->f$0:Ljava/lang/Class;

    check-cast p1, Landroid/net/LinkAddress;

    invoke-static {v0, p1}, Landroid/net/ip/IpClient$InitialConfiguration;->lambda$guZQ276VyezHQuIEE0CG9osvUes(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
