.class Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;
.super Landroid/net/ITetheringStatsProvider$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdTetheringStatsProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .line 1916
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/net/ITetheringStatsProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementService$1;

    .line 1916
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public getTetherStats(I)Landroid/net/NetworkStats;
    .registers 12
    .param p1, "how"    # I

    .line 1921
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_e

    .line 1922
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v0

    .line 1927
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;
    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->access$1700(Lcom/android/server/NetworkManagementService;)Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->tetherGetStats()Landroid/os/PersistableBundle;

    move-result-object v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_7d
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_18} :catch_7d

    .line 1930
    .local v2, "bundle":Landroid/os/PersistableBundle;
    nop

    .line 1929
    nop

    .line 1932
    new-instance v3, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1933
    invoke-virtual {v2}, Landroid/os/PersistableBundle;->size()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1934
    .local v3, "stats":Landroid/net/NetworkStats;
    new-instance v4, Landroid/net/NetworkStats$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1936
    .local v4, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v2}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1937
    .local v6, "iface":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v7

    .line 1939
    .local v7, "statsArray":[J
    :try_start_44
    iput-object v6, v4, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1940
    const/4 v8, -0x5

    iput v8, v4, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1941
    iput v1, v4, Landroid/net/NetworkStats$Entry;->set:I

    .line 1942
    iput v1, v4, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1943
    aget-wide v8, v7, v1

    iput-wide v8, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1944
    aget-wide v8, v7, v0

    iput-wide v8, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1945
    const/4 v8, 0x2

    aget-wide v8, v7, v8

    iput-wide v8, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1946
    const/4 v8, 0x3

    aget-wide v8, v7, v8

    iput-wide v8, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1947
    invoke-virtual {v3, v4}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_62
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_44 .. :try_end_62} :catch_64

    .line 1950
    nop

    .line 1951
    .end local v6    # "iface":Ljava/lang/String;
    .end local v7    # "statsArray":[J
    goto :goto_34

    .line 1948
    .restart local v6    # "iface":Ljava/lang/String;
    .restart local v7    # "statsArray":[J
    :catch_64
    move-exception v0

    .line 1949
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid tethering stats for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1953
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v6    # "iface":Ljava/lang/String;
    .end local v7    # "statsArray":[J
    :cond_7c
    return-object v3

    .line 1928
    .end local v2    # "bundle":Landroid/os/PersistableBundle;
    .end local v3    # "stats":Landroid/net/NetworkStats;
    .end local v4    # "entry":Landroid/net/NetworkStats$Entry;
    :catch_7d
    move-exception v0

    .line 1929
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "problem parsing tethering stats: "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 1959
    return-void
.end method
