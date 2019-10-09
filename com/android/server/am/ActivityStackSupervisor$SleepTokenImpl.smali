.class final Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;
.super Landroid/app/ActivityManagerInternal$SleepToken;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SleepTokenImpl"
.end annotation


# instance fields
.field private final mAcquireTime:J

.field private final mDisplayId:I

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;I)V
    .registers 6
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 5237
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Landroid/app/ActivityManagerInternal$SleepToken;-><init>()V

    .line 5238
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->mTag:Ljava/lang/String;

    .line 5239
    iput p3, p0, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->mDisplayId:I

    .line 5240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->mAcquireTime:J

    .line 5241
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;

    .line 5232
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->mDisplayId:I

    return v0
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 5245
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5246
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTokenLocked(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V
    invoke-static {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V

    .line 5247
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5248
    return-void

    .line 5247
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 5252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", acquire at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->mAcquireTime:J

    .line 5253
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5252
    return-object v0
.end method
