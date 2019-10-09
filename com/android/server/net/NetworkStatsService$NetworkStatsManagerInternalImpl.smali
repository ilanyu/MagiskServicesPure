.class Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;
.super Lcom/android/server/net/NetworkStatsManagerInternal;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2

    .line 1404
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p2, "x1"    # Lcom/android/server/net/NetworkStatsService$1;

    .line 1404
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    return-void
.end method


# virtual methods
.method public advisePersistThreshold(J)V
    .registers 4
    .param p1, "thresholdBytes"    # J

    .line 1432
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->advisePersistThreshold(J)V
    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->access$1900(Lcom/android/server/net/NetworkStatsService;J)V

    .line 1433
    return-void
.end method

.method public forceUpdate()V
    .registers 2

    .line 1437
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsService;->forceUpdate()V

    .line 1438
    return-void
.end method

.method public getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 1407
    const-string v0, "getNetworkTotalBytes"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1409
    :try_start_8
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    # invokes: Lcom/android/server/net/NetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    invoke-static/range {v3 .. v8}, Lcom/android/server/net/NetworkStatsService;->access$1700(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v3
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    .line 1411
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1409
    return-wide v3

    .line 1411
    :catchall_15
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 1417
    const-string v0, "getNetworkUidBytes"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1419
    :try_start_8
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    # invokes: Lcom/android/server/net/NetworkStatsService;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    invoke-static/range {v3 .. v8}, Lcom/android/server/net/NetworkStatsService;->access$1800(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    .line 1421
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1419
    return-object v0

    .line 1421
    :catchall_15
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public setUidForeground(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .line 1427
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->setUidForeground(IZ)V

    .line 1428
    return-void
.end method
