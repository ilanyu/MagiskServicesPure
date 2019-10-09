.class public Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
.super Ljava/lang/Object;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateDnsConfig"
.end annotation


# instance fields
.field public final hostname:Ljava/lang/String;

.field public final ips:[Ljava/net/InetAddress;

.field public final useTls:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;-><init>(Z)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V
    .registers 3
    .param p1, "cfg"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iget-boolean v0, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    iput-boolean v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    .line 150
    iget-object v0, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    .line 151
    iget-object v0, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "ips"    # [Ljava/net/InetAddress;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    .line 144
    iget-boolean v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    if-eqz v0, :cond_11

    move-object v0, p1

    goto :goto_13

    :cond_11
    const-string v0, ""

    :goto_13
    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    .line 145
    if-eqz p2, :cond_19

    move-object v0, p2

    goto :goto_1c

    :cond_19
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/InetAddress;

    :goto_1c
    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 146
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "useTls"    # Z

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-boolean p1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 140
    return-void
.end method


# virtual methods
.method public inStrictMode()Z
    .registers 2

    .line 155
    iget-boolean v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 160
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    return-object v0
.end method
