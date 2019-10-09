.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssGeofenceProvider;

.field private final synthetic f$1:I

.field private final synthetic f$2:D

.field private final synthetic f$3:D

.field private final synthetic f$4:D

.field private final synthetic f$5:I

.field private final synthetic f$6:I

.field private final synthetic f$7:I

.field private final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssGeofenceProvider;IDDDIIII)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$0:Lcom/android/server/location/GnssGeofenceProvider;

    iput p2, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$1:I

    iput-wide p3, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$2:D

    iput-wide p5, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$3:D

    iput-wide p7, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$4:D

    iput p9, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$5:I

    iput p10, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$6:I

    iput p11, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$7:I

    iput p12, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$8:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 13

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$0:Lcom/android/server/location/GnssGeofenceProvider;

    iget v1, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$1:I

    iget-wide v2, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$2:D

    iget-wide v4, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$3:D

    iget-wide v6, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$4:D

    iget v8, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$5:I

    iget v9, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$6:I

    iget v10, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$7:I

    iget v11, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;->f$8:I

    invoke-static/range {v0 .. v11}, Lcom/android/server/location/GnssGeofenceProvider;->lambda$addCircularHardwareGeofence$1(Lcom/android/server/location/GnssGeofenceProvider;IDDDIIII)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
