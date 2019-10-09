.class public final synthetic Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Yj_oETEniyWPwMk9O1x-JZIJoNo;
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

    iput-object p1, p0, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Yj_oETEniyWPwMk9O1x-JZIJoNo;->f$0:Landroid/net/LinkAddress;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Yj_oETEniyWPwMk9O1x-JZIJoNo;->f$0:Landroid/net/LinkAddress;

    check-cast p1, Landroid/net/LinkAddress;

    invoke-static {v0, p1}, Landroid/net/ip/IpClient$InitialConfiguration;->lambda$isProvisionedBy$2(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result p1

    return p1
.end method
