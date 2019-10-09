.class Lcom/android/server/location/ActivityRecognitionProxy$2;
.super Ljava/lang/Object;
.source "ActivityRecognitionProxy.java"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ActivityRecognitionProxy;->bindProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ActivityRecognitionProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/ActivityRecognitionProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/ActivityRecognitionProxy;

    .line 106
    iput-object p1, p0, Lcom/android/server/location/ActivityRecognitionProxy$2;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 111
    :try_start_0
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_8f

    .line 115
    .local v0, "descriptor":Ljava/lang/String;
    nop

    .line 114
    nop

    .line 117
    const-class v1, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 119
    nop

    .line 120
    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    move-result-object v1

    .line 121
    .local v1, "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    if-nez v1, :cond_21

    .line 122
    const-string v2, "ActivityRecognitionProxy"

    const-string v3, "No watcher found on connection."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 125
    :cond_21
    iget-object v2, p0, Lcom/android/server/location/ActivityRecognitionProxy$2;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    # getter for: Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;
    invoke-static {v2}, Lcom/android/server/location/ActivityRecognitionProxy;->access$100(Lcom/android/server/location/ActivityRecognitionProxy;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v2

    if-nez v2, :cond_31

    .line 128
    const-string v2, "ActivityRecognitionProxy"

    const-string v3, "AR HW instance not available, binding will be a no-op."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 132
    :cond_31
    :try_start_31
    iget-object v2, p0, Lcom/android/server/location/ActivityRecognitionProxy$2;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    # getter for: Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;
    invoke-static {v2}, Lcom/android/server/location/ActivityRecognitionProxy;->access$100(Lcom/android/server/location/ActivityRecognitionProxy;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;->onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3a} :catch_3b

    .line 135
    goto :goto_43

    .line 133
    :catch_3b
    move-exception v2

    .line 134
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ActivityRecognitionProxy"

    const-string v4, "Error delivering hardware interface to watcher."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v1    # "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_43
    goto :goto_8e

    :cond_44
    const-class v1, Landroid/hardware/location/IActivityRecognitionHardwareClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 138
    nop

    .line 139
    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareClient;

    move-result-object v1

    .line 140
    .local v1, "client":Landroid/hardware/location/IActivityRecognitionHardwareClient;
    if-nez v1, :cond_5f

    .line 141
    const-string v2, "ActivityRecognitionProxy"

    const-string v3, "No client found on connection."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 145
    :cond_5f
    :try_start_5f
    iget-object v2, p0, Lcom/android/server/location/ActivityRecognitionProxy$2;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    # getter for: Lcom/android/server/location/ActivityRecognitionProxy;->mIsSupported:Z
    invoke-static {v2}, Lcom/android/server/location/ActivityRecognitionProxy;->access$200(Lcom/android/server/location/ActivityRecognitionProxy;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/location/ActivityRecognitionProxy$2;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    # getter for: Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;
    invoke-static {v3}, Lcom/android/server/location/ActivityRecognitionProxy;->access$100(Lcom/android/server/location/ActivityRecognitionProxy;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/location/IActivityRecognitionHardwareClient;->onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_6e} :catch_6f

    .line 148
    goto :goto_77

    .line 146
    :catch_6f
    move-exception v2

    .line 147
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "ActivityRecognitionProxy"

    const-string v4, "Error delivering hardware interface to client."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v1    # "client":Landroid/hardware/location/IActivityRecognitionHardwareClient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_77
    goto :goto_8e

    .line 150
    :cond_78
    const-string v1, "ActivityRecognitionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid descriptor found on connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_8e
    return-void

    .line 112
    .end local v0    # "descriptor":Ljava/lang/String;
    :catch_8f
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityRecognitionProxy"

    const-string v2, "Unable to get interface descriptor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    return-void
.end method
