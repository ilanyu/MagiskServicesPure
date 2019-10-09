.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$callingUserId:I

.field final synthetic val$dialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field final synthetic val$flags:I

.field final synthetic val$groupId:I

.field final synthetic val$opId:J

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Ljava/lang/String;JLandroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLandroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .registers 13
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    .line 1291
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opPackageName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opId:J

    iput-object p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$token:Landroid/os/IBinder;

    iput p6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$callingUserId:I

    iput p7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$groupId:I

    iput-object p8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput p9, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$flags:I

    iput-boolean p10, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$restricted:Z

    iput-object p11, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$bundle:Landroid/os/Bundle;

    iput-object p12, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$dialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 1295
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    .line 1296
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1297
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate(): reject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; may preemption "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v2, v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    .line 1298
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1297
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    return-void

    .line 1301
    :cond_61
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintServiceInjector;->initAcquiredInfo()V

    .line 1304
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1700(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "fingerprint_token"

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_78

    const/4 v2, 0x1

    goto :goto_79

    :cond_78
    const/4 v2, 0x0

    :goto_79
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1308
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$2100(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_93

    :cond_8b
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$2200(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;

    move-result-object v0

    .line 1309
    .local v0, "pmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;>;"
    :goto_93
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$2300(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1310
    .local v1, "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    if-nez v1, :cond_c1

    .line 1311
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v3, v3, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    move-object v1, v2

    .line 1312
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v2, v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$2300(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    :cond_c1
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v2, v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # setter for: Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    invoke-static {v2, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1102(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1316
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v3, v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$token:Landroid/os/IBinder;

    iget-wide v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opId:J

    iget v7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$callingUserId:I

    iget v8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$groupId:I

    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget v10, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$flags:I

    iget-boolean v11, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$restricted:Z

    iget-object v12, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opPackageName:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$bundle:Landroid/os/Bundle;

    iget-object v14, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$dialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    invoke-static/range {v3 .. v14}, Lcom/android/server/fingerprint/FingerprintService;->access$2500(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    .line 1318
    return-void
.end method
