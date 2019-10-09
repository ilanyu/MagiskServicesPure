.class Lcom/android/server/content/SyncManager$ActiveSyncContext;
.super Landroid/content/ISyncContext$Stub;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveSyncContext"
.end annotation


# instance fields
.field mBound:Z

.field mBytesTransferredAtLastPoll:J

.field mEventName:Ljava/lang/String;

.field final mHistoryRowId:J

.field mIsLinkedToDeath:Z

.field mLastPolledTimeElapsed:J

.field final mStartTime:J

.field mSyncAdapter:Landroid/content/ISyncAdapter;

.field final mSyncAdapterUid:I

.field mSyncInfo:Landroid/content/SyncInfo;

.field final mSyncOperation:Lcom/android/server/content/SyncOperation;

.field final mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

.field mTimeoutStartTime:J

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;
    .param p2, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p3, "historyRowId"    # J
    .param p5, "syncAdapterUid"    # I

    .line 1913
    iput-object p1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 1914
    invoke-direct {p0}, Landroid/content/ISyncContext$Stub;-><init>()V

    .line 1891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 1915
    iput p5, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 1916
    iput-object p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 1917
    iput-wide p3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    .line 1918
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 1919
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    .line 1920
    iget-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    iput-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    .line 1921
    iget-object v0, p1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    # invokes: Lcom/android/server/content/SyncManager$SyncHandler;->getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->access$1900(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1922
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p5}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1923
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1924
    return-void
.end method


# virtual methods
.method bindToSyncAdapter(Landroid/content/ComponentName;I)Z
    .registers 11
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1962
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1963
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindToSyncAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_27
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/content/SyncManager;->getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v0

    .line 1967
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 1970
    iget-object v3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v4, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v3, v0, v4}, Lcom/android/server/content/SyncManagerInjector;->canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4a

    .line 1971
    iput-boolean v4, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 1972
    return v4

    .line 1976
    :cond_4a
    iget-object v3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v3

    const/16 v5, 0x15

    new-instance v6, Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v7, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, p0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    .line 1978
    .local v3, "bindResult":Z
    iget-object v5, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "bindService() returned="

    aput-object v7, v6, v4

    iget-boolean v7, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v2, " for "

    aput-object v2, v6, v1

    const/4 v1, 0x3

    aput-object p0, v6, v1

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1979
    if-nez v3, :cond_85

    .line 1980
    iput-boolean v4, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    goto :goto_9c

    .line 1983
    :cond_85
    :try_start_85
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mEventName:Ljava/lang/String;

    .line 1984
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$2100(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mEventName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    invoke-interface {v1, v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteSyncStart(Ljava/lang/String;I)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_9a} :catch_9b

    .line 1986
    goto :goto_9c

    .line 1985
    :catch_9b
    move-exception v1

    .line 1988
    :goto_9c
    return v3
.end method

.method public binderDied()V
    .registers 3

    .line 2020
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    invoke-static {v0, p0, v1}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 2021
    return-void
.end method

.method protected close()V
    .registers 5

    .line 1996
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1997
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unBindFromSyncAdapter: connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    :cond_20
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    if-eqz v0, :cond_52

    .line 2000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 2001
    iget-object v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "unbindService for "

    aput-object v3, v1, v0

    const/4 v0, 0x1

    aput-object p0, v1, v0

    invoke-virtual {v2, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 2002
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2004
    :try_start_43
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2100(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mEventName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteSyncFinish(Ljava/lang/String;I)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_50} :catch_51

    .line 2006
    goto :goto_52

    .line 2005
    :catch_51
    move-exception v0

    .line 2008
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2009
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2010
    return-void
.end method

.method public onFinished(Landroid/content/SyncResult;)V
    .registers 7
    .param p1, "result"    # Landroid/content/SyncResult;

    .line 1931
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    :cond_20
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onFinished result="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, " endpoint="

    aput-object v3, v2, v1

    const/4 v1, 0x3

    .line 1936
    iget-object v3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    if-nez v3, :cond_3f

    const-string/jumbo v3, "null"

    goto :goto_43

    :cond_3f
    iget-object v3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    :goto_43
    aput-object v3, v2, v1

    .line 1935
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1937
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    invoke-static {v0, p0, p1}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 1938
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1948
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1949
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1950
    new-instance v1, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {v1, v2, p0, p2}, Lcom/android/server/content/SyncManager$ServiceConnectionData;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1951
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1952
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1955
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1956
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1957
    new-instance v1, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/content/SyncManager$ServiceConnectionData;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1958
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1959
    return-void
.end method

.method public sendHeartbeat()V
    .registers 1

    .line 1928
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2014
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString(Ljava/lang/StringBuilder;)V

    .line 2015
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1941
    const-string/jumbo v0, "startTime "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mTimeoutStartTime "

    .line 1942
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mHistoryRowId "

    .line 1943
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", syncOperation "

    .line 1944
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1945
    return-void
.end method
