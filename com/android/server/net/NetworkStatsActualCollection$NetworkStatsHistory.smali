.class Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;
.super Ljava/lang/Object;
.source "NetworkStatsActualCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsActualCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkStatsHistory"
.end annotation


# instance fields
.field rxBytes:J

.field rxPackets:J

.field txBytes:J

.field txPackets:J


# direct methods
.method public constructor <init>(Landroid/net/NetworkStats$Entry;)V
    .registers 4
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iget-wide v0, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->rxBytes:J

    .line 129
    iget-wide v0, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->rxPackets:J

    .line 130
    iget-wide v0, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->txBytes:J

    .line 131
    iget-wide v0, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsActualCollection$NetworkStatsHistory;->txPackets:J

    .line 132
    return-void
.end method
