.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerprintServiceLockoutResetMonitor"
.end annotation


# static fields
.field private static final WAKELOCK_TIMEOUT_MS:J = 0x7d0L


# instance fields
.field private final mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

.field private final mRemoveCallbackRunnable:Ljava/lang/Runnable;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V
    .registers 5
    .param p2, "callback"    # Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    .line 1090
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1122
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    .line 1091
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    .line 1092
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {p1}, Lcom/android/server/fingerprint/FingerprintService;->access$1300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;

    move-result-object p1

    const-string/jumbo v0, "lockout reset callback"

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1095
    :try_start_1c
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    invoke-interface {p1}, Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_26} :catch_27

    .line 1098
    goto :goto_2f

    .line 1096
    :catch_27
    move-exception p1

    .line 1097
    .local p1, "e":Landroid/os/RemoteException;
    const-string v0, "FingerprintService"

    const-string v1, "caught remote exception in linkToDeath"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1099
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .line 1083
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->releaseWakelock()V

    return-void
.end method

.method private releaseWakelock()V
    .registers 2

    .line 1137
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1138
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1140
    :cond_d
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1132
    const-string v0, "FingerprintService"

    const-string v1, "Lockout reset callback binder died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$500(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1134
    return-void
.end method

.method public sendLockoutReset()V
    .registers 5

    .line 1102
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    if-eqz v0, :cond_3c

    .line 1104
    :try_start_4
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1105
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v1

    new-instance v3, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$1;

    invoke-direct {v3, p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;->onLockoutReset(JLandroid/os/IRemoteCallback;)V
    :try_end_1b
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_1b} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_3b

    .line 1115
    :catch_1c
    move-exception v0

    .line 1116
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to invoke onLockoutReset: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->releaseWakelock()V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_3c

    .line 1112
    :catch_28
    move-exception v0

    .line 1113
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v1, "FingerprintService"

    const-string v2, "Death object while invoking onLockoutReset: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1114
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$500(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1118
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_3b
    nop

    .line 1120
    :cond_3c
    :goto_3c
    return-void
.end method
