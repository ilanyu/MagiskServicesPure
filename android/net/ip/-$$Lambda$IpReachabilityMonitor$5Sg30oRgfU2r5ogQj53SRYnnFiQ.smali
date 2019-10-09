.class public final synthetic Landroid/net/ip/-$$Lambda$IpReachabilityMonitor$5Sg30oRgfU2r5ogQj53SRYnnFiQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;


# instance fields
.field private final synthetic f$0:Landroid/net/ip/IpReachabilityMonitor;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ip/IpReachabilityMonitor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ip/-$$Lambda$IpReachabilityMonitor$5Sg30oRgfU2r5ogQj53SRYnnFiQ;->f$0:Landroid/net/ip/IpReachabilityMonitor;

    return-void
.end method


# virtual methods
.method public final accept(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V
    .registers 3

    iget-object v0, p0, Landroid/net/ip/-$$Lambda$IpReachabilityMonitor$5Sg30oRgfU2r5ogQj53SRYnnFiQ;->f$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v0, p1}, Landroid/net/ip/IpReachabilityMonitor;->lambda$new$0(Landroid/net/ip/IpReachabilityMonitor;Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V

    return-void
.end method
