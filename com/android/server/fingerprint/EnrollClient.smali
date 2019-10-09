.class public abstract Lcom/android/server/fingerprint/EnrollClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "EnrollClient.java"


# static fields
.field private static final ENROLLMENT_TIMEOUT_MS:I = 0xea60

.field private static final MS_PER_SEC:J = 0x3e8L


# instance fields
.field private mCryptoToken:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "userId"    # I
    .param p7, "groupId"    # I
    .param p8, "cryptoToken"    # [B
    .param p9, "restricted"    # Z
    .param p10, "owner"    # Ljava/lang/String;

    move-object/from16 v0, p8

    .line 43
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 44
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    move-object v2, p0

    iput-object v1, v2, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    .line 45
    return-void
.end method

.method private sendEnrollResult(III)Z
    .registers 12
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 69
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v6

    .line 70
    .local v6, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    const/4 v7, 0x1

    if-nez v6, :cond_8

    .line 71
    return v7

    .line 75
    :cond_8
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->IS_FOD:Z

    if-nez v0, :cond_f

    .line 76
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->vibrateSuccess()V

    .line 79
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xfb

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 81
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getHalDeviceId()J

    move-result-wide v1

    move-object v0, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_28

    .line 82
    if-nez p3, :cond_26

    goto :goto_27

    :cond_26
    const/4 v7, 0x0

    :goto_27
    return v7

    .line 83
    :catch_28
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to notify EnrollResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    return v7
.end method


# virtual methods
.method public onAuthenticated(II)Z
    .registers 5
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .line 152
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticated() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(III)Z
    .registers 7
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 54
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getTargetUserId()I

    move-result v0

    if-eqz v0, :cond_20

    .line 55
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TargetUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getTargetUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_20
    if-nez p3, :cond_31

    .line 59
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 60
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getTargetUserId()I

    move-result v2

    .line 59
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    .line 62
    :cond_31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/EnrollClient;->sendEnrollResult(III)Z

    move-result v0

    return v0
.end method

.method public onEnumerationResult(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 146
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public onRemoved(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 140
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public start()I
    .registers 8

    .line 91
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 92
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_f

    .line 93
    const-string v1, "FingerprintService"

    const-string v2, "enroll: no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x3

    return v1

    .line 96
    :cond_f
    const/16 v1, 0x3c

    move v2, v1

    .line 98
    .local v2, "timeout":I
    const/4 v3, 0x0

    :try_start_13
    iget-object v4, p0, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v5

    invoke-interface {v0, v4, v5, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll([BII)I

    move-result v1

    .line 99
    .local v1, "result":I
    if-eqz v1, :cond_44

    .line 100
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startEnroll failed, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "fingerprintd_enroll_start_error"

    invoke-static {v4, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 102
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/android/server/fingerprint/EnrollClient;->onError(II)Z
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_43} :catch_45

    .line 103
    return v1

    .line 107
    .end local v1    # "result":I
    :cond_44
    goto :goto_4e

    .line 105
    :catch_45
    move-exception v1

    .line 106
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "startEnroll failed"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4e
    return v3
.end method

.method public stop(Z)I
    .registers 8
    .param p1, "initiatedByClient"    # Z

    .line 113
    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 114
    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopEnroll: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v1

    .line 117
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 118
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_1e

    .line 119
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "stopEnrollment: no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v1, 0x3

    return v1

    .line 123
    :cond_1e
    :try_start_1e
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v2

    .line 124
    .local v2, "result":I
    if-eqz v2, :cond_3c

    .line 125
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startEnrollCancel failed, result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_3b} :catch_3d

    .line 126
    return v2

    .line 130
    .end local v2    # "result":I
    :cond_3c
    goto :goto_46

    .line 128
    :catch_3d
    move-exception v2

    .line 129
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopEnrollment failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_46
    if-eqz p1, :cond_4c

    .line 132
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lcom/android/server/fingerprint/EnrollClient;->onError(II)Z

    .line 134
    :cond_4c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mAlreadyCancelled:Z

    .line 135
    return v1
.end method
