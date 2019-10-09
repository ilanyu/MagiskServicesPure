.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$X5bvoYFvm378No3aV2K7Jynm32c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssGeofenceProvider;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssGeofenceProvider;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$X5bvoYFvm378No3aV2K7Jynm32c;->f$0:Lcom/android/server/location/GnssGeofenceProvider;

    iput p2, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$X5bvoYFvm378No3aV2K7Jynm32c;->f$1:I

    iput p3, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$X5bvoYFvm378No3aV2K7Jynm32c;->f$2:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$X5bvoYFvm378No3aV2K7Jynm32c;->f$0:Lcom/android/server/location/GnssGeofenceProvider;

    iget v1, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$X5bvoYFvm378No3aV2K7Jynm32c;->f$1:I

    iget v2, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$X5bvoYFvm378No3aV2K7Jynm32c;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/location/GnssGeofenceProvider;->lambda$resumeHardwareGeofence$4(Lcom/android/server/location/GnssGeofenceProvider;II)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
