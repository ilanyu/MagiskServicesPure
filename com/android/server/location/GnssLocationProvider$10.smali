.class Lcom/android/server/location/GnssLocationProvider$10;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 1142
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1145
    new-instance v0, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$2100(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Ljava/util/Properties;)V

    .line 1146
    .local v0, "xtraDownloader":Lcom/android/server/location/GpsXtraDownloader;
    invoke-virtual {v0}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v1

    .line 1147
    .local v1, "data":[B
    if-eqz v1, :cond_34

    .line 1148
    # getter for: Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$900()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "GnssLocationProvider"

    const-string v3, "calling native_inject_xtra_data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_1e
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const-string v3, "inject XTRA data"

    # invokes: Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$2200(Lcom/android/server/location/GnssLocationProvider;Ljava/lang/String;)V

    .line 1150
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    array-length v3, v1

    # invokes: Lcom/android/server/location/GnssLocationProvider;->native_inject_xtra_data([BI)V
    invoke-static {v2, v1, v3}, Lcom/android/server/location/GnssLocationProvider;->access$2300(Lcom/android/server/location/GnssLocationProvider;[BI)V

    .line 1151
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/ExponentialBackOff;
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$2400(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/ExponentialBackOff;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/ExponentialBackOff;->reset()V

    .line 1154
    :cond_34
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    # invokes: Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/location/GnssLocationProvider;->access$700(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    .line 1156
    if-nez v1, :cond_53

    .line 1159
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$2500(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 1160
    # getter for: Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/ExponentialBackOff;
    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->access$2400(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/ExponentialBackOff;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/location/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v4

    .line 1159
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1165
    :cond_53
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$2600(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1166
    :try_start_5a
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$2700(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_8f

    if-eqz v3, :cond_86

    .line 1170
    :try_start_66
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$2700(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1171
    # getter for: Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$900()Z

    move-result v3

    if-eqz v3, :cond_85

    const-string v3, "GnssLocationProvider"

    const-string v4, "WakeLock released by handleDownloadXtraData()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7c} :catch_7d
    .catchall {:try_start_66 .. :try_end_7c} :catchall_8f

    goto :goto_85

    .line 1172
    :catch_7d
    move-exception v3

    .line 1173
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7e
    const-string v4, "GnssLocationProvider"

    const-string v5, "Wakelock timeout & release race exception in handleDownloadXtraData()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1175
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_85
    :goto_85
    goto :goto_8d

    .line 1177
    :cond_86
    const-string v3, "GnssLocationProvider"

    const-string v4, "WakeLock expired before release in handleDownloadXtraData()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :goto_8d
    monitor-exit v2

    .line 1181
    return-void

    .line 1180
    :catchall_8f
    move-exception v3

    monitor-exit v2
    :try_end_91
    .catchall {:try_start_7e .. :try_end_91} :catchall_8f

    throw v3
.end method
