.class Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;
.super Ljava/lang/Object;
.source "CpuTimeCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CpuTimeCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModuleCpuTime"
.end annotation


# instance fields
.field moduleUid:I

.field systemCpuTimeUs:J

.field userCpuTimeUs:J


# direct methods
.method public constructor <init>(IJJ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "userCpuTimeUs"    # J
    .param p4, "systemCpuTimeUs"    # J

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->moduleUid:I

    .line 150
    iput-wide p2, p0, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->userCpuTimeUs:J

    .line 151
    iput-wide p4, p0, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->systemCpuTimeUs:J

    .line 152
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->userCpuTimeUs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_15

    iget-wide v1, p0, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->systemCpuTimeUs:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_33

    .line 158
    :cond_15
    iget v1, p0, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->moduleUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, ":  Total cpu time: u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-wide v1, p0, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->userCpuTimeUs:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 161
    const-string/jumbo v1, "s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-wide v1, p0, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->systemCpuTimeUs:J

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 164
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
