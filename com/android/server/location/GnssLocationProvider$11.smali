.class Lcom/android/server/location/GnssLocationProvider$11;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;

.field final synthetic val$event:Landroid/location/GnssMeasurementsEvent;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssMeasurementsEvent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 1954
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider$11;->val$event:Landroid/location/GnssMeasurementsEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1957
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$2900(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssMeasurementsProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$11;->val$event:Landroid/location/GnssMeasurementsEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V

    .line 1958
    return-void
.end method
