.class Lcom/android/server/location/GnssLocationProvider$9;
.super Lcom/android/server/location/GnssNavigationMessageProvider;
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

    .line 863
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$9;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssNavigationMessageProvider;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected isGpsEnabled()Z
    .registers 2

    .line 866
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$9;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->isEnabled()Z

    move-result v0

    return v0
.end method
