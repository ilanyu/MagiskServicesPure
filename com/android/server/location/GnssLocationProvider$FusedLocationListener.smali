.class final Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;
.super Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FusedLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 3

    .line 2583
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p2, "x1"    # Lcom/android/server/location/GnssLocationProvider$1;

    .line 2583
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .line 2586
    const-string v0, "fused"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2587
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->injectBestLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/android/server/location/GnssLocationProvider;->access$6300(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V

    .line 2589
    :cond_11
    return-void
.end method
