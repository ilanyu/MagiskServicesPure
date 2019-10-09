.class public final Lcom/android/server/usb/UsbAlsaJackDetector;
.super Ljava/lang/Object;
.source "UsbAlsaJackDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbAlsaJackDetector"


# instance fields
.field private mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

.field private mStopJackDetect:Z


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbAlsaDevice;)V
    .registers 3
    .param p1, "device"    # Lcom/android/server/usb/UsbAlsaDevice;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mStopJackDetect:Z

    .line 35
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 36
    return-void
.end method

.method private static native nativeHasJackDetect(I)Z
.end method

.method private native nativeInputJackConnected(I)Z
.end method

.method private native nativeJackDetect(I)Z
.end method

.method private native nativeOutputJackConnected(I)Z
.end method

.method public static startJackDetect(Lcom/android/server/usb/UsbAlsaDevice;)Lcom/android/server/usb/UsbAlsaJackDetector;
    .registers 4
    .param p0, "device"    # Lcom/android/server/usb/UsbAlsaDevice;

    .line 45
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->getCardNum()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeHasJackDetect(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_c
    new-instance v0, Lcom/android/server/usb/UsbAlsaJackDetector;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbAlsaJackDetector;-><init>(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 52
    .local v0, "jackDetector":Lcom/android/server/usb/UsbAlsaJackDetector;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "USB jack detect thread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 53
    return-object v0
.end method


# virtual methods
.method public isInputJackConnected()Z
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->getCardNum()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeInputJackConnected(I)Z

    move-result v0

    return v0
.end method

.method public isOutputJackConnected()Z
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->getCardNum()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeOutputJackConnected(I)Z

    move-result v0

    return v0
.end method

.method public jackDetectCallback()Z
    .registers 3

    .line 80
    monitor-enter p0

    .line 81
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mStopJackDetect:Z

    if-eqz v0, :cond_8

    .line 82
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 84
    :cond_8
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(Z)V

    .line 85
    monitor-exit p0

    .line 86
    return v1

    .line 85
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public pleaseStop()V
    .registers 2

    .line 70
    monitor-enter p0

    .line 71
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mStopJackDetect:Z

    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 72
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public run()V
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->getCardNum()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeJackDetect(I)Z

    .line 95
    return-void
.end method
