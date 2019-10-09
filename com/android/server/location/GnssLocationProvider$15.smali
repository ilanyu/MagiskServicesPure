.class Lcom/android/server/location/GnssLocationProvider$15;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->getGnssMetricsProvider()Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 2098
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$15;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGnssMetricsAsProtoString()Ljava/lang/String;
    .registers 2

    .line 2101
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$15;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$3700(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
