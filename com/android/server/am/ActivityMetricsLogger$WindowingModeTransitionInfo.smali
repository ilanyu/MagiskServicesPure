.class final Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowingModeTransitionInfo"
.end annotation


# instance fields
.field private bindApplicationDelayMs:I

.field private currentTransitionProcessRunning:Z

.field private launchedActivity:Lcom/android/server/am/ActivityRecord;

.field private loggedStartingWindowDrawn:Z

.field private loggedWindowsDrawn:Z

.field private reason:I

.field private startResult:I

.field private startingWindowDelayMs:I

.field final synthetic this$0:Lcom/android/server/am/ActivityMetricsLogger;

.field private windowsDrawnDelayMs:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->this$0:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startingWindowDelayMs:I

    .line 128
    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->bindApplicationDelayMs:I

    .line 129
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->reason:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/ActivityMetricsLogger;
    .param p2, "x1"    # Lcom/android/server/am/ActivityMetricsLogger$1;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;-><init>(Lcom/android/server/am/ActivityMetricsLogger;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 122
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 122
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startResult:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p1, "x1"    # I

    .line 122
    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startResult:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p1, "x1"    # Lcom/android/server/am/ActivityRecord;

    .line 122
    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 122
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->loggedWindowsDrawn:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->loggedWindowsDrawn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 122
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->loggedStartingWindowDrawn:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->loggedStartingWindowDrawn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 122
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->reason:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p1, "x1"    # I

    .line 122
    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->reason:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 122
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startingWindowDelayMs:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p1, "x1"    # I

    .line 122
    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startingWindowDelayMs:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 122
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->bindApplicationDelayMs:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p1, "x1"    # I

    .line 122
    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->bindApplicationDelayMs:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 122
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->windowsDrawnDelayMs:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p1, "x1"    # I

    .line 122
    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->windowsDrawnDelayMs:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 122
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->currentTransitionProcessRunning:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->currentTransitionProcessRunning:Z

    return p1
.end method
