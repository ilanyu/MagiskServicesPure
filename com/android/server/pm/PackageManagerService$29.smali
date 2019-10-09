.class Lcom/android/server/pm/PackageManagerService$29;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$measurePath:Ljava/io/File;

.field final synthetic val$moveId:I

.field final synthetic val$sizeBytes:J

.field final synthetic val$startFreeBytes:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 23702
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$29;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$29;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput-wide p3, p0, Lcom/android/server/pm/PackageManagerService$29;->val$startFreeBytes:J

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$29;->val$measurePath:Ljava/io/File;

    iput-wide p6, p0, Lcom/android/server/pm/PackageManagerService$29;->val$sizeBytes:J

    iput p8, p0, Lcom/android/server/pm/PackageManagerService$29;->val$moveId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 23707
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$29;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_f

    if-eqz v0, :cond_e

    .line 23708
    nop

    .line 23718
    return-void

    .line 23711
    :cond_e
    goto :goto_10

    .line 23710
    :catch_f
    move-exception v0

    .line 23713
    :goto_10
    iget-wide v0, p0, Lcom/android/server/pm/PackageManagerService$29;->val$startFreeBytes:J

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$29;->val$measurePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 23714
    .local v0, "deltaFreeBytes":J
    const/16 v2, 0xa

    const-wide/16 v3, 0x50

    mul-long/2addr v3, v0

    iget-wide v5, p0, Lcom/android/server/pm/PackageManagerService$29;->val$sizeBytes:J

    div-long v7, v3, v5

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x50

    invoke-static/range {v7 .. v12}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 23716
    .local v2, "progress":I
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$29;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$5900(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$29;->val$moveId:I

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v3, v4, v2}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6000(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 23717
    .end local v0    # "deltaFreeBytes":J
    .end local v2    # "progress":I
    goto :goto_0
.end method
