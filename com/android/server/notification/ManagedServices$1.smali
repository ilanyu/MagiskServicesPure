.class Lcom/android/server/notification/ManagedServices$1;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mService:Landroid/os/IInterface;

.field final synthetic this$0:Lcom/android/server/notification/ManagedServices;

.field final synthetic val$isSystem:Z

.field final synthetic val$servicesBindingTag:Ljava/lang/String;

.field final synthetic val$targetSdkVersion:I

.field final synthetic val$userid:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/ManagedServices;Ljava/lang/String;IZI)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/notification/ManagedServices;

    .line 976
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iput-object p2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    iput-boolean p4, p0, Lcom/android/server/notification/ManagedServices$1;->val$isSystem:Z

    iput p5, p0, Lcom/android/server/notification/ManagedServices$1;->val$targetSdkVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1009
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    # invokes: Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/notification/ManagedServices;->access$400(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " binding died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1011
    :try_start_26
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    # getter for: Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->access$100(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_9f

    .line 1013
    :try_start_31
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_38} :catch_39
    .catchall {:try_start_31 .. :try_end_38} :catchall_9f

    .line 1016
    goto :goto_52

    .line 1014
    :catch_39
    move-exception v1

    .line 1015
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3a
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unbind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1017
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_52
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    # getter for: Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;
    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->access$000(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 1018
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    # getter for: Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;
    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->access$000(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1019
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    # getter for: Lcom/android/server/notification/ManagedServices;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->access$600(Lcom/android/server/notification/ManagedServices;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/ManagedServices$1$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/notification/ManagedServices$1$1;-><init>(Lcom/android/server/notification/ManagedServices$1;Landroid/content/ComponentName;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9d

    .line 1026
    :cond_7c
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    # invokes: Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/notification/ManagedServices;->access$400(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not rebinding as a previous rebind attempt was made: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :goto_9d
    monitor-exit v0

    .line 1030
    return-void

    .line 1029
    :catchall_9f
    move-exception v1

    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_3a .. :try_end_a1} :catchall_9f

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 14
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 981
    const/4 v0, 0x0

    .line 982
    .local v0, "added":Z
    const/4 v1, 0x0

    .line 983
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 984
    :try_start_7
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    # getter for: Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;
    invoke-static {v3}, Lcom/android/server/notification/ManagedServices;->access$000(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 985
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    # getter for: Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/notification/ManagedServices;->access$100(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_50

    .line 987
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-virtual {v3, p2}, Lcom/android/server/notification/ManagedServices;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->mService:Landroid/os/IInterface;

    .line 988
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v5, p0, Lcom/android/server/notification/ManagedServices$1;->mService:Landroid/os/IInterface;

    iget v7, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    iget-boolean v8, p0, Lcom/android/server/notification/ManagedServices$1;->val$isSystem:Z

    iget v10, p0, Lcom/android/server/notification/ManagedServices$1;->val$targetSdkVersion:I

    move-object v6, p1

    move-object v9, p0

    # invokes: Lcom/android/server/notification/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static/range {v4 .. v10}, Lcom/android/server/notification/ManagedServices;->access$200(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    move-object v1, v3

    .line 990
    const/4 v3, 0x0

    invoke-interface {p2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 991
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    # getter for: Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/notification/ManagedServices;->access$300(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_44} :catch_46
    .catchall {:try_start_1d .. :try_end_44} :catchall_50

    move v0, v3

    .line 994
    goto :goto_47

    .line 992
    :catch_46
    move-exception v3

    .line 995
    :goto_47
    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_50

    .line 996
    if-eqz v0, :cond_4f

    .line 997
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 999
    :cond_4f
    return-void

    .line 995
    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1003
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    # getter for: Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->access$100(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1004
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    # invokes: Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/notification/ManagedServices;->access$400(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " connection lost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return-void
.end method
