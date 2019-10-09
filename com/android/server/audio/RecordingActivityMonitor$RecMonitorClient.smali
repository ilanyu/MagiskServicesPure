.class final Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RecordingActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecMonitorClient"
.end annotation


# static fields
.field static sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;


# instance fields
.field final mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

.field final mIsPrivileged:Z


# direct methods
.method constructor <init>(Landroid/media/IRecordingConfigDispatcher;Z)V
    .registers 3
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;
    .param p2, "isPrivileged"    # Z

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    .line 271
    iput-boolean p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    .line 272
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 275
    const-string v0, "AudioService.RecordingActivityMonitor"

    const-string v1, "client died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 277
    return-void
.end method

.method init()Z
    .registers 5

    .line 281
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v1}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    .line 282
    const/4 v0, 0x1

    return v0

    .line 283
    :catch_c
    move-exception v1

    .line 284
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioService.RecordingActivityMonitor"

    const-string v3, "Could not link to client death"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    return v0
.end method

.method release()V
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v0}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 291
    return-void
.end method
