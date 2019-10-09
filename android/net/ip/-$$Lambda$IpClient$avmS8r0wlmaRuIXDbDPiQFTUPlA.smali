.class public final synthetic Landroid/net/ip/-$$Lambda$IpClient$avmS8r0wlmaRuIXDbDPiQFTUPlA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ip/-$$Lambda$IpClient$avmS8r0wlmaRuIXDbDPiQFTUPlA;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/net/ip/-$$Lambda$IpClient$avmS8r0wlmaRuIXDbDPiQFTUPlA;->f$0:Ljava/util/function/Predicate;

    invoke-static {v0, p1}, Landroid/net/ip/IpClient;->lambda$not$0(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
