.class public abstract Lcom/android/server/fingerprint/EnumerateClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "EnumerateClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "groupId"    # I
    .param p7, "userId"    # I
    .param p8, "restricted"    # Z
    .param p9, "owner"    # Ljava/lang/String;

    .line 35
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onAuthenticated(II)Z
    .registers 5
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .line 103
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticated() called for enumerate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "rem"    # I

    .line 109
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for enumerate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(III)Z
    .registers 12
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 90
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v6

    .line 91
    .local v6, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    const/4 v7, 0x1

    if-nez v6, :cond_8

    .line 92
    return v7

    .line 94
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getHalDeviceId()J

    move-result-wide v1

    move-object v0, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnumerated(JIII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14

    .line 97
    goto :goto_1c

    .line 95
    :catch_14
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to notify enumerated:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    if-nez p3, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v7, 0x0

    :goto_20
    return v7
.end method

.method public onRemoved(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 115
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for enumerate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public start()I
    .registers 7

    .line 40
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 43
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enumerate()I

    move-result v2

    .line 44
    .local v2, "result":I
    if-eqz v2, :cond_3c

    .line 45
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start enumerate for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getTargetUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fingerprintd_enum_start_error"

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 48
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/server/fingerprint/EnumerateClient;->onError(II)Z
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3b} :catch_3d

    .line 49
    return v2

    .line 53
    .end local v2    # "result":I
    :cond_3c
    goto :goto_46

    .line 51
    :catch_3d
    move-exception v2

    .line 52
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startEnumeration failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_46
    return v1
.end method

.method public stop(Z)I
    .registers 8
    .param p1, "initiatedByClient"    # Z

    .line 59
    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnumerateClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 60
    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopEnumerate: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v1

    .line 63
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 64
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v2, 0x3

    if-nez v0, :cond_1e

    .line 65
    const-string v1, "FingerprintService"

    const-string/jumbo v3, "stopEnumeration: no fingerprint HAL!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v2

    .line 69
    :cond_1e
    :try_start_1e
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v3

    .line 70
    .local v3, "result":I
    if-eqz v3, :cond_3c

    .line 71
    const-string v1, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stop enumeration failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_3b} :catch_47

    .line 72
    return v3

    .line 77
    .end local v3    # "result":I
    :cond_3c
    nop

    .line 81
    if-eqz p1, :cond_43

    .line 82
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lcom/android/server/fingerprint/EnumerateClient;->onError(II)Z

    .line 84
    :cond_43
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/EnumerateClient;->mAlreadyCancelled:Z

    .line 85
    return v1

    .line 74
    :catch_47
    move-exception v1

    .line 75
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopEnumeration failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    return v2
.end method
