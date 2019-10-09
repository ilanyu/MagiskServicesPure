.class Lcom/android/server/am/CpuTimeCollection$1;
.super Ljava/lang/Object;
.source "CpuTimeCollection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/CpuTimeCollection;->mapValueCompareSort(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Integer;",
        "Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 96
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CpuTimeCollection$1;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;",
            ">;)I"
        }
    .end annotation

    .line 99
    .local p1, "cpuTimeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;>;"
    .local p2, "cpuTimeEntryNext":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;

    iget-wide v0, v0, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->userCpuTimeUs:J

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;

    iget-wide v2, v2, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->systemCpuTimeUs:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 100
    .local v0, "userTime":Ljava/lang/Long;
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;

    iget-wide v1, v1, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->userCpuTimeUs:J

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;

    iget-wide v3, v3, Lcom/android/server/am/CpuTimeCollection$ModuleCpuTime;->systemCpuTimeUs:J

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 101
    .local v1, "systemTime":Ljava/lang/Long;
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    neg-int v2, v2

    return v2
.end method
