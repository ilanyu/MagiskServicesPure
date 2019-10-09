.class Lcom/android/server/AlarmManagerService$3;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerService;->dumpImpl(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/AlarmManagerService$FilterStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .line 2131
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$FilterStats;Lcom/android/server/AlarmManagerService$FilterStats;)I
    .registers 7
    .param p1, "lhs"    # Lcom/android/server/AlarmManagerService$FilterStats;
    .param p2, "rhs"    # Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2134
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 2135
    const/4 v0, 0x1

    return v0

    .line 2136
    :cond_a
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 2137
    const/4 v0, -0x1

    return v0

    .line 2139
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 2131
    check-cast p1, Lcom/android/server/AlarmManagerService$FilterStats;

    check-cast p2, Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$3;->compare(Lcom/android/server/AlarmManagerService$FilterStats;Lcom/android/server/AlarmManagerService$FilterStats;)I

    move-result p1

    return p1
.end method
