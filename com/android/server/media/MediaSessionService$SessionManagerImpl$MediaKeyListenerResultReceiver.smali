.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;
.super Landroid/os/ResultReceiver;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaKeyListenerResultReceiver"
.end annotation


# instance fields
.field private final mAsSystemService:Z

.field private mHandled:Z

.field private final mKeyEvent:Landroid/view/KeyEvent;

.field private final mNeedWakeLock:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mPid:I

.field private final mUid:I

.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 10
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "asSystemService"    # Z
    .param p6, "keyEvent"    # Landroid/view/KeyEvent;
    .param p7, "needWakeLock"    # Z

    .line 2042
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 2043
    iget-object v0, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2044
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2045
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPackageName:Ljava/lang/String;

    .line 2046
    iput p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPid:I

    .line 2047
    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mUid:I

    .line 2048
    iput-boolean p5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mAsSystemService:Z

    .line 2049
    iput-object p6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mKeyEvent:Landroid/view/KeyEvent;

    .line 2050
    iput-boolean p7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mNeedWakeLock:Z

    .line 2051
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionService$1;)V
    .registers 9
    .param p1, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Z
    .param p6, "x5"    # Landroid/view/KeyEvent;
    .param p7, "x6"    # Z
    .param p8, "x7"    # Lcom/android/server/media/MediaSessionService$1;

    .line 2032
    invoke-direct/range {p0 .. p7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method private dispatchMediaKeyEvent()V
    .registers 10

    .line 2070
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mHandled:Z

    if-eqz v0, :cond_5

    .line 2071
    return-void

    .line 2073
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mHandled:Z

    .line 2074
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2075
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2076
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$2000(Lcom/android/server/media/MediaSessionService;)Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mKeyEvent:Landroid/view/KeyEvent;

    .line 2077
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    # invokes: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z
    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$5900(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2078
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPid:I

    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mUid:I

    iget-boolean v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mAsSystemService:Z

    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mKeyEvent:Landroid/view/KeyEvent;

    iget-boolean v8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mNeedWakeLock:Z

    # invokes: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$6000(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    goto :goto_57

    .line 2081
    :cond_46
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPid:I

    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mUid:I

    iget-boolean v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mAsSystemService:Z

    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mKeyEvent:Landroid/view/KeyEvent;

    iget-boolean v8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mNeedWakeLock:Z

    # invokes: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$6100(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 2084
    :goto_57
    monitor-exit v0

    .line 2085
    return-void

    .line 2084
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_1c .. :try_end_5b} :catchall_59

    throw v1
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 2061
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 2062
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mHandled:Z

    .line 2063
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2064
    return-void

    .line 2066
    :cond_11
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->dispatchMediaKeyEvent()V

    .line 2067
    return-void
.end method

.method public run()V
    .registers 4

    .line 2055
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The media key listener is timed-out for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->dispatchMediaKeyEvent()V

    .line 2057
    return-void
.end method
