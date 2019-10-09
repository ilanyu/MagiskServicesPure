.class public abstract Lcom/android/server/fingerprint/ClientMonitor;
.super Ljava/lang/Object;
.source "ClientMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field protected static final DEBUG:Z = true

.field private static final DEFAULT_SUCCESS_VIBRATION_PATTERN:[J

.field protected static final ERROR_ESRCH:I = 0x3

.field private static final FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field protected static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static final VIBRATE_DURATION:I = 0x3c


# instance fields
.field protected mAlreadyCancelled:Z

.field private final mContext:Landroid/content/Context;

.field private final mErrorVibrationEffect:Landroid/os/VibrationEffect;

.field private final mGroupId:I

.field private final mHalDeviceId:J

.field private final mIsRestricted:Z

.field private final mOwner:Ljava/lang/String;

.field private mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private final mSuccessVibrationEffect:Landroid/os/VibrationEffect;

.field private final mTargetUserId:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/server/fingerprint/ClientMonitor;->DEFAULT_SUCCESS_VIBRATION_PATTERN:[J

    .line 43
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 45
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 46
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/fingerprint/ClientMonitor;->FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 43
    return-void

    nop

    :array_20
    .array-data 8
        0x0
        0x1e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "userId"    # I
    .param p7, "groupId"    # I
    .param p8, "restricted"    # Z
    .param p9, "owner"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    .line 78
    iput-wide p2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mHalDeviceId:J

    .line 79
    iput-object p4, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 80
    iput-object p5, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 81
    iput p6, p0, Lcom/android/server/fingerprint/ClientMonitor;->mTargetUserId:I

    .line 82
    iput p7, p0, Lcom/android/server/fingerprint/ClientMonitor;->mGroupId:I

    .line 83
    iput-boolean p8, p0, Lcom/android/server/fingerprint/ClientMonitor;->mIsRestricted:Z

    .line 84
    iput-object p9, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mSuccessVibrationEffect:Landroid/os/VibrationEffect;

    .line 86
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mErrorVibrationEffect:Landroid/os/VibrationEffect;

    .line 88
    if-eqz p4, :cond_30

    .line 89
    :try_start_23
    invoke-interface {p4, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_30

    .line 91
    :catch_27
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_31

    .line 93
    :cond_30
    :goto_30
    nop

    .line 94
    :goto_31
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 183
    iput-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 184
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    .line 185
    return-void
.end method

.method public destroy()V
    .registers 7

    .line 168
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 170
    :try_start_5
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_b} :catch_c

    .line 174
    goto :goto_2f

    .line 171
    :catch_c
    move-exception v0

    .line 173
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroy(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "here"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_2f
    iput-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 177
    :cond_31
    iput-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 178
    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_22

    .line 191
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_27

    .line 195
    :cond_22
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 196
    nop

    .line 197
    return-void

    .line 195
    :catchall_27
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
.end method

.method public final getGroupId()I
    .registers 2

    .line 224
    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mGroupId:I

    return v0
.end method

.method public final getHalDeviceId()J
    .registers 3

    .line 204
    iget-wide v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mHalDeviceId:J

    return-wide v0
.end method

.method public final getIsRestricted()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mIsRestricted:Z

    return v0
.end method

.method public final getOwnerString()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-object v0
.end method

.method public final getTargetUserId()I
    .registers 2

    .line 220
    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mTargetUserId:I

    return v0
.end method

.method public final getToken()Landroid/os/IBinder;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract notifyUserActivity()V
.end method

.method public onAcquired(II)Z
    .registers 7
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 134
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 135
    return v1

    .line 137
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getHalDeviceId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JII)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_18
    .catchall {:try_start_6 .. :try_end_f} :catchall_16

    .line 138
    const/4 v0, 0x0

    .line 144
    if-nez p1, :cond_15

    .line 145
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    .line 138
    :cond_15
    return v0

    .line 144
    :catchall_16
    move-exception v0

    goto :goto_27

    .line 139
    :catch_18
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v2, "FingerprintService"

    const-string v3, "Failed to invoke sendAcquired:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    .line 141
    nop

    .line 144
    if-nez p1, :cond_26

    .line 145
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    .line 141
    :cond_26
    return v1

    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    if-nez p1, :cond_2c

    .line 145
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    :cond_2c
    throw v0
.end method

.method public abstract onAuthenticated(II)Z
.end method

.method public abstract onEnrollResult(III)Z
.end method

.method public abstract onEnumerationResult(III)Z
.end method

.method public onError(II)Z
    .registers 6
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 157
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_16

    .line 159
    :try_start_4
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getHalDeviceId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 162
    goto :goto_16

    .line 160
    :catch_e
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to invoke sendError:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onRemoved(III)Z
.end method

.method public abstract start()I
.end method

.method public abstract stop(Z)I
.end method

.method public final vibrateError()V
    .registers 4

    .line 241
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 242
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_11

    .line 245
    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 247
    :cond_11
    return-void
.end method

.method public final vibrateSuccess()V
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 233
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_11

    .line 236
    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 238
    :cond_11
    return-void
.end method
