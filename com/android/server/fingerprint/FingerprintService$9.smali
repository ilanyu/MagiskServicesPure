.class Lcom/android/server/fingerprint/FingerprintService$9;
.super Lcom/android/server/fingerprint/EnumerateClient;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->startEnumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V
    .registers 23
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "halDeviceId"    # J
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "groupId"    # I
    .param p8, "userId"    # I
    .param p9, "restricted"    # Z
    .param p10, "owner"    # Ljava/lang/String;

    .line 767
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Lcom/android/server/fingerprint/FingerprintService$9;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move-object v0, v10

    move-object v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/EnumerateClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 2

    .line 775
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$9;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    return-object v0
.end method

.method public notifyUserActivity()V
    .registers 2

    .line 770
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$9;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$600(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 771
    return-void
.end method
