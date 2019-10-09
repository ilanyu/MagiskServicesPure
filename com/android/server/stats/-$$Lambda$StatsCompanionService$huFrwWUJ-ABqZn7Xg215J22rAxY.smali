.class public final synthetic Lcom/android/server/stats/-$$Lambda$StatsCompanionService$huFrwWUJ-ABqZn7Xg215J22rAxY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;


# instance fields
.field private final synthetic f$0:J

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(JILjava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$huFrwWUJ-ABqZn7Xg215J22rAxY;->f$0:J

    iput p3, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$huFrwWUJ-ABqZn7Xg215J22rAxY;->f$1:I

    iput-object p4, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$huFrwWUJ-ABqZn7Xg215J22rAxY;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(IJJ)V
    .registers 15

    iget-wide v0, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$huFrwWUJ-ABqZn7Xg215J22rAxY;->f$0:J

    iget v2, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$huFrwWUJ-ABqZn7Xg215J22rAxY;->f$1:I

    iget-object v3, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$huFrwWUJ-ABqZn7Xg215J22rAxY;->f$2:Ljava/util/List;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v0 .. v8}, Lcom/android/server/stats/StatsCompanionService;->lambda$pullKernelUidCpuTime$0(JILjava/util/List;IJJ)V

    return-void
.end method
