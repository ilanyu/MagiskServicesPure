.class Lcom/android/server/audio/RotationHelper;
.super Ljava/lang/Object;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RotationHelper$AudioDisplayListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioService.RotationHelper"

.field private static sContext:Landroid/content/Context;

.field private static sDeviceRotation:I

.field private static sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

.field private static sHandler:Landroid/os/Handler;

.field private static final sRotationLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static disable()V
    .registers 2

    .line 73
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    .line 74
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 75
    return-void
.end method

.method static enable()V
    .registers 3

    .line 67
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 69
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 70
    return-void
.end method

.method static init(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 57
    if-eqz p0, :cond_11

    .line 60
    sput-object p0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    .line 61
    sput-object p1, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    invoke-direct {v0}, Lcom/android/server/audio/RotationHelper$AudioDisplayListener;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    .line 63
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 64
    return-void

    .line 58
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static publishRotation(I)V
    .registers 4
    .param p0, "rotation"    # I

    .line 94
    const-string v0, "AudioService.RotationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "publishing device rotation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (x90deg)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    packed-switch p0, :pswitch_data_46

    .line 109
    const-string v0, "AudioService.RotationHelper"

    const-string v1, "Unknown device rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 106
    :pswitch_27
    const-string/jumbo v0, "rotation=270"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 107
    goto :goto_43

    .line 103
    :pswitch_2e
    const-string/jumbo v0, "rotation=180"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 104
    goto :goto_43

    .line 100
    :pswitch_35
    const-string/jumbo v0, "rotation=90"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 101
    goto :goto_43

    .line 97
    :pswitch_3c
    const-string/jumbo v0, "rotation=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 98
    nop

    .line 111
    :goto_43
    return-void

    nop

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_35
        :pswitch_2e
        :pswitch_27
    .end packed-switch
.end method

.method static updateOrientation()V
    .registers 3

    .line 83
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 84
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 85
    .local v0, "newRotation":I
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_16
    sget v2, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    if-eq v0, v2, :cond_21

    .line 87
    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    .line 88
    sget v2, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    invoke-static {v2}, Lcom/android/server/audio/RotationHelper;->publishRotation(I)V

    .line 90
    :cond_21
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_23

    throw v2
.end method
