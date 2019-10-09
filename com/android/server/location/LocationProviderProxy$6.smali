.class Lcom/android/server/location/LocationProviderProxy$6;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationProviderProxy;->getStatus(Landroid/os/Bundle;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$result:[I


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy;[ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 253
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$6;->this$0:Lcom/android/server/location/LocationProviderProxy;

    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy$6;->val$result:[I

    iput-object p3, p0, Lcom/android/server/location/LocationProviderProxy$6;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 256
    invoke-static {p1}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 258
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$6;->val$result:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$6;->val$extras:Landroid/os/Bundle;

    invoke-interface {v0, v3}, Lcom/android/internal/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I

    move-result v3

    aput v3, v1, v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_32
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_38

    .line 261
    :catch_10
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LocationProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$6;->this$0:Lcom/android/server/location/LocationProviderProxy;

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
    goto :goto_39

    .line 259
    :catch_32
    move-exception v1

    .line 260
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LocationProviderProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_38
    nop

    .line 265
    :goto_39
    return-void
.end method
