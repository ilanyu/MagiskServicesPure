.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$Nx17DLnpsjeC2juW1TuPEAogLvE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$Nx17DLnpsjeC2juW1TuPEAogLvE;->f$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$Nx17DLnpsjeC2juW1TuPEAogLvE;->f$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->lambda$scheduleCpuSyncDueToWakelockChange$1(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    return-void
.end method
