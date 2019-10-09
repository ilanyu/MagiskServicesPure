.class Lcom/android/server/broadcastradio/hal2/TunerSession;
.super Landroid/hardware/radio/ITuner$Stub;
.source "TunerSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.session"

.field private static final kAudioDeviceName:Ljava/lang/String; = "Radio tuner source"


# instance fields
.field private final mCallback:Lcom/android/server/broadcastradio/hal2/TunerCallback;

.field private mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

.field private final mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

.field private mIsClosed:Z

.field private mIsMuted:Z

.field private final mLock:Ljava/lang/Object;

.field private final mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/broadcastradio/V2_0/ITunerSession;Lcom/android/server/broadcastradio/hal2/TunerCallback;)V
    .registers 5
    .param p1, "module"    # Lcom/android/server/broadcastradio/hal2/RadioModule;
    .param p2, "hwSession"    # Landroid/hardware/broadcastradio/V2_0/ITunerSession;
    .param p3, "callback"    # Lcom/android/server/broadcastradio/hal2/TunerCallback;

    .line 53
    invoke-direct {p0}, Landroid/hardware/radio/ITuner$Stub;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 55
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 56
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/broadcastradio/hal2/TunerCallback;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Lcom/android/server/broadcastradio/hal2/TunerCallback;

    .line 57
    return-void
.end method

.method private checkNotClosedLocked()V
    .registers 3

    .line 73
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    if-nez v0, :cond_5

    .line 76
    return-void

    .line 74
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tuner is closed, no further operations are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic lambda$getParameters$4(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "keys"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->getParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isConfigFlagSet$2(Landroid/util/MutableInt;Landroid/util/MutableBoolean;IZ)V
    .registers 4
    .param p0, "halResult"    # Landroid/util/MutableInt;
    .param p1, "flagState"    # Landroid/util/MutableBoolean;
    .param p2, "result"    # I
    .param p3, "value"    # Z

    .line 205
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 206
    iput-boolean p3, p1, Landroid/util/MutableBoolean;->value:Z

    .line 207
    return-void
.end method

.method public static synthetic lambda$setConfiguration$0(Lcom/android/server/broadcastradio/hal2/TunerSession;Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 3
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Lcom/android/server/broadcastradio/hal2/TunerCallback;

    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/TunerCallback;->mClientCb:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method public static synthetic lambda$setParameters$3(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "parameters"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoToHal(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->setParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$startBackgroundScan$1(Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Lcom/android/server/broadcastradio/hal2/TunerCallback;

    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/TunerCallback;->mClientCb:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 145
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$YOfksBuizvGCCXXC3xdyOet2Yr8;

    invoke-direct {v2, v1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$YOfksBuizvGCCXXC3xdyOet2Yr8;-><init>(Landroid/hardware/broadcastradio/V2_0/ITunerSession;)V

    invoke-static {v2}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$VoidFuncThrowingRemoteException;)V

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public cancelAnnouncement()V
    .registers 3

    .line 151
    const-string v0, "BcRadio2Srv.session"

    const-string v1, "Announcements control doesn\'t involve cancelling at the HAL level in 2.x"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public close()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 63
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 64
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 92
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    monitor-exit v0

    return-object v1

    .line 93
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "id"    # I

    .line 156
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {v0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getParameters(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 238
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 240
    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$UmZx38YMX_OHk94g5WH0WyZPNu0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$UmZx38YMX_OHk94g5WH0WyZPNu0;-><init>(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 242
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public isClosed()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    return v0
.end method

.method public isConfigFlagSet(I)Z
    .registers 9
    .param p1, "flag"    # I

    .line 197
    const-string v0, "BcRadio2Srv.session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isConfigFlagSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 201
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 202
    .local v1, "halResult":Landroid/util/MutableInt;
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_60

    .line 204
    .local v2, "flagState":Landroid/util/MutableBoolean;
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    new-instance v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$ypybq6SvfCU67BzHDgrQ7oDdspw;

    invoke-direct {v4, v1, v2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$ypybq6SvfCU67BzHDgrQ7oDdspw;-><init>(Landroid/util/MutableInt;Landroid/util/MutableBoolean;)V

    invoke-interface {v3, p1, v4}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->isConfigFlagSet(ILandroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_37} :catch_44
    .catchall {:try_start_2d .. :try_end_37} :catchall_60

    .line 210
    nop

    .line 211
    :try_start_38
    const-string/jumbo v3, "isConfigFlagSet"

    iget v4, v1, Landroid/util/MutableInt;->value:I

    invoke-static {v3, v4}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 213
    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z

    monitor-exit v0

    return v3

    .line 208
    :catch_44
    move-exception v3

    .line 209
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to check flag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 214
    .end local v1    # "halResult":Landroid/util/MutableInt;
    .end local v2    # "flagState":Landroid/util/MutableBoolean;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_38 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public isConfigFlagSupported(I)Z
    .registers 4
    .param p1, "flag"    # I

    .line 186
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->isConfigFlagSet(I)Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_4} :catch_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_4} :catch_5

    .line 187
    return v0

    .line 190
    :catch_5
    move-exception v0

    .line 191
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    return v1

    .line 188
    .end local v0    # "ex":Ljava/lang/UnsupportedOperationException;
    :catch_8
    move-exception v1

    .line 189
    .local v1, "ex":Ljava/lang/IllegalStateException;
    return v0
.end method

.method public isMuted()Z
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 110
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    monitor-exit v0

    return v1

    .line 111
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public scan(ZZ)V
    .registers 6
    .param p1, "directionDown"    # Z
    .param p2, "skipSubChannel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 127
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    xor-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->scan(ZZ)I

    move-result v1

    .line 128
    .local v1, "halResult":I
    const-string/jumbo v2, "step"

    invoke-static {v2, v1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 129
    .end local v1    # "halResult":I
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public setConfigFlag(IZ)V
    .registers 6
    .param p1, "flag"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    const-string v0, "BcRadio2Srv.session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setConfigFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_26
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 222
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {v1, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->setConfigFlag(IZ)I

    move-result v1

    .line 223
    .local v1, "halResult":I
    const-string/jumbo v2, "setConfigFlag"

    invoke-static {v2, v1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 224
    .end local v1    # "halResult":I
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 5
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;

    .line 80
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 82
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioManager$BandConfig;

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 83
    const-string v1, "BcRadio2Srv.session"

    const-string v2, "Ignoring setConfiguration - not applicable for broadcastradio HAL 2.x"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$zciYeXvEvoYmcVVXon2g963Oe64;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$zciYeXvEvoYmcVVXon2g963Oe64;-><init>(Lcom/android/server/broadcastradio/hal2/TunerSession;Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;)V

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public setMuted(Z)V
    .registers 5
    .param p1, "mute"    # Z

    .line 98
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 100
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    if-ne v1, p1, :cond_c

    monitor-exit v0

    return-void

    .line 101
    :cond_c
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    .line 102
    const-string v1, "BcRadio2Srv.session"

    const-string v2, "Mute via RadioService is not implemented - please handle it via app"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public setParameters(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .param p1, "parameters"    # Ljava/util/Map;

    .line 229
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 231
    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$hsnpNw6T-T5c0D5uUev9VuiIUUg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$hsnpNw6T-T5c0D5uUev9VuiIUUg;-><init>(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 233
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public startBackgroundScan()Z
    .registers 3

    .line 161
    const-string v0, "BcRadio2Srv.session"

    const-string v1, "Explicit background scan trigger is not supported with HAL 2.x"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$mmncPOeo4VmHBIRo77qp7XrwQeA;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$mmncPOeo4VmHBIRo77qp7XrwQeA;-><init>(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;)V

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .registers 5
    .param p1, "filter"    # Landroid/hardware/radio/ProgramList$Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 170
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programFilterToHal(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->startProgramListUpdates(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)I

    move-result v1

    .line 171
    .local v1, "halResult":I
    const-string/jumbo v2, "startProgramListUpdates"

    invoke-static {v2, v1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 172
    .end local v1    # "halResult":I
    monitor-exit v0

    .line 173
    return-void

    .line 172
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public step(ZZ)V
    .registers 6
    .param p1, "directionDown"    # Z
    .param p2, "skipSubChannel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 118
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    xor-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->step(Z)I

    move-result v1

    .line 119
    .local v1, "halResult":I
    const-string/jumbo v2, "step"

    invoke-static {v2, v1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 120
    .end local v1    # "halResult":I
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public stopProgramListUpdates()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 179
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {v1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->stopProgramListUpdates()V

    .line 180
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public tune(Landroid/hardware/radio/ProgramSelector;)V
    .registers 5
    .param p1, "selector"    # Landroid/hardware/radio/ProgramSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 136
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorToHal(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I

    move-result v1

    .line 137
    .local v1, "halResult":I
    const-string/jumbo v2, "tune"

    invoke-static {v2, v1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 138
    .end local v1    # "halResult":I
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
