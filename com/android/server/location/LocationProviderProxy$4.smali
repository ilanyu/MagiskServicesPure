.class Lcom/android/server/location/LocationProviderProxy$4;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationProviderProxy;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;

.field final synthetic val$request:Lcom/android/internal/location/ProviderRequest;

.field final synthetic val$source:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 212
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$4;->this$0:Lcom/android/server/location/LocationProviderProxy;

    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy$4;->val$request:Lcom/android/internal/location/ProviderRequest;

    iput-object p3, p0, Lcom/android/server/location/LocationProviderProxy$4;->val$source:Landroid/os/WorkSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 215
    invoke-static {p1}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 217
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$4;->val$request:Lcom/android/internal/location/ProviderRequest;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$4;->val$source:Landroid/os/WorkSource;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_34

    .line 220
    :catch_c
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LocationProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$4;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;
    invoke-static {v4}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_35

    .line 218
    :catch_2e
    move-exception v1

    .line 219
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LocationProviderProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_34
    nop

    .line 224
    :goto_35
    return-void
.end method
