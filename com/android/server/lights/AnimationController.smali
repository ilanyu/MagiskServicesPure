.class public Lcom/android/server/lights/AnimationController;
.super Ljava/lang/Object;
.source "AnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/AnimationController$H;
    }
.end annotation


# static fields
.field public static final ANIMATION_TYPE_START_MESSAGE:I = 0x1

.field public static final ANIMATION_TYPE_START_MUSIC:I = 0x2

.field public static final ANIMATION_TYPE_STOP_MESSAGE:I = 0x3

.field public static final ANIMATION_TYPE_STOP_MUSIC:I = 0x4

.field public static final TYPE_MESSAGE:I = 0x1

.field public static final TYPE_MUSIC:I = 0x2


# instance fields
.field private mAddedMessageAnimationView:Z

.field private mAddedMusicAnimationView:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMessageView:Lcom/android/server/lights/view/MessageView;

.field private mMusicView:Lcom/android/server/lights/view/MusicView;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/lights/AnimationController;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/android/server/lights/AnimationController$H;

    invoke-direct {v0, p0, p2}, Lcom/android/server/lights/AnimationController$H;-><init>(Lcom/android/server/lights/AnimationController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/lights/AnimationController;->mHandler:Landroid/os/Handler;

    .line 38
    iget-object v0, p0, Lcom/android/server/lights/AnimationController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/lights/AnimationController;->mWindowManager:Landroid/view/WindowManager;

    .line 39
    new-instance v0, Lcom/android/server/lights/view/MessageView;

    iget-object v1, p0, Lcom/android/server/lights/AnimationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/lights/view/MessageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/lights/AnimationController;->mMessageView:Lcom/android/server/lights/view/MessageView;

    .line 40
    new-instance v0, Lcom/android/server/lights/view/MusicView;

    iget-object v1, p0, Lcom/android/server/lights/AnimationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/lights/view/MusicView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/lights/AnimationController;->mMusicView:Lcom/android/server/lights/view/MusicView;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/AnimationController;->mAddedMessageAnimationView:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/server/lights/AnimationController;->mAddedMusicAnimationView:Z

    .line 44
    iget-object v0, p0, Lcom/android/server/lights/AnimationController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/lights/AnimationController;->mPowerManager:Landroid/os/PowerManager;

    .line 45
    iget-object v0, p0, Lcom/android/server/lights/AnimationController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "u2-animation"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/AnimationController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/AnimationController;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/AnimationController;

    .line 14
    iget-object v0, p0, Lcom/android/server/lights/AnimationController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/lights/AnimationController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/AnimationController;

    .line 14
    iget-boolean v0, p0, Lcom/android/server/lights/AnimationController;->mAddedMessageAnimationView:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/lights/AnimationController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/AnimationController;
    .param p1, "x1"    # Z

    .line 14
    iput-boolean p1, p0, Lcom/android/server/lights/AnimationController;->mAddedMessageAnimationView:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/lights/AnimationController;)Lcom/android/server/lights/view/MessageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/AnimationController;

    .line 14
    iget-object v0, p0, Lcom/android/server/lights/AnimationController;->mMessageView:Lcom/android/server/lights/view/MessageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/lights/AnimationController;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/AnimationController;

    .line 14
    iget-object v0, p0, Lcom/android/server/lights/AnimationController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/lights/AnimationController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/AnimationController;

    .line 14
    iget-boolean v0, p0, Lcom/android/server/lights/AnimationController;->mAddedMusicAnimationView:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/lights/AnimationController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/AnimationController;
    .param p1, "x1"    # Z

    .line 14
    iput-boolean p1, p0, Lcom/android/server/lights/AnimationController;->mAddedMusicAnimationView:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/lights/AnimationController;)Lcom/android/server/lights/view/MusicView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/AnimationController;

    .line 14
    iget-object v0, p0, Lcom/android/server/lights/AnimationController;->mMusicView:Lcom/android/server/lights/view/MusicView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/lights/AnimationController;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/AnimationController;

    .line 14
    invoke-direct {p0}, Lcom/android/server/lights/AnimationController;->getWindowParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private getWindowParam()Landroid/view/WindowManager$LayoutParams;
    .registers 8

    .line 129
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x80c

    const/16 v4, 0x4428

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 138
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "U2-Animation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 140
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 141
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 142
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 143
    const/16 v1, 0x800

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 144
    const/16 v1, 0x8ca

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 145
    return-object v0
.end method


# virtual methods
.method public isAnimationRunning(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 57
    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/android/server/lights/AnimationController;->mMusicView:Lcom/android/server/lights/view/MusicView;

    if-eqz v0, :cond_e

    .line 58
    iget-object v0, p0, Lcom/android/server/lights/AnimationController;->mMusicView:Lcom/android/server/lights/view/MusicView;

    invoke-virtual {v0}, Lcom/android/server/lights/view/MusicView;->isAnimationRunning()Z

    move-result v0

    return v0

    .line 62
    :cond_e
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/lights/AnimationController;->mMessageView:Lcom/android/server/lights/view/MessageView;

    if-eqz v0, :cond_1c

    .line 63
    iget-object v0, p0, Lcom/android/server/lights/AnimationController;->mMessageView:Lcom/android/server/lights/view/MessageView;

    invoke-virtual {v0}, Lcom/android/server/lights/view/MessageView;->isAnimationRunning()Z

    move-result v0

    return v0

    .line 65
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public startAnimation(I)V
    .registers 3
    .param p1, "type"    # I

    .line 49
    iget-object v0, p0, Lcom/android/server/lights/AnimationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 50
    return-void
.end method

.method public stopAnimation(I)V
    .registers 3
    .param p1, "type"    # I

    .line 53
    iget-object v0, p0, Lcom/android/server/lights/AnimationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    return-void
.end method
