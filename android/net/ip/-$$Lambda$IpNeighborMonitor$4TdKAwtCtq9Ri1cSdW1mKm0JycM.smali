.class public final synthetic Landroid/net/ip/-$$Lambda$IpNeighborMonitor$4TdKAwtCtq9Ri1cSdW1mKm0JycM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/net/ip/-$$Lambda$IpNeighborMonitor$4TdKAwtCtq9Ri1cSdW1mKm0JycM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/ip/-$$Lambda$IpNeighborMonitor$4TdKAwtCtq9Ri1cSdW1mKm0JycM;

    invoke-direct {v0}, Landroid/net/ip/-$$Lambda$IpNeighborMonitor$4TdKAwtCtq9Ri1cSdW1mKm0JycM;-><init>()V

    sput-object v0, Landroid/net/ip/-$$Lambda$IpNeighborMonitor$4TdKAwtCtq9Ri1cSdW1mKm0JycM;->INSTANCE:Landroid/net/ip/-$$Lambda$IpNeighborMonitor$4TdKAwtCtq9Ri1cSdW1mKm0JycM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V
    .registers 2

    invoke-static {p1}, Landroid/net/ip/IpNeighborMonitor;->lambda$new$0(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V

    return-void
.end method
