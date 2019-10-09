.class Lcom/android/server/am/AssistDataReceiverProxy;
.super Ljava/lang/Object;
.source "AssistDataReceiverProxy.java"

# interfaces
.implements Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mCallerPackage:Ljava/lang/String;

.field private mReceiver:Landroid/app/IAssistDataReceiver;


# direct methods
.method public constructor <init>(Landroid/app/IAssistDataReceiver;Ljava/lang/String;)V
    .registers 3
    .param p1, "receiver"    # Landroid/app/IAssistDataReceiver;
    .param p2, "callerPackage"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    .line 44
    iput-object p2, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mCallerPackage:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/android/server/am/AssistDataReceiverProxy;->linkToDeath()V

    .line 46
    return-void
.end method

.method private linkToDeath()V
    .registers 4

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v0}, Landroid/app/IAssistDataReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 93
    goto :goto_13

    .line 91
    :catch_b
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManager"

    const-string v2, "Could not link to client death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method private unlinkToDeath()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    if-eqz v0, :cond_e

    .line 98
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v0}, Landroid/app/IAssistDataReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 100
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    .line 101
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/android/server/am/AssistDataReceiverProxy;->unlinkToDeath()V

    .line 86
    return-void
.end method

.method public canHandleReceivedAssistDataLocked()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onAssistDataReceivedLocked(Landroid/os/Bundle;II)V
    .registers 8
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "activityIndex"    # I
    .param p3, "activityCount"    # I

    .line 56
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    if-eqz v0, :cond_23

    .line 58
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v0, p1}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 62
    goto :goto_23

    .line 59
    :catch_a
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to proxy assist data to receiver in package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method public onAssistRequestCompleted()V
    .registers 1

    .line 80
    invoke-direct {p0}, Lcom/android/server/am/AssistDataReceiverProxy;->unlinkToDeath()V

    .line 81
    return-void
.end method

.method public onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 68
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    if-eqz v0, :cond_23

    .line 70
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v0, p1}, Landroid/app/IAssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 74
    goto :goto_23

    .line 71
    :catch_a
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to proxy assist screenshot to receiver in package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method
