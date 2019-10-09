.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;
.super Landroid/app/backup/ISelectBackupTransportCallback$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setMandatoryBackupTransport(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$admin:Landroid/content/ComponentName;

.field final synthetic val$backupTransportComponent:Landroid/content/ComponentName;

.field final synthetic val$callingUid:I

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$success:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;ILandroid/content/ComponentName;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 12002
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$admin:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$callingUid:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$backupTransportComponent:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/app/backup/ISelectBackupTransportCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 12010
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 12011
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "transportName"    # Ljava/lang/String;

    .line 12004
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$admin:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$callingUid:I

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$backupTransportComponent:Landroid/content/ComponentName;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveMandatoryBackupTransport(Landroid/content/ComponentName;ILandroid/content/ComponentName;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;ILandroid/content/ComponentName;)V

    .line 12005
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12006
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 12007
    return-void
.end method
