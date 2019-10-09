.class Lcom/android/server/location/GnssLocationProvider$1;
.super Landroid/location/IGnssStatusProvider$Stub;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 489
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/location/IGnssStatusProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/location/IGnssStatusListener;

    .line 492
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$200(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssStatusListenerHelper;->addListener(Landroid/os/IInterface;)Z

    .line 493
    return-void
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/location/IGnssStatusListener;

    .line 497
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$200(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssStatusListenerHelper;->removeListener(Landroid/os/IInterface;)V

    .line 498
    return-void
.end method
