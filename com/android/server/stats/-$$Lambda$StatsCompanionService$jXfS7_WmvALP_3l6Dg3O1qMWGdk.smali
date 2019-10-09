.class public final synthetic Lcom/android/server/stats/-$$Lambda$StatsCompanionService$jXfS7_WmvALP_3l6Dg3O1qMWGdk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;


# instance fields
.field private final synthetic f$0:J

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(JILjava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$jXfS7_WmvALP_3l6Dg3O1qMWGdk;->f$0:J

    iput p3, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$jXfS7_WmvALP_3l6Dg3O1qMWGdk;->f$1:I

    iput-object p4, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$jXfS7_WmvALP_3l6Dg3O1qMWGdk;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onUidCpuActiveTime(IJ)V
    .registers 11

    iget-wide v0, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$jXfS7_WmvALP_3l6Dg3O1qMWGdk;->f$0:J

    iget v2, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$jXfS7_WmvALP_3l6Dg3O1qMWGdk;->f$1:I

    iget-object v3, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$jXfS7_WmvALP_3l6Dg3O1qMWGdk;->f$2:Ljava/util/List;

    move v4, p1

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/stats/StatsCompanionService;->lambda$pullKernelUidCpuActiveTime$3(JILjava/util/List;IJ)V

    return-void
.end method
