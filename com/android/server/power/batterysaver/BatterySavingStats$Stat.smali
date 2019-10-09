.class Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySavingStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stat"
.end annotation


# instance fields
.field public endBatteryLevel:I

.field public endBatteryPercent:I

.field public endTime:J

.field public startBatteryLevel:I

.field public startBatteryPercent:I

.field public startTime:J

.field public totalBatteryDrain:I

.field public totalBatteryDrainPercent:I

.field public totalTimeMillis:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drainPerHour()D
    .registers 7

    .line 122
    iget-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 123
    const-wide/16 v0, 0x0

    return-wide v0

    .line 125
    :cond_b
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    long-to-double v2, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public drainPercentPerHour()D
    .registers 7

    .line 129
    iget-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 130
    const-wide/16 v0, 0x0

    return-wide v0

    .line 132
    :cond_b
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    long-to-double v2, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method toStringForTest()Ljava/lang/String;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "m,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 138
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uA/H,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%.2f"

    new-array v2, v2, [Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPercentPerHour()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method public totalMinutes()J
    .registers 5

    .line 118
    iget-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    return-wide v0
.end method
