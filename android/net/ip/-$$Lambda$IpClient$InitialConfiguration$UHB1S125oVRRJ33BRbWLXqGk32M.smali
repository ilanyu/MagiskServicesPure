.class public final synthetic Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$UHB1S125oVRRJ33BRbWLXqGk32M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroid/net/LinkAddress;


# direct methods
.method public synthetic constructor <init>(Landroid/net/LinkAddress;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$UHB1S125oVRRJ33BRbWLXqGk32M;->f$0:Landroid/net/LinkAddress;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$UHB1S125oVRRJ33BRbWLXqGk32M;->f$0:Landroid/net/LinkAddress;

    check-cast p1, Landroid/net/IpPrefix;

    invoke-static {v0, p1}, Landroid/net/ip/IpClient$InitialConfiguration;->lambda$isValid$0(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z

    move-result p1

    return p1
.end method
