.class final Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowingModeTransitionInfoSnapshot"
.end annotation


# instance fields
.field private final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final bindApplicationDelayMs:I

.field private final launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

.field private final launchedActivityLaunchToken:Ljava/lang/String;

.field private final launchedActivityLaunchedFromPackage:Ljava/lang/String;

.field private final launchedActivityName:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final processName:Ljava/lang/String;

.field private final processRecord:Lcom/android/server/am/ProcessRecord;

.field private final reason:I

.field private final startingWindowDelayMs:I

.field final synthetic this$0:Lcom/android/server/am/ActivityMetricsLogger;

.field private final type:I

.field private final windowsDrawnDelayMs:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 4
    .param p2, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 149
    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->this$0:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 151
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 152
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 153
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    .line 154
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    .line 155
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_3b

    .line 156
    const/4 v0, 0x0

    goto :goto_43

    .line 157
    :cond_3b
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->requiredAbi:Ljava/lang/String;

    :goto_43
    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    .line 158
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->reason:I
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->reason:I

    .line 159
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startingWindowDelayMs:I
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$300(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->startingWindowDelayMs:I

    .line 160
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->bindApplicationDelayMs:I
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    .line 161
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->windowsDrawnDelayMs:I
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 162
    # invokes: Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    invoke-static {p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->access$600(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    .line 163
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    # invokes: Lcom/android/server/am/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;
    invoke-static {p1, v0}, Lcom/android/server/am/ActivityMetricsLogger;->access$700(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processRecord:Lcom/android/server/am/ProcessRecord;

    .line 164
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processName:Ljava/lang/String;

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityMetricsLogger$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/am/ActivityMetricsLogger;
    .param p2, "x1"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p3, "x2"    # Lcom/android/server/am/ActivityMetricsLogger$1;

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 134
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 134
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 134
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 134
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 134
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 134
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 134
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->reason:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 134
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->startingWindowDelayMs:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 134
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 134
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 134
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/am/ProcessRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 134
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processRecord:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 134
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processName:Ljava/lang/String;

    return-object v0
.end method
