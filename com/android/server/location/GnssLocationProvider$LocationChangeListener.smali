.class abstract Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LocationChangeListener"
.end annotation


# instance fields
.field numLocationUpdateRequest:I

.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2

    .line 2557
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p2, "x1"    # Lcom/android/server/location/GnssLocationProvider$1;

    .line 2557
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-void
.end method


# virtual methods
.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 2570
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 2566
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2562
    return-void
.end method
