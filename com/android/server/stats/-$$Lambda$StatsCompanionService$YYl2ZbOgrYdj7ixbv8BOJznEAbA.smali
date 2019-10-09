.class public final synthetic Lcom/android/server/stats/-$$Lambda$StatsCompanionService$YYl2ZbOgrYdj7ixbv8BOJznEAbA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;


# instance fields
.field private final synthetic f$0:J

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(JILjava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$YYl2ZbOgrYdj7ixbv8BOJznEAbA;->f$0:J

    iput p3, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$YYl2ZbOgrYdj7ixbv8BOJznEAbA;->f$1:I

    iput-object p4, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$YYl2ZbOgrYdj7ixbv8BOJznEAbA;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onUidCpuFreqTime(I[J)V
    .registers 9

    iget-wide v0, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$YYl2ZbOgrYdj7ixbv8BOJznEAbA;->f$0:J

    iget v2, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$YYl2ZbOgrYdj7ixbv8BOJznEAbA;->f$1:I

    iget-object v3, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$YYl2ZbOgrYdj7ixbv8BOJznEAbA;->f$2:Ljava/util/List;

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/stats/StatsCompanionService;->lambda$pullKernelUidCpuFreqTime$1(JILjava/util/List;I[J)V

    return-void
.end method
