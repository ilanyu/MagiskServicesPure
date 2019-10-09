.class Lcom/android/server/location/LocationProviderProxy$1;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 95
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 98
    # getter for: Lcom/android/server/location/LocationProviderProxy;->D:Z
    invoke-static {}, Lcom/android/server/location/LocationProviderProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "LocationProviderProxy"

    const-string v1, "applying state to connected service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/location/ProviderProperties;

    .line 104
    .local v0, "properties":[Lcom/android/internal/location/ProviderProperties;
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 105
    :try_start_17
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$200(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v4

    .line 106
    .local v4, "enabled":Z
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$300(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v5

    .line 107
    .local v5, "request":Lcom/android/internal/location/ProviderRequest;
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$400(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;

    move-result-object v6

    .line 108
    .local v6, "source":Landroid/os/WorkSource;
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_4f

    .line 111
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;
    invoke-static {v1}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v7

    new-instance v8, Lcom/android/server/location/LocationProviderProxy$1$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/LocationProviderProxy$1$1;-><init>(Lcom/android/server/location/LocationProviderProxy$1;[Lcom/android/internal/location/ProviderProperties;ZLcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    invoke-virtual {v7, v8}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    .line 139
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 140
    :try_start_42
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    # setter for: Lcom/android/server/location/LocationProviderProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;
    invoke-static {v1, v3}, Lcom/android/server/location/LocationProviderProxy;->access$602(Lcom/android/server/location/LocationProviderProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;

    .line 141
    monitor-exit v2

    .line 142
    return-void

    .line 141
    :catchall_4c
    move-exception v1

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_4c

    throw v1

    .line 108
    .end local v4    # "enabled":Z
    .end local v5    # "request":Lcom/android/internal/location/ProviderRequest;
    .end local v6    # "source":Landroid/os/WorkSource;
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2
.end method
