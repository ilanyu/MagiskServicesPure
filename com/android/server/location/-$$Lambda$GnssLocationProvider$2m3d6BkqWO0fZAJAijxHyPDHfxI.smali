.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssLocationProvider$2m3d6BkqWO0fZAJAijxHyPDHfxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:[I

.field private final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>([I[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$2m3d6BkqWO0fZAJAijxHyPDHfxI;->f$0:[I

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$2m3d6BkqWO0fZAJAijxHyPDHfxI;->f$1:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$2m3d6BkqWO0fZAJAijxHyPDHfxI;->f$0:[I

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$2m3d6BkqWO0fZAJAijxHyPDHfxI;->f$1:[I

    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->lambda$onUpdateSatelliteBlacklist$0([I[I)V

    return-void
.end method
