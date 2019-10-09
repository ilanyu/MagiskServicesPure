.class Lcom/android/server/location/LocationProviderProxy$8;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationProviderProxy;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy;[ZLjava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 293
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$8;->this$0:Lcom/android/server/location/LocationProviderProxy;

    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy$8;->val$result:[Z

    iput-object p3, p0, Lcom/android/server/location/LocationProviderProxy$8;->val$command:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/location/LocationProviderProxy$8;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 296
    invoke-static {p1}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 298
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$8;->val$result:[Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$8;->val$command:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$8;->val$extras:Landroid/os/Bundle;

    invoke-interface {v0, v3, v4}, Lcom/android/internal/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    aput-boolean v3, v1, v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_34
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_3a

    .line 301
    :catch_12
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LocationProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$8;->this$0:Lcom/android/server/location/LocationProviderProxy;

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
    goto :goto_3b

    .line 299
    :catch_34
    move-exception v1

    .line 300
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LocationProviderProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3a
    nop

    .line 305
    :goto_3b
    return-void
.end method
