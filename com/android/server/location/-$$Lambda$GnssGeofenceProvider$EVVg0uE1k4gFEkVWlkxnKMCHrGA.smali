.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$EVVg0uE1k4gFEkVWlkxnKMCHrGA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssGeofenceProvider;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssGeofenceProvider;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$EVVg0uE1k4gFEkVWlkxnKMCHrGA;->f$0:Lcom/android/server/location/GnssGeofenceProvider;

    iput p2, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$EVVg0uE1k4gFEkVWlkxnKMCHrGA;->f$1:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$EVVg0uE1k4gFEkVWlkxnKMCHrGA;->f$0:Lcom/android/server/location/GnssGeofenceProvider;

    iget v1, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$EVVg0uE1k4gFEkVWlkxnKMCHrGA;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/location/GnssGeofenceProvider;->lambda$removeHardwareGeofence$2(Lcom/android/server/location/GnssGeofenceProvider;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
