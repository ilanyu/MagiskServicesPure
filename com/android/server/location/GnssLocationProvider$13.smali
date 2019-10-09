.class Lcom/android/server/location/GnssLocationProvider$13;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->setEngineCapabilities(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;

.field final synthetic val$capabilities:I


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 1983
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iput p2, p0, Lcom/android/server/location/GnssLocationProvider$13;->val$capabilities:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1986
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider$13;->val$capabilities:I

    # setter for: Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I
    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->access$3102(Lcom/android/server/location/GnssLocationProvider;I)I

    .line 1988
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v1, 0x10

    # invokes: Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z
    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->access$3200(Lcom/android/server/location/GnssLocationProvider;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1989
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$300(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/NtpTimeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/NtpTimeHelper;->enablePeriodicTimeInjection()V

    .line 1990
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$3300(Lcom/android/server/location/GnssLocationProvider;)V

    .line 1993
    :cond_1f
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$2900(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssMeasurementsProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v2, 0x40

    # invokes: Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z
    invoke-static {v1, v2}, Lcom/android/server/location/GnssLocationProvider;->access$3200(Lcom/android/server/location/GnssLocationProvider;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    .line 1995
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$3000(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssNavigationMessageProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v2, 0x80

    # invokes: Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z
    invoke-static {v1, v2}, Lcom/android/server/location/GnssLocationProvider;->access$3200(Lcom/android/server/location/GnssLocationProvider;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    .line 1997
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->restartRequests()V
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$3400(Lcom/android/server/location/GnssLocationProvider;)V

    .line 1998
    return-void
.end method
