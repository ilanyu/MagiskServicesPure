.class Lcom/android/server/fingerprint/FingerprintService$10;
.super Lcom/android/server/fingerprint/AuthenticationClient;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V
    .registers 32
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "halDeviceId"    # J
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "targetUserId"    # I
    .param p8, "groupId"    # I
    .param p9, "opId"    # J
    .param p11, "restricted"    # Z
    .param p12, "owner"    # Ljava/lang/String;
    .param p13, "bundle"    # Landroid/os/Bundle;
    .param p14, "dialogReceiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;
    .param p15, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    .line 962
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iput-object v14, v15, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move-object v0, v15

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    move/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    invoke-direct/range {v0 .. v14}, Lcom/android/server/fingerprint/AuthenticationClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V

    return-void
.end method


# virtual methods
.method public getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 2

    .line 1016
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    return-object v0
.end method

.method public handleFailedAttempt()I
    .registers 7

    .line 983
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 984
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 985
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 986
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1000(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v1

    .line 987
    .local v1, "lockoutMode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3c

    .line 988
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    move-result-object v2

    iget v5, v2, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    goto :goto_49

    .line 989
    :cond_3c
    if-ne v1, v4, :cond_49

    .line 990
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    move-result-object v2

    iget v5, v2, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    .line 994
    :cond_49
    :goto_49
    if-eqz v1, :cond_57

    .line 995
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->scheduleLockoutResetForUser(I)V
    invoke-static {v2, v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;I)V

    .line 997
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->fodCallBack(II)I

    .line 998
    return v1

    .line 1000
    :cond_57
    return v3
.end method

.method public notifyUserActivity()V
    .registers 2

    .line 1011
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$600(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 1012
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 966
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mTaskStackListener:Landroid/app/TaskStackListener;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/TaskStackListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 969
    goto :goto_18

    .line 967
    :catch_10
    move-exception v0

    .line 968
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Could not register task stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 970
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method public onStop()V
    .registers 4

    .line 975
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mTaskStackListener:Landroid/app/TaskStackListener;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/TaskStackListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 978
    goto :goto_18

    .line 976
    :catch_10
    move-exception v0

    .line 977
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Could not unregister task stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method public resetFailedAttempts()V
    .registers 4

    .line 1005
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    .line 1006
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 1005
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttemptsForUser(ZI)V

    .line 1007
    return-void
.end method
