.class public abstract Lcom/android/server/fingerprint/AuthenticationClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "AuthenticationClient.java"


# static fields
.field public static final LOCKOUT_NONE:I = 0x0

.field public static final LOCKOUT_PERMANENT:I = 0x2

.field public static final LOCKOUT_TIMED:I = 0x1


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field protected mDialogDismissed:Z

.field protected mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field mFlags:I

.field private mInLockout:Z

.field private mOpId:J

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "targetUserId"    # I
    .param p7, "groupId"    # I
    .param p8, "opId"    # J
    .param p10, "restricted"    # Z
    .param p11, "owner"    # Ljava/lang/String;
    .param p12, "bundle"    # Landroid/os/Bundle;
    .param p13, "dialogReceiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;
    .param p14, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    move-object v10, p0

    .line 94
    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mFlags:I

    .line 60
    new-instance v0, Lcom/android/server/fingerprint/AuthenticationClient$1;

    invoke-direct {v0, v10}, Lcom/android/server/fingerprint/AuthenticationClient$1;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 95
    move-wide/from16 v0, p8

    iput-wide v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    .line 96
    move-object/from16 v2, p12

    iput-object v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    .line 97
    move-object/from16 v3, p13

    iput-object v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 98
    move-object/from16 v4, p14

    iput-object v4, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 99
    invoke-virtual {v10}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "fingerprint"

    .line 100
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v5, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/AuthenticationClient;

    .line 38
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/AuthenticationClient;

    .line 38
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 105
    invoke-super {p0}, Lcom/android/server/fingerprint/ClientMonitor;->binderDied()V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    .line 110
    return-void
.end method

.method public abstract handleFailedAttempt()I
.end method

.method public onAcquired(II)Z
    .registers 6
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 115
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_30

    .line 117
    if-eqz p1, :cond_29

    .line 118
    :try_start_6
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 119
    invoke-virtual {v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(II)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_14
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    goto :goto_29

    .line 127
    :catchall_12
    move-exception v0

    goto :goto_23

    .line 122
    :catch_14
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v1, "FingerprintService"

    const-string v2, "Remote exception when sending acquired message"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    .line 124
    const/4 v1, 0x1

    .line 127
    if-nez p1, :cond_22

    .line 128
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    .line 124
    :cond_22
    return v1

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_23
    if-nez p1, :cond_28

    .line 128
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    :cond_28
    throw v0

    .line 121
    :cond_29
    :goto_29
    const/4 v0, 0x0

    .line 127
    if-nez p1, :cond_2f

    .line 128
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    .line 121
    :cond_2f
    return v0

    .line 132
    :cond_30
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v0

    return v0
.end method

.method public onAuthenticated(II)Z
    .registers 15
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "result":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    move v3, v2

    goto :goto_8

    :cond_7
    move v3, v1

    .line 162
    .local v3, "authenticated":Z
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_10

    move v5, v2

    goto :goto_11

    :cond_10
    move v5, v1

    :goto_11
    invoke-static {v4, v5}, Lcom/android/server/fingerprint/FingerprintServiceInjector;->reportFingerEvent(Ljava/lang/String;I)V

    .line 165
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_3f

    .line 167
    if-eqz v3, :cond_22

    .line 168
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAuthenticated()V

    goto :goto_36

    .line 173
    :catch_20
    move-exception v4

    goto :goto_37

    .line 170
    :cond_22
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104025e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_36} :catch_20

    .line 175
    :goto_36
    goto :goto_3f

    .line 173
    :goto_37
    nop

    .line 174
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "FingerprintService"

    const-string v6, "Failed to notify Authenticated:"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v4

    .line 179
    .local v4, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    if-eqz v4, :cond_b4

    .line 181
    :try_start_45
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xfc

    invoke-static {v5, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 183
    if-nez v3, :cond_58

    .line 184
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V

    goto :goto_b3

    .line 187
    :cond_58
    const-string v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAuthenticated(owner="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", gp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getIsRestricted()Z

    move-result v5

    if-nez v5, :cond_9d

    .line 191
    new-instance v5, Landroid/hardware/fingerprint/Fingerprint;

    const-string v7, ""

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v10

    move-object v6, v5

    move v8, p2

    move v9, p1

    invoke-direct/range {v6 .. v11}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    goto :goto_9e

    .line 192
    :cond_9d
    const/4 v5, 0x0

    .line 193
    .local v5, "fp":Landroid/hardware/fingerprint/Fingerprint;
    :goto_9e
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v8

    invoke-interface {v4, v6, v7, v5, v8}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_a9} :catch_aa

    .line 193
    .end local v5    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_b3

    .line 195
    :catch_aa
    move-exception v5

    .line 196
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string v7, "Failed to notify Authenticated:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    const/4 v0, 0x1

    .line 198
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_b3
    goto :goto_b5

    .line 200
    :cond_b4
    const/4 v0, 0x1

    .line 202
    :goto_b5
    if-nez v3, :cond_113

    .line 205
    if-eqz v4, :cond_c0

    sget-boolean v5, Lcom/android/server/fingerprint/FingerprintService;->IS_FOD:Z

    if-nez v5, :cond_c0

    .line 206
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateError()V

    .line 209
    :cond_c0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->handleFailedAttempt()I

    move-result v5

    .line 210
    .local v5, "lockoutMode":I
    if-eqz v5, :cond_10d

    .line 212
    :try_start_c6
    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    .line 213
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Forcing lockout (fp driver code should do this!), mode("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    .line 216
    if-ne v5, v2, :cond_ea

    .line 217
    const/4 v6, 0x7

    goto :goto_ec

    .line 218
    :cond_ea
    const/16 v6, 0x9

    .line 225
    .local v6, "errorCode":I
    :goto_ec
    if-eqz v4, :cond_f5

    .line 226
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v7

    invoke-interface {v4, v7, v8, v6, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V

    .line 231
    :cond_f5
    iget-object v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_104

    .line 232
    iget-object v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v8, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 233
    invoke-virtual {v8, v6, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v8

    .line 232
    invoke-interface {v7, v8}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_104} :catch_105

    .line 237
    .end local v6    # "errorCode":I
    :cond_104
    goto :goto_10d

    .line 235
    :catch_105
    move-exception v6

    .line 236
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "FingerprintService"

    const-string v8, "Failed to notify lockout:"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_10d
    :goto_10d
    if-eqz v5, :cond_111

    move v1, v2

    nop

    :cond_111
    or-int/2addr v0, v1

    .line 240
    .end local v5    # "lockoutMode":I
    goto :goto_11a

    .line 246
    :cond_113
    or-int/2addr v0, v2

    .line 247
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->resetFailedAttempts()V

    .line 248
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStop()V

    .line 250
    :goto_11a
    return v0
.end method

.method public onEnrollResult(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 331
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 343
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public onError(II)Z
    .registers 6
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 138
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-eqz v0, :cond_6

    .line 143
    const/4 v0, 0x1

    return v0

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1e

    .line 147
    :try_start_a
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 148
    invoke-virtual {v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 151
    goto :goto_1e

    .line 149
    :catch_16
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Remote exception when sending error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result v0

    return v0
.end method

.method public onRemoved(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 337
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract resetFailedAttempts()V
.end method

.method public start()I
    .registers 8

    .line 258
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 259
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v1, 0x3

    if-nez v0, :cond_10

    .line 260
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "start authentication: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v1

    .line 263
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStart()V

    .line 265
    :try_start_13
    iget-wide v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I

    move-result v2

    .line 266
    .local v2, "result":I
    const/4 v3, 0x0

    if-eqz v2, :cond_45

    .line 267
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAuthentication failed, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "fingeprintd_auth_start_error"

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 269
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    .line 270
    return v2

    .line 272
    :cond_45
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is authenticating..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_66} :catch_7c

    if-eqz v4, :cond_7a

    .line 277
    :try_start_68
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-interface {v4, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_71} :catch_72

    .line 280
    goto :goto_7a

    .line 278
    :catch_72
    move-exception v4

    .line 279
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_73
    const-string v5, "FingerprintService"

    const-string v6, "Unable to show fingerprint dialog"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_7a} :catch_7c

    .line 285
    .end local v2    # "result":I
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_7a
    :goto_7a
    nop

    .line 286
    return v3

    .line 282
    :catch_7c
    move-exception v2

    .line 283
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startAuthentication failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    return v1
.end method

.method public stop(Z)I
    .registers 9
    .param p1, "initiatedByClient"    # Z

    .line 291
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 292
    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopAuthentication: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v1

    .line 296
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStop()V

    .line 297
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 298
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v2, 0x3

    if-nez v0, :cond_21

    .line 299
    const-string v1, "FingerprintService"

    const-string/jumbo v3, "stopAuthentication: no fingerprint HAL!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v2

    .line 303
    :cond_21
    :try_start_21
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v3

    .line 304
    .local v3, "result":I
    if-eqz v3, :cond_5a

    .line 305
    const-string v1, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopAuthentication failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3e} :catch_9a
    .catchall {:try_start_21 .. :try_end_3e} :catchall_98

    .line 306
    nop

    .line 317
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_59

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v1, :cond_59

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v1, :cond_59

    .line 319
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_50} :catch_51

    .line 322
    goto :goto_59

    .line 320
    :catch_51
    move-exception v1

    .line 321
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_59
    :goto_59
    return v3

    .line 308
    :cond_5a
    :try_start_5a
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is no longer authenticating"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_79} :catch_9a
    .catchall {:try_start_5a .. :try_end_79} :catchall_98

    .line 317
    .end local v3    # "result":I
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_94

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v2, :cond_94

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v2, :cond_94

    .line 319
    :try_start_85
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8a} :catch_8b

    goto :goto_93

    .line 320
    :catch_8b
    move-exception v2

    .line 321
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_93
    nop

    .line 325
    :cond_94
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    .line 326
    return v1

    .line 317
    :catchall_98
    move-exception v1

    goto :goto_bf

    .line 309
    :catch_9a
    move-exception v1

    .line 310
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_9b
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopAuthentication failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_98

    .line 311
    nop

    .line 317
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_be

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v3, :cond_be

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v3, :cond_be

    .line 319
    :try_start_b0
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b5} :catch_b6

    .line 322
    goto :goto_be

    .line 320
    :catch_b6
    move-exception v3

    .line 321
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "Unable to hide fingerprint dialog"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_be
    :goto_be
    return v2

    .line 317
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_bf
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_d9

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v2, :cond_d9

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v2, :cond_d9

    .line 319
    :try_start_cb
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_d0} :catch_d1

    .line 322
    goto :goto_d9

    .line 320
    :catch_d1
    move-exception v2

    .line 321
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_d9
    :goto_d9
    throw v1
.end method
