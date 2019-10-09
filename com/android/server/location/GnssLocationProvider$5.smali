.class Lcom/android/server/location/GnssLocationProvider$5;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
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

    .line 592
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$5;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 5

    .line 595
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$5;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    # invokes: Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$700(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    .line 596
    return-void
.end method
