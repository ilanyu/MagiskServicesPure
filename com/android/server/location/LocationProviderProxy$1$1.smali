.class Lcom/android/server/location/LocationProviderProxy$1$1;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationProviderProxy$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/LocationProviderProxy$1;

.field final synthetic val$enabled:Z

.field final synthetic val$properties:[Lcom/android/internal/location/ProviderProperties;

.field final synthetic val$request:Lcom/android/internal/location/ProviderRequest;

.field final synthetic val$source:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy$1;[Lcom/android/internal/location/ProviderProperties;ZLcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "this$1"    # Lcom/android/server/location/LocationProviderProxy$1;

    .line 111
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->this$1:Lcom/android/server/location/LocationProviderProxy$1;

    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$properties:[Lcom/android/internal/location/ProviderProperties;

    iput-boolean p3, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$enabled:Z

    iput-object p4, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$request:Lcom/android/internal/location/ProviderRequest;

    iput-object p5, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$source:Landroid/os/WorkSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 114
    invoke-static {p1}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 117
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$properties:[Lcom/android/internal/location/ProviderProperties;

    invoke-interface {v0}, Lcom/android/internal/location/ILocationProvider;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 118
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$properties:[Lcom/android/internal/location/ProviderProperties;

    aget-object v1, v1, v3

    if-nez v1, :cond_35

    .line 119
    const-string v1, "LocationProviderProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->this$1:Lcom/android/server/location/LocationProviderProxy$1;

    iget-object v3, v3, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;
    invoke-static {v3}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has invalid location provider properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_35
    iget-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$enabled:Z

    if-eqz v1, :cond_72

    .line 125
    invoke-interface {v0}, Lcom/android/internal/location/ILocationProvider;->enable()V

    .line 126
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$request:Lcom/android/internal/location/ProviderRequest;

    if-eqz v1, :cond_72

    .line 127
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$request:Lcom/android/internal/location/ProviderRequest;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$source:Landroid/os/WorkSource;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_47} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_47} :catch_48

    goto :goto_72

    .line 132
    :catch_48
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LocationProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->this$1:Lcom/android/server/location/LocationProviderProxy$1;

    iget-object v4, v4, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

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
    goto :goto_73

    .line 130
    :catch_6c
    move-exception v1

    .line 131
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LocationProviderProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_72
    :goto_72
    nop

    .line 136
    :goto_73
    return-void
.end method
