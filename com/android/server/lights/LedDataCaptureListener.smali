.class public Lcom/android/server/lights/LedDataCaptureListener;
.super Ljava/lang/Object;
.source "LedDataCaptureListener.java"

# interfaces
.implements Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LedDataCaptureListener$SystemStatusReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationController:Lcom/android/server/lights/AnimationController;

.field private mContext:Landroid/content/Context;

.field private mIsHasShowWhenUnlock:Z

.field private mIsScreenOn:Z

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mReceiver:Lcom/android/server/lights/LedDataCaptureListener$SystemStatusReceiver;

.field private mSetDozeFlagMethod:Ljava/lang/reflect/Method;

.field private mSummonSandmanMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/android/server/lights/LedDataCaptureListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/lights/LedDataCaptureListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LedDataCaptureListener;->mIsScreenOn:Z

    .line 25
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/lights/LedDataCaptureListener;->mIsHasShowWhenUnlock:Z

    .line 31
    iput-object p1, p0, Lcom/android/server/lights/LedDataCaptureListener;->mContext:Landroid/content/Context;

    .line 32
    new-instance v2, Lcom/android/server/lights/AnimationController;

    iget-object v3, p0, Lcom/android/server/lights/LedDataCaptureListener;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lcom/android/server/lights/AnimationController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/lights/LedDataCaptureListener;->mAnimationController:Lcom/android/server/lights/AnimationController;

    .line 33
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/lights/LedDataCaptureListener;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 35
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/lights/LedDataCaptureListener;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "summonSandman"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/lights/LedDataCaptureListener;->mSummonSandmanMethod:Ljava/lang/reflect/Method;

    .line 36
    iget-object v2, p0, Lcom/android/server/lights/LedDataCaptureListener;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setDozeFlag"

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/LedDataCaptureListener;->mSetDozeFlagMethod:Ljava/lang/reflect/Method;
    :try_end_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_44} :catch_45

    .line 39
    goto :goto_49

    .line 37
    :catch_45
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 40
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_49
    new-instance v0, Lcom/android/server/lights/LedDataCaptureListener$SystemStatusReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/lights/LedDataCaptureListener$SystemStatusReceiver;-><init>(Lcom/android/server/lights/LedDataCaptureListener;Lcom/android/server/lights/LedDataCaptureListener$1;)V

    iput-object v0, p0, Lcom/android/server/lights/LedDataCaptureListener;->mReceiver:Lcom/android/server/lights/LedDataCaptureListener$SystemStatusReceiver;

    .line 41
    invoke-direct {p0}, Lcom/android/server/lights/LedDataCaptureListener;->registerReceiver()V

    .line 42
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 19
    sget-object v0, Lcom/android/server/lights/LedDataCaptureListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/lights/LedDataCaptureListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LedDataCaptureListener;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lcom/android/server/lights/LedDataCaptureListener;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/lights/LedDataCaptureListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LedDataCaptureListener;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lcom/android/server/lights/LedDataCaptureListener;->mIsHasShowWhenUnlock:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/lights/LedDataCaptureListener;)Lcom/android/server/lights/AnimationController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LedDataCaptureListener;

    .line 19
    iget-object v0, p0, Lcom/android/server/lights/LedDataCaptureListener;->mAnimationController:Lcom/android/server/lights/AnimationController;

    return-object v0
.end method

.method private registerReceiver()V
    .registers 4

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/android/server/lights/LedDataCaptureListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/lights/LedDataCaptureListener;->mReceiver:Lcom/android/server/lights/LedDataCaptureListener$SystemStatusReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method private startDoze()V
    .registers 6

    .line 79
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/lights/LedDataCaptureListener;->mSummonSandmanMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_e

    .line 80
    iget-object v1, p0, Lcom/android/server/lights/LedDataCaptureListener;->mSummonSandmanMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/server/lights/LedDataCaptureListener;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_e
    iget-object v1, p0, Lcom/android/server/lights/LedDataCaptureListener;->mSetDozeFlagMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2c

    .line 83
    iget-object v1, p0, Lcom/android/server/lights/LedDataCaptureListener;->mSetDozeFlagMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/server/lights/LedDataCaptureListener;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_22} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_22} :catch_23

    goto :goto_2c

    .line 87
    :catch_23
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_2d

    .line 85
    :catch_28
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 89
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_2c
    :goto_2c
    nop

    .line 90
    :goto_2d
    iget-object v1, p0, Lcom/android/server/lights/LedDataCaptureListener;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V

    .line 91
    return-void
.end method


# virtual methods
.method public onFrequencyCapture(Landroid/content/Context;I[F)V
    .registers 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "magnitude_max"    # I
    .param p3, "frequencies"    # [F

    .line 61
    iget-object v0, p0, Lcom/android/server/lights/LedDataCaptureListener;->mAnimationController:Lcom/android/server/lights/AnimationController;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/server/lights/LedDataCaptureListener;->mAnimationController:Lcom/android/server/lights/AnimationController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/lights/AnimationController;->isAnimationRunning(I)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lcom/android/server/lights/LedDataCaptureListener;->mIsScreenOn:Z

    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lcom/android/server/lights/LedDataCaptureListener;->mIsHasShowWhenUnlock:Z

    if-nez v0, :cond_4d

    const-string v0, "draco"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 63
    sget-object v0, Lcom/android/server/lights/LedDataCaptureListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "magnitude:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " frequencies:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LedDataCaptureListener;->mIsHasShowWhenUnlock:Z

    .line 65
    invoke-direct {p0}, Lcom/android/server/lights/LedDataCaptureListener;->startDoze()V

    .line 66
    iget-object v0, p0, Lcom/android/server/lights/LedDataCaptureListener;->mAnimationController:Lcom/android/server/lights/AnimationController;

    invoke-virtual {v0, v1}, Lcom/android/server/lights/AnimationController;->startAnimation(I)V

    .line 68
    :cond_4d
    return-void
.end method

.method public onSetLightCallback(Landroid/content/Context;IIIIII)V
    .registers 11
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "lightId"    # I
    .param p3, "color"    # I
    .param p4, "mode"    # I
    .param p5, "onMS"    # I
    .param p6, "offMS"    # I
    .param p7, "brightnessMode"    # I

    .line 47
    iget-object v0, p0, Lcom/android/server/lights/LedDataCaptureListener;->mAnimationController:Lcom/android/server/lights/AnimationController;

    if-eqz v0, :cond_63

    const/4 v0, 0x4

    if-ne p2, v0, :cond_63

    if-eqz p3, :cond_63

    iget-boolean v0, p0, Lcom/android/server/lights/LedDataCaptureListener;->mIsScreenOn:Z

    if-nez v0, :cond_63

    const-string v0, "draco"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 50
    sget-object v0, Lcom/android/server/lights/LedDataCaptureListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lightId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " color: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " onMS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " offMS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " brightnessMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0}, Lcom/android/server/lights/LedDataCaptureListener;->startDoze()V

    .line 53
    iget-object v0, p0, Lcom/android/server/lights/LedDataCaptureListener;->mAnimationController:Lcom/android/server/lights/AnimationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/AnimationController;->startAnimation(I)V

    .line 56
    :cond_63
    return-void
.end method
