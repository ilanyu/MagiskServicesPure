.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssMeasurementsProvider$865xzodmeiSeR2xhh7cKZjiZkhE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# instance fields
.field private final synthetic f$0:Landroid/location/GnssMeasurementsEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/location/GnssMeasurementsEvent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssMeasurementsProvider$865xzodmeiSeR2xhh7cKZjiZkhE;->f$0:Landroid/location/GnssMeasurementsEvent;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/os/IInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssMeasurementsProvider$865xzodmeiSeR2xhh7cKZjiZkhE;->f$0:Landroid/location/GnssMeasurementsEvent;

    check-cast p1, Landroid/location/IGnssMeasurementsListener;

    invoke-static {v0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->lambda$onMeasurementsAvailable$0(Landroid/location/GnssMeasurementsEvent;Landroid/location/IGnssMeasurementsListener;)V

    return-void
.end method
