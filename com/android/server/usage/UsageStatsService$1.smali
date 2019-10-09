.class Lcom/android/server/usage/UsageStatsService$1;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    .line 134
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "bucket"    # I
    .param p5, "reason"    # I

    .line 138
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 139
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    const/16 v1, 0xb

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 140
    shl-int/lit8 v1, p4, 0x10

    const v2, 0xffff

    and-int/2addr v2, p5

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 141
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 144
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 145
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .registers 2
    .param p1, "isParoleOn"    # Z

    .line 150
    return-void
.end method
