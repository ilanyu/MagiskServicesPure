.class Lcom/android/server/location/GnssStatusListenerHelper$1;
.super Ljava/lang/Object;
.source "GnssStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GnssStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssStatusListenerHelper;->onStatusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssStatusListenerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssStatusListenerHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/GnssStatusListenerHelper;

    .line 48
    iput-object p1, p0, Lcom/android/server/location/GnssStatusListenerHelper$1;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGnssStatusListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->onGnssStarted()V

    .line 52
    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    check-cast p1, Landroid/location/IGnssStatusListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssStatusListenerHelper$1;->execute(Landroid/location/IGnssStatusListener;)V

    return-void
.end method
