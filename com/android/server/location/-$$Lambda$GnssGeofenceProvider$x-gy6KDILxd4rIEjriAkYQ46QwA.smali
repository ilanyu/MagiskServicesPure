.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$x-gy6KDILxd4rIEjriAkYQ46QwA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssGeofenceProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssGeofenceProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$x-gy6KDILxd4rIEjriAkYQ46QwA;->f$0:Lcom/android/server/location/GnssGeofenceProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$x-gy6KDILxd4rIEjriAkYQ46QwA;->f$0:Lcom/android/server/location/GnssGeofenceProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssGeofenceProvider;->lambda$resumeIfStarted$0(Lcom/android/server/location/GnssGeofenceProvider;)V

    return-void
.end method
