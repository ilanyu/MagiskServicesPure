.class interface abstract Landroid/net/ip/IpReachabilityMonitor$Dependencies;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpReachabilityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Dependencies"
.end annotation


# direct methods
.method public static makeDefault(Landroid/content/Context;Ljava/lang/String;)Landroid/net/ip/IpReachabilityMonitor$Dependencies;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iface"    # Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpReachabilityMonitor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "lockName":Ljava/lang/String;
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 160
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 162
    .local v2, "lock":Landroid/os/PowerManager$WakeLock;
    new-instance v3, Landroid/net/ip/IpReachabilityMonitor$Dependencies$1;

    invoke-direct {v3, v2}, Landroid/net/ip/IpReachabilityMonitor$Dependencies$1;-><init>(Landroid/os/PowerManager$WakeLock;)V

    return-object v3
.end method


# virtual methods
.method public abstract acquireWakeLock(J)V
.end method
