.class public abstract Lcom/android/server/fingerprint/RemovalClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "RemovalClient.java"


# instance fields
.field private mFingerId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "fingerId"    # I
    .param p7, "groupId"    # I
    .param p8, "userId"    # I
    .param p9, "restricted"    # Z
    .param p10, "owner"    # Ljava/lang/String;

    .line 38
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p8

    move/from16 v7, p7

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 39
    move/from16 v1, p6

    iput v1, v0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    .line 40
    return-void
.end method

.method private sendRemoved(III)Z
    .registers 11
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 90
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v0

    .line 92
    .local v0, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    if-eqz v0, :cond_1b

    .line 93
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getHalDeviceId()J

    move-result-wide v2

    move-object v1, v0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JIII)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_1b

    .line 95
    :catch_12
    move-exception v1

    .line 96
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "Failed to notify Removed:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_1c

    .line 97
    :cond_1b
    :goto_1b
    nop

    .line 98
    :goto_1c
    if-nez p3, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1
.end method


# virtual methods
.method public onAuthenticated(II)Z
    .registers 5
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .line 118
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticated() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "rem"    # I

    .line 112
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 124
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public onRemoved(III)Z
    .registers 7
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 103
    if-eqz p1, :cond_11

    .line 104
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getTargetUserId()I

    move-result v2

    .line 104
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 107
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getGroupId()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/fingerprint/RemovalClient;->sendRemoved(III)Z

    move-result v0

    return v0
.end method

.method public start()I
    .registers 7

    .line 44
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 47
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getGroupId()I

    move-result v2

    iget v3, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    invoke-interface {v0, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->remove(II)I

    move-result v2

    .line 48
    .local v2, "result":I
    if-eqz v2, :cond_40

    .line 49
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRemove with id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fingerprintd_remove_start_error"

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 51
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/server/fingerprint/RemovalClient;->onError(II)Z
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3f} :catch_41

    .line 52
    return v2

    .line 56
    .end local v2    # "result":I
    :cond_40
    goto :goto_4a

    .line 54
    :catch_41
    move-exception v2

    .line 55
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startRemove failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4a
    return v1
.end method

.method public stop(Z)I
    .registers 9
    .param p1, "initiatedByClient"    # Z

    .line 62
    iget-boolean v0, p0, Lcom/android/server/fingerprint/RemovalClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 63
    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopRemove: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v1

    .line 66
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 67
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v2, 0x3

    if-nez v0, :cond_1e

    .line 68
    const-string v1, "FingerprintService"

    const-string/jumbo v3, "stopRemoval: no fingerprint HAL!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v2

    .line 72
    :cond_1e
    :try_start_1e
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v3

    .line 73
    .local v3, "result":I
    if-eqz v3, :cond_3c

    .line 74
    const-string v1, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopRemoval failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v3

    .line 77
    :cond_3c
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is no longer removing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_5b} :catch_60

    .line 81
    .end local v3    # "result":I
    nop

    .line 82
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/RemovalClient;->mAlreadyCancelled:Z

    .line 83
    return v1

    .line 78
    :catch_60
    move-exception v1

    .line 79
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopRemoval failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    return v2
.end method
