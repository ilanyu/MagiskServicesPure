.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ActivityMetricsLogger;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;IILcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;->f$0:Lcom/android/server/am/ActivityMetricsLogger;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;->f$1:I

    iput p3, p0, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;->f$3:Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;->f$0:Lcom/android/server/am/ActivityMetricsLogger;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;->f$1:I

    iget v2, p0, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;->f$2:I

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;->f$3:Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/ActivityMetricsLogger;->lambda$logAppTransitionMultiEvents$0(Lcom/android/server/am/ActivityMetricsLogger;IILcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method
