.class Lcom/android/server/location/MetokProxy$1;
.super Ljava/lang/Object;
.source "MetokProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/MetokProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/MetokProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/MetokProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/MetokProxy;

    .line 151
    iput-object p1, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 154
    # getter for: Lcom/android/server/location/MetokProxy;->D:Z
    invoke-static {}, Lcom/android/server/location/MetokProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "MetokProxy"

    const-string v1, "applying state to connected service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_d
    const/4 v0, 0x0

    .line 161
    .local v0, "properties":Lcom/android/internal/location/ProviderProperties;
    iget-object v1, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # getter for: Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/location/MetokProxy;->access$100(Lcom/android/server/location/MetokProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 162
    :try_start_15
    iget-object v2, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # getter for: Lcom/android/server/location/MetokProxy;->mEnabled:Z
    invoke-static {v2}, Lcom/android/server/location/MetokProxy;->access$200(Lcom/android/server/location/MetokProxy;)Z

    move-result v2

    .line 163
    .local v2, "enabled":Z
    iget-object v3, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # getter for: Lcom/android/server/location/MetokProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;
    invoke-static {v3}, Lcom/android/server/location/MetokProxy;->access$300(Lcom/android/server/location/MetokProxy;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v3

    .line 164
    .local v3, "request":Lcom/android/internal/location/ProviderRequest;
    iget-object v4, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # getter for: Lcom/android/server/location/MetokProxy;->mWorksource:Landroid/os/WorkSource;
    invoke-static {v4}, Lcom/android/server/location/MetokProxy;->access$400(Lcom/android/server/location/MetokProxy;)Landroid/os/WorkSource;

    move-result-object v4

    .line 165
    .local v4, "source":Landroid/os/WorkSource;
    iget-object v5, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # invokes: Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;
    invoke-static {v5}, Lcom/android/server/location/MetokProxy;->access$500(Lcom/android/server/location/MetokProxy;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v5

    .line 166
    .local v5, "service":Lcom/android/internal/location/ILocationProvider;
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_9e

    .line 168
    if-nez v5, :cond_31

    return-void

    .line 172
    :cond_31
    :try_start_31
    invoke-interface {v5}, Lcom/android/internal/location/ILocationProvider;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    move-object v0, v1

    .line 173
    if-nez v0, :cond_58

    .line 174
    const-string v1, "MetokProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # getter for: Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;
    invoke-static {v7}, Lcom/android/server/location/MetokProxy;->access$600(Lcom/android/server/location/MetokProxy;)Lcom/android/server/location/MetokWatcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has invalid locatino provider properties"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_58
    if-eqz v2, :cond_8b

    .line 180
    invoke-interface {v5}, Lcom/android/internal/location/ILocationProvider;->enable()V

    .line 181
    if-eqz v3, :cond_8b

    .line 182
    invoke-interface {v5, v3, v4}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_62} :catch_85
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_62} :catch_63

    goto :goto_8b

    .line 187
    :catch_63
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MetokProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # getter for: Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;
    invoke-static {v8}, Lcom/android/server/location/MetokProxy;->access$600(Lcom/android/server/location/MetokProxy;)Lcom/android/server/location/MetokWatcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_8c

    .line 185
    :catch_85
    move-exception v1

    .line 186
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "MetokProxy"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v0    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v1    # "e":Landroid/os/RemoteException;
    .local v6, "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_8b
    :goto_8b
    nop

    .line 192
    :goto_8c
    move-object v6, v0

    iget-object v0, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # getter for: Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MetokProxy;->access$100(Lcom/android/server/location/MetokProxy;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 193
    :try_start_94
    iget-object v0, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # setter for: Lcom/android/server/location/MetokProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;
    invoke-static {v0, v6}, Lcom/android/server/location/MetokProxy;->access$702(Lcom/android/server/location/MetokProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;

    .line 194
    monitor-exit v7

    .line 195
    return-void

    .line 194
    :catchall_9b
    move-exception v0

    monitor-exit v7
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_9b

    throw v0

    .line 166
    .end local v2    # "enabled":Z
    .end local v3    # "request":Lcom/android/internal/location/ProviderRequest;
    .end local v4    # "source":Landroid/os/WorkSource;
    .end local v5    # "service":Lcom/android/internal/location/ILocationProvider;
    .end local v6    # "properties":Lcom/android/internal/location/ProviderProperties;
    .restart local v0    # "properties":Lcom/android/internal/location/ProviderProperties;
    :catchall_9e
    move-exception v2

    :try_start_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v2
.end method
