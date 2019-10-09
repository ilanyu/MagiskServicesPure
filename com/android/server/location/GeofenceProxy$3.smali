.class Lcom/android/server/location/GeofenceProxy$3;
.super Ljava/lang/Object;
.source "GeofenceProxy.java"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeofenceProxy;->setGeofenceHardwareInProviderLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/GeofenceProxy;

    .line 119
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 122
    invoke-static {p1}, Landroid/location/IGeofenceProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeofenceProvider;

    move-result-object v0

    .line 124
    .local v0, "provider":Landroid/location/IGeofenceProvider;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    # getter for: Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;
    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/IGeofenceProvider;->setGeofenceHardware(Landroid/hardware/location/IGeofenceHardware;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 127
    goto :goto_25

    .line 125
    :catch_e
    move-exception v1

    .line 126
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "GeofenceProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception: setGeofenceHardwareInProviderLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method
