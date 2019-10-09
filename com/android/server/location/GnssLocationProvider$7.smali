.class Lcom/android/server/location/GnssLocationProvider$7;
.super Lcom/android/server/location/GnssStatusListenerHelper;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 844
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$7;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssStatusListenerHelper;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected isAvailableInPlatform()Z
    .registers 2

    .line 847
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->isSupported()Z

    move-result v0

    return v0
.end method

.method protected isGpsEnabled()Z
    .registers 2

    .line 852
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$7;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->isEnabled()Z

    move-result v0

    return v0
.end method
