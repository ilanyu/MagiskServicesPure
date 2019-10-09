.class public final synthetic Lcom/android/server/location/-$$Lambda$nmIoImstXHuMaecjUXtG9FcFizs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$nmIoImstXHuMaecjUXtG9FcFizs;->f$0:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$nmIoImstXHuMaecjUXtG9FcFizs;->f$0:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->isGeofenceSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
