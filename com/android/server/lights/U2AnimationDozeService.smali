.class public Lcom/android/server/lights/U2AnimationDozeService;
.super Landroid/service/dreams/DreamService;
.source "U2AnimationDozeService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "U2AnimationDozeService"


# instance fields
.field private mAcquire:Z

.field private mAddView:Z

.field private mDreamStart:Z

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mDreamStart:Z

    .line 59
    new-instance v0, Lcom/android/server/lights/U2AnimationDozeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/lights/U2AnimationDozeService$2;-><init>(Lcom/android/server/lights/U2AnimationDozeService;)V

    iput-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/U2AnimationDozeService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/U2AnimationDozeService;

    .line 15
    invoke-direct {p0}, Lcom/android/server/lights/U2AnimationDozeService;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/lights/U2AnimationDozeService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/U2AnimationDozeService;

    .line 15
    iget-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/lights/U2AnimationDozeService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/U2AnimationDozeService;
    .param p1, "x1"    # Z

    .line 15
    iput-boolean p1, p0, Lcom/android/server/lights/U2AnimationDozeService;->mAcquire:Z

    return p1
.end method

.method private addWindow()V
    .registers 10

    .line 80
    const/4 v6, -0x1

    .line 81
    .local v6, "h":I
    const/4 v7, -0x1

    .line 82
    .local v7, "w":I
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7ea

    const v4, 0x10538

    const/4 v5, -0x1

    move-object v0, v8

    move v1, v7

    move v2, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 94
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 95
    iget-object v2, p0, Lcom/android/server/lights/U2AnimationDozeService;->mView:Landroid/view/View;

    const/16 v3, 0x1304

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 99
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 100
    iget-boolean v2, p0, Lcom/android/server/lights/U2AnimationDozeService;->mAddView:Z

    if-nez v2, :cond_29

    .line 101
    iget-object v2, p0, Lcom/android/server/lights/U2AnimationDozeService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/lights/U2AnimationDozeService;->mView:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iput-boolean v1, p0, Lcom/android/server/lights/U2AnimationDozeService;->mAddView:Z

    .line 105
    :cond_29
    return-void
.end method

.method private start()V
    .registers 5

    .line 67
    invoke-super {p0}, Landroid/service/dreams/DreamService;->startDozing()V

    .line 68
    iget-boolean v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mAcquire:Z

    if-eqz v0, :cond_13

    .line 69
    iget-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/lights/U2AnimationDozeService$3;

    invoke-direct {v1, p0}, Lcom/android/server/lights/U2AnimationDozeService$3;-><init>(Lcom/android/server/lights/U2AnimationDozeService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    :cond_13
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 5

    .line 32
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mHandler:Landroid/os/Handler;

    .line 34
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/server/lights/U2AnimationDozeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mPowerManager:Landroid/os/PowerManager;

    .line 35
    iget-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "U2AnimationDozeService"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 36
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/server/lights/U2AnimationDozeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mWindowManager:Landroid/view/WindowManager;

    .line 37
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mView:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 39
    invoke-direct {p0}, Lcom/android/server/lights/U2AnimationDozeService;->addWindow()V

    .line 40
    iget-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/lights/U2AnimationDozeService$1;

    invoke-direct {v1, p0}, Lcom/android/server/lights/U2AnimationDozeService$1;-><init>(Lcom/android/server/lights/U2AnimationDozeService;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 130
    iget-boolean v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mAddView:Z

    if-eqz v0, :cond_e

    .line 131
    iget-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/lights/U2AnimationDozeService;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mAddView:Z

    .line 134
    :cond_e
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDestroy()V

    .line 135
    return-void
.end method

.method public onDreamingStarted()V
    .registers 2

    .line 109
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mDreamStart:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/server/lights/U2AnimationDozeService;->startDozing()V

    .line 112
    return-void
.end method

.method public onDreamingStopped()V
    .registers 2

    .line 123
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mDreamStart:Z

    .line 125
    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .registers 3
    .param p1, "brightness"    # I

    .line 116
    iget-boolean v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mDreamStart:Z

    if-eqz v0, :cond_7

    .line 117
    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->setDozeScreenBrightness(I)V

    .line 119
    :cond_7
    return-void
.end method

.method public startDozing()V
    .registers 5

    .line 50
    iget-boolean v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mAcquire:Z

    if-nez v0, :cond_c

    .line 51
    iget-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mAcquire:Z

    .line 55
    :cond_c
    iget-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/lights/U2AnimationDozeService;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    iget-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/lights/U2AnimationDozeService;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    return-void
.end method
