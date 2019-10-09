.class final Lcom/android/server/notification/ZenModeHelper$Metrics;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Metrics"
.end annotation


# static fields
.field private static final COUNTER_PREFIX:Ljava/lang/String; = "dnd_mode_"

.field private static final MINIMUM_LOG_PERIOD_MS:J = 0xea60L


# instance fields
.field private mBeginningMs:J

.field private mPreviousZenMode:I

.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 4

    .line 1271
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    .line 1275
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    .line 1276
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mBeginningMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "x1"    # Lcom/android/server/notification/ZenModeHelper$1;

    .line 1271
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/notification/ZenModeHelper$Metrics;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper$Metrics;

    .line 1271
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    return-void
.end method

.method private emit()V
    .registers 8

    .line 1284
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$900(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;

    move-result-object v0

    # invokes: Lcom/android/server/notification/ZenModeHelper$H;->postMetricsTimer()V
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->access$200(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 1285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1286
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mBeginningMs:J

    sub-long v2, v0, v2

    .line 1287
    .local v2, "since":J
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v4, v5, :cond_20

    const-wide/32 v4, 0xea60

    cmp-long v4, v2, v4

    if-lez v4, :cond_4a

    .line 1288
    :cond_20
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_42

    .line 1289
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dnd_mode_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    long-to-int v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1291
    :cond_42
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iput v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    .line 1292
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mBeginningMs:J

    .line 1294
    :cond_4a
    return-void
.end method


# virtual methods
.method onZenModeChanged()V
    .registers 1

    .line 1280
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    .line 1281
    return-void
.end method
