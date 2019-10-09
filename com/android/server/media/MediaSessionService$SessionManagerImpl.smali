.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.super Landroid/media/session/ISessionManager$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc


# instance fields
.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    .line 1005
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    .line 1010
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 1011
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 2088
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 2158
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"    # I

    .line 1005
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Landroid/view/KeyEvent;
    .param p6, "x6"    # Z

    .line 1005
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Landroid/view/KeyEvent;
    .param p6, "x6"    # Z

    .line 1005
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method private dispatchAdjustVolumeLocked(Ljava/lang/String;IIZIII)V
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "suggestedStream"    # I
    .param p6, "direction"    # I
    .param p7, "flags"    # I

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v11, p6

    .line 1819
    move/from16 v12, p7

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$2000(Lcom/android/server/media/MediaSessionService;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    goto :goto_24

    .line 1820
    :cond_16
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    :goto_24
    move-object v13, v2

    .line 1822
    .local v13, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v2, 0x0

    .line 1823
    .local v2, "preferSuggestedStream":Z
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_34

    .line 1824
    invoke-static {v1, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1825
    const/4 v2, 0x1

    .line 1828
    .end local v2    # "preferSuggestedStream":Z
    .local v14, "preferSuggestedStream":Z
    :cond_34
    move v14, v2

    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adjusting "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " by "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". flags="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", suggestedStream="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", preferSuggestedStream="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    if-eqz v13, :cond_81

    if-eqz v14, :cond_70

    goto :goto_81

    .line 1863
    :cond_70
    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object v2, v13

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    move v8, v11

    move v9, v12

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V

    goto :goto_a6

    .line 1833
    :cond_81
    :goto_81
    and-int/lit16 v2, v12, 0x200

    if-eqz v2, :cond_98

    const/4 v2, 0x3

    .line 1834
    invoke-static {v2, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_98

    .line 1835
    sget-boolean v2, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v2, :cond_97

    .line 1836
    const-string v2, "MediaSessionService"

    const-string v3, "No active session to adjust, skipping media only volume event"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    :cond_97
    return-void

    .line 1846
    :cond_98
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;

    invoke-direct {v3, v0, v11, v1, v12}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;III)V

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1866
    :goto_a6
    return-void
.end method

.method private dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z

    move-object v1, p0

    move-object/from16 v10, p5

    .line 1897
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    # invokes: Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$5100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v11

    .line 1898
    .local v11, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v0, -0x1

    if-eqz v11, :cond_7c

    .line 1900
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    if-eqz p6, :cond_35

    .line 1903
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1906
    :cond_35
    nop

    .line 1907
    if-eqz p6, :cond_40

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$5200(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v0

    :goto_3e
    move v8, v0

    goto :goto_41

    :cond_40
    goto :goto_3e

    :goto_41
    iget-object v9, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 1906
    move-object v2, v11

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)V

    .line 1909
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    if-eqz v0, :cond_1c8

    .line 1911
    :try_start_5b
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    new-instance v2, Landroid/media/session/MediaSession$Token;

    .line 1912
    invoke-virtual {v11}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    .line 1911
    invoke-interface {v0, v10, v2}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaSession(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_71} :catch_72

    goto :goto_7a

    .line 1913
    :catch_72
    move-exception v0

    .line 1914
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionService"

    const-string v3, "Failed to send callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1915
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7a
    goto/16 :goto_1c8

    .line 1917
    :cond_7c
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$5300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_94

    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1918
    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$5400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1c8

    .line 1919
    :cond_94
    if-eqz p6, :cond_9b

    .line 1920
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1922
    :cond_9b
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1923
    .local v2, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1924
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1927
    if-eqz p4, :cond_b9

    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_ba

    :cond_b9
    move-object v4, p1

    :goto_ba
    move-object v12, v4

    .line 1928
    .local v12, "callerPackageName":Ljava/lang/String;
    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1930
    :try_start_c0
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$5300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_141

    .line 1931
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$5300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    move-object v13, v4

    .line 1933
    .local v13, "receiver":Landroid/app/PendingIntent;
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to the last known PendingIntent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1937
    if-eqz p6, :cond_104

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$5200(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v0

    nop

    :cond_104
    move v6, v0

    iget-object v8, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1938
    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v9

    .line 1936
    move-object v4, v13

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1939
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    if-eqz v0, :cond_13f

    .line 1940
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 1941
    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$5300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1942
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_13f

    .line 1943
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v4

    .line 1944
    invoke-interface {v4, v10, v0}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V

    .line 1948
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "receiver":Landroid/app/PendingIntent;
    :cond_13f
    goto/16 :goto_1c7

    .line 1949
    :cond_141
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1950
    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$5400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1952
    .local v0, "receiver":Landroid/content/ComponentName;
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to the restored intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1956
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1957
    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    .line 1958
    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverUserId:I
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$5500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v5

    .line 1957
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 1956
    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1959
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v4

    if-eqz v4, :cond_1c7

    .line 1960
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v4

    .line 1961
    invoke-interface {v4, v10, v0}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V
    :try_end_19c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_c0 .. :try_end_19c} :catch_1a6
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_19c} :catch_19d

    .end local v0    # "receiver":Landroid/content/ComponentName;
    goto :goto_1c7

    .line 1968
    :catch_19d
    move-exception v0

    .line 1969
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MediaSessionService"

    const-string v5, "Failed to send callback"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v12    # "callerPackageName":Ljava/lang/String;
    goto :goto_1c8

    .line 1965
    .restart local v2    # "mediaButtonIntent":Landroid/content/Intent;
    .restart local v12    # "callerPackageName":Ljava/lang/String;
    :catch_1a6
    move-exception v0

    .line 1966
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error sending key event to media button receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1967
    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$5300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1966
    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1970
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v2    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v12    # "callerPackageName":Ljava/lang/String;
    :cond_1c7
    :goto_1c7
    nop

    .line 1972
    :cond_1c8
    :goto_1c8
    return-void
.end method

.method private dispatchVolumeKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "stream"    # I
    .param p7, "musicOnly"    # Z

    .line 1439
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 1440
    .local v0, "down":Z
    :goto_b
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_13

    move v1, v2

    nop

    .line 1441
    .local v1, "up":Z
    :cond_13
    const/4 v2, 0x0

    .line 1442
    .local v2, "direction":I
    const/4 v3, 0x0

    .line 1443
    .local v3, "isMute":Z
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0xa4

    if-eq v4, v5, :cond_25

    packed-switch v4, :pswitch_data_68

    goto :goto_26

    .line 1448
    :pswitch_21
    const/4 v2, -0x1

    .line 1449
    goto :goto_26

    .line 1445
    :pswitch_23
    const/4 v2, 0x1

    .line 1446
    goto :goto_26

    .line 1451
    :cond_25
    const/4 v3, 0x1

    .line 1454
    :goto_26
    if-nez v0, :cond_2a

    if-eqz v1, :cond_67

    .line 1455
    :cond_2a
    const/16 v4, 0x1000

    .line 1456
    .local v4, "flags":I
    if-eqz p7, :cond_31

    .line 1458
    or-int/lit16 v4, v4, 0x200

    goto :goto_38

    .line 1461
    :cond_31
    if-eqz v1, :cond_36

    .line 1462
    or-int/lit8 v4, v4, 0x14

    goto :goto_38

    .line 1464
    :cond_36
    or-int/lit8 v4, v4, 0x11

    .line 1467
    :goto_38
    if-eqz v2, :cond_4d

    .line 1469
    if-eqz v1, :cond_3d

    .line 1470
    const/4 v2, 0x0

    .line 1472
    :cond_3d
    move-object v6, p0

    move-object v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p6

    move v12, v2

    move v13, v4

    invoke-direct/range {v6 .. v13}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;IIZIII)V

    goto :goto_67

    .line 1474
    :cond_4d
    if-eqz v3, :cond_67

    .line 1475
    if-eqz v0, :cond_67

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_67

    .line 1476
    const/16 v12, 0x65

    move-object v6, p0

    move-object v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p6

    move v13, v4

    invoke-direct/range {v6 .. v13}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;IIZIII)V

    .line 1481
    .end local v4    # "flags":I
    :cond_67
    :goto_67
    return-void

    :pswitch_data_68
    .packed-switch 0x18
        :pswitch_23
        :pswitch_21
    .end packed-switch
.end method

.method private handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z

    move-object v7, p0

    .line 1870
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    .line 1871
    .local v8, "action":I
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    move v9, v0

    .line 1872
    .local v9, "isLongPress":Z
    if-nez v8, :cond_39

    .line 1873
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_24

    .line 1874
    iput-boolean v2, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 1875
    iput-boolean v1, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 1893
    move-object/from16 v11, p5

    move/from16 v10, p6

    goto :goto_65

    .line 1876
    :cond_24
    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v0, :cond_36

    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v0, :cond_36

    if-eqz v9, :cond_36

    .line 1877
    iput-boolean v2, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 1878
    move/from16 v10, p6

    invoke-direct {v7, v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->startVoiceInput(Z)V

    goto :goto_63

    .line 1893
    :cond_36
    move/from16 v10, p6

    goto :goto_63

    .line 1880
    :cond_39
    move/from16 v10, p6

    if-ne v8, v2, :cond_63

    .line 1881
    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v0, :cond_63

    .line 1882
    iput-boolean v1, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 1883
    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v0, :cond_63

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_63

    .line 1885
    move-object/from16 v11, p5

    invoke-static {v11, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v12

    .line 1886
    .local v12, "downEvent":Landroid/view/KeyEvent;
    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 1888
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .end local v12    # "downEvent":Landroid/view/KeyEvent;
    goto :goto_65

    .line 1893
    :cond_63
    :goto_63
    move-object/from16 v11, p5

    :goto_65
    return-void
.end method

.method private hasMediaControlPermission(ILjava/lang/String;II)Z
    .registers 11
    .param p1, "resolvedUserId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1777
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->isCurrentVolumeController(II)Z
    invoke-static {v0, p3, p4}, Lcom/android/server/media/MediaSessionService;->access$4800(Lcom/android/server/media/MediaSessionService;II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1778
    return v1

    .line 1784
    :cond_a
    const/16 v0, 0x3e8

    if-eq p4, v0, :cond_93

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_93

    .line 1788
    :cond_1e
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_40

    .line 1789
    const-string v0, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") hasn\'t granted MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_40
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1794
    .local v0, "userId":I
    const/4 v2, 0x0

    if-eq p1, v0, :cond_48

    .line 1795
    return v2

    .line 1800
    :cond_48
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1801
    # getter for: Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/INotificationManager;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$4900(Lcom/android/server/media/MediaSessionService;)Landroid/app/INotificationManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/app/INotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v3

    .line 1802
    .local v3, "enabledNotificationListeners":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v3, :cond_70

    .line 1803
    move v4, v2

    .local v4, "i":I
    :goto_55
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_70

    .line 1804
    nop

    .line 1805
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1804
    invoke-static {p2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 1806
    return v1

    .line 1803
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 1810
    .end local v4    # "i":I
    :cond_70
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v1, :cond_92

    .line 1811
    const-string v1, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") doesn\'t have an enabled notification listener"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_92
    return v2

    .line 1787
    .end local v0    # "userId":I
    .end local v3    # "enabledNotificationListeners":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_93
    :goto_93
    return v1
.end method

.method private isUserSetupComplete()Z
    .registers 5

    .line 2022
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v2, 0x1

    nop

    :cond_17
    return v2
.end method

.method private isValidLocalStreamType(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .line 2028
    if-ltz p1, :cond_7

    const/4 v0, 0x5

    if-gt p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isVoiceKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .line 2017
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2018
    # getter for: Lcom/android/server/media/MediaSessionService;->mHasFeatureLeanback:Z
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$5800(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x55

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 2017
    :goto_14
    return v0
.end method

.method private startVoiceInput(Z)V
    .registers 9
    .param p1, "needWakeLock"    # Z

    .line 1975
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionServiceInjector;->startVoiceAssistant(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1976
    const-string v0, "MediaSessionService"

    const-string/jumbo v1, "startVoiceAssistant success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    return-void

    .line 1979
    :cond_15
    const/4 v0, 0x0

    .line 1985
    .local v0, "voiceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1986
    .local v1, "pm":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$5600(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$5600(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_3d

    move v2, v4

    goto :goto_3e

    :cond_3d
    move v2, v3

    .line 1987
    .local v2, "isLocked":Z
    :goto_3e
    if-nez v2, :cond_57

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1988
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 1989
    const-string v3, "MediaSessionService"

    const-string/jumbo v4, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 1991
    :cond_57
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 1992
    const-string v5, "android.speech.extras.EXTRA_SECURE"

    if-eqz v2, :cond_71

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1993
    # getter for: Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$5600(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 1992
    move v3, v4

    goto :goto_72

    .line 1993
    :cond_71
    nop

    .line 1992
    :goto_72
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1994
    const-string v3, "MediaSessionService"

    const-string/jumbo v4, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :goto_7d
    if-eqz p1, :cond_88

    .line 1998
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$5700(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2001
    :cond_88
    nop

    .line 2002
    const/high16 v3, 0x10800000

    :try_start_8b
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2004
    sget-boolean v3, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v3, :cond_a9

    const-string v3, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "voiceIntent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :cond_a9
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_b4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8b .. :try_end_b4} :catch_b7
    .catchall {:try_start_8b .. :try_end_b4} :catchall_b5

    goto :goto_dd

    .line 2010
    :catchall_b5
    move-exception v3

    goto :goto_d1

    .line 2007
    :catch_b7
    move-exception v3

    .line 2008
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    :try_start_b8
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity for search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catchall {:try_start_b8 .. :try_end_ce} :catchall_b5

    .line 2010
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    if-eqz p1, :cond_e8

    goto :goto_df

    :goto_d1
    if-eqz p1, :cond_dc

    .line 2011
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$5700(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_dc
    throw v3

    .line 2010
    :goto_dd
    if-eqz p1, :cond_e8

    .line 2011
    :goto_df
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$5700(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2014
    :cond_e8
    return-void
.end method

.method private verifySessionsRequest(Landroid/content/ComponentName;III)I
    .registers 14
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 1740
    const/4 v0, 0x0

    .line 1741
    .local v0, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_c

    .line 1744
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1745
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V
    invoke-static {v1, v0, p4}, Lcom/android/server/media/MediaSessionService;->access$2400(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1749
    :cond_c
    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v7, "getSessions"

    move v2, p3

    move v3, p4

    move v4, p2

    move-object v8, v0

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1753
    .local v1, "resolvedUserId":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V
    invoke-static {v2, p1, p3, p4, v1}, Lcom/android/server/media/MediaSessionService;->access$4700(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V

    .line 1754
    return v1
.end method

.method private verifySessionsRequest2(ILjava/lang/String;II)I
    .registers 12
    .param p1, "targetUserId"    # I
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .param p3, "callerPid"    # I
    .param p4, "callerUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1761
    const-string v5, "getSessionTokens"

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v0, p3

    move v1, p4

    move v2, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1766
    .local v0, "resolvedUserId":I
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->hasMediaControlPermission(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1770
    return v0

    .line 1768
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Missing permission to control media."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addSessionTokensListener(Landroid/media/ISessionTokensListener;ILjava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/ISessionTokensListener;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1686
    return-void
.end method

.method public addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .registers 21
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1057
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 1058
    .local v9, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1059
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v11, v2

    .line 1062
    .local v11, "token":J
    move-object/from16 v13, p2

    move/from16 v14, p3

    :try_start_13
    invoke-direct {v1, v13, v14, v9, v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v6

    .line 1063
    .local v6, "resolvedUserId":I
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_6d

    .line 1064
    :try_start_1e
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object/from16 v8, p1

    # invokes: Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    invoke-static {v0, v8}, Lcom/android/server/media/MediaSessionService;->access$2700(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    move v7, v0

    .line 1065
    .local v7, "index":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_36

    .line 1066
    const-string v0, "MediaSessionService"

    const-string v2, "ActiveSessionsListener is already added, ignoring"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    monitor-exit v15
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_6a

    .line 1080
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1067
    return-void

    .line 1069
    :cond_36
    :try_start_36
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v2, v0

    move-object v4, v8

    move-object v5, v13

    move/from16 v16, v7

    move v7, v9

    .end local v7    # "index":I
    .local v16, "index":I
    move v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_6a

    move-object v2, v0

    .line 1072
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_45
    invoke-interface/range {p1 .. p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4d} :catch_5d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_6a

    .line 1076
    nop

    .line 1077
    :try_start_4e
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v16    # "index":I
    monitor-exit v15
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_6a

    .line 1080
    .end local v6    # "resolvedUserId":I
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1081
    nop

    .line 1082
    return-void

    .line 1073
    .restart local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .restart local v6    # "resolvedUserId":I
    .restart local v16    # "index":I
    :catch_5d
    move-exception v0

    .line 1074
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5e
    const-string v3, "MediaSessionService"

    const-string v4, "ActiveSessionsListener is dead, ignoring it"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1075
    monitor-exit v15
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_6a

    .line 1080
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1075
    return-void

    .line 1078
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v16    # "index":I
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit v15
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 1080
    .end local v6    # "resolvedUserId":I
    :catchall_6d
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1016
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1017
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1018
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v9, v0

    .line 1020
    .local v9, "token":J
    :try_start_d
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V
    invoke-static {v0, p1, v8}, Lcom/android/server/media/MediaSessionService;->access$2400(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1021
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "createSession"

    move v0, v7

    move v1, v8

    move v2, p4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1023
    .local v3, "resolvedUserId":I
    if-eqz p2, :cond_33

    .line 1026
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move v1, v7

    move v2, v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    # invokes: Lcom/android/server/media/MediaSessionService;->createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    invoke-static/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->access$2500(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;

    move-result-object v0
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_3b

    .line 1029
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1026
    return-object v0

    .line 1024
    :cond_33
    :try_start_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Controller callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3b

    .line 1029
    .end local v3    # "resolvedUserId":I
    :catchall_3b
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public createSession2(Landroid/os/Bundle;)Z
    .registers 3
    .param p1, "sessionToken"    # Landroid/os/Bundle;

    .line 1594
    const/4 v0, 0x0

    return v0
.end method

.method public destroySession2(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "sessionToken"    # Landroid/os/Bundle;

    .line 1636
    return-void
.end method

.method public dispatchAdjustVolume(Ljava/lang/String;III)V
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "suggestedStream"    # I
    .param p3, "delta"    # I
    .param p4, "flags"    # I

    .line 1486
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 1487
    .local v9, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1488
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v11, v0

    .line 1490
    .local v11, "token":J
    move-object v13, p0

    :try_start_e
    iget-object v0, v13, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_2d

    .line 1491
    const/4 v5, 0x0

    move-object v1, v13

    move-object/from16 v2, p1

    move v3, v9

    move v4, v10

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    :try_start_21
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;IIZIII)V

    .line 1493
    monitor-exit v14
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_2a

    .line 1495
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1496
    nop

    .line 1497
    return-void

    .line 1493
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v14
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    .line 1495
    :catchall_2d
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "asSystemService"    # Z
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;
    .param p4, "needWakeLock"    # Z

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    .line 1120
    if-eqz v11, :cond_13f

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_13f

    .line 1125
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1126
    .local v12, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1127
    .local v13, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v14, v0

    .line 1129
    .local v14, "token":J
    :try_start_1f
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_13a

    if-eqz v0, :cond_67

    .line 1130
    :try_start_23
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyEvent, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_60

    move-object/from16 v9, p1

    :try_start_31
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", asSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_5e

    move/from16 v8, p2

    :try_start_4b
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 1176
    :catchall_5e
    move-exception v0

    goto :goto_63

    :catchall_60
    move-exception v0

    move-object/from16 v9, p1

    :goto_63
    move/from16 v8, p2

    goto/16 :goto_13b

    .line 1134
    :cond_67
    move-object/from16 v9, p1

    move/from16 v8, p2

    :goto_6b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 1137
    const-string v0, "MediaSessionService"

    const-string v1, "Not dispatching media key event because user setup is in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_4b .. :try_end_78} :catchall_13a

    .line 1176
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1139
    return-void

    .line 1142
    :cond_7c
    :try_start_7c
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_13a

    .line 1143
    :try_start_83
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2000(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    move/from16 v17, v0

    .line 1144
    .local v17, "isGlobalPriorityActive":Z
    if-eqz v17, :cond_9d

    const/16 v0, 0x3e8

    if-eq v13, v0, :cond_9d

    .line 1147
    const-string v0, "MediaSessionService"

    const-string v1, "Only the system can dispatch media key event to the global priority session."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    monitor-exit v16
    :try_end_99
    .catchall {:try_start_83 .. :try_end_99} :catchall_137

    .line 1176
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1149
    return-void

    .line 1151
    :cond_9d
    if-nez v17, :cond_10a

    .line 1152
    :try_start_9f
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v0

    if-eqz v0, :cond_10a

    .line 1154
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to the media key listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_9f .. :try_end_c6} :catchall_137

    .line 1157
    :try_start_c6
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v0

    new-instance v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;

    const/16 v18, 0x0

    move-object v1, v7

    move-object v2, v10

    move-object v3, v9

    move v4, v12

    move v5, v13

    move v6, v8

    move-object/from16 v19, v7

    move-object v7, v11

    move/from16 v8, p4

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionService$1;)V

    move-object/from16 v1, v19

    invoke-interface {v0, v11, v1}, Landroid/media/session/IOnMediaKeyListener;->onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_e9} :catch_ee
    .catchall {:try_start_c6 .. :try_end_e9} :catchall_137

    .line 1160
    :try_start_e9
    monitor-exit v16
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_137

    .line 1176
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1160
    return-void

    .line 1161
    :catch_ee
    move-exception v0

    .line 1162
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_ef
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to the media key listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10a
    if-nez v17, :cond_124

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {v10, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 1168
    move-object v1, v10

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v5, p2

    move-object v6, v11

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    goto :goto_131

    .line 1171
    :cond_124
    move-object v1, v10

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v5, p2

    move-object v6, v11

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 1174
    .end local v17    # "isGlobalPriorityActive":Z
    :goto_131
    monitor-exit v16
    :try_end_132
    .catchall {:try_start_ef .. :try_end_132} :catchall_137

    .line 1176
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1177
    nop

    .line 1178
    return-void

    .line 1174
    :catchall_137
    move-exception v0

    :try_start_138
    monitor-exit v16
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_137

    :try_start_139
    throw v0
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_13a

    .line 1176
    :catchall_13a
    move-exception v0

    :goto_13b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1121
    .end local v12    # "pid":I
    .end local v13    # "uid":I
    .end local v14    # "token":J
    :cond_13f
    :goto_13f
    const-string v0, "MediaSessionService"

    const-string v1, "Attempted to dispatch null or non-media key event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void
.end method

.method public dispatchVolumeKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "asSystemService"    # Z
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;
    .param p4, "stream"    # I
    .param p5, "musicOnly"    # Z

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    .line 1365
    if-eqz v10, :cond_1b2

    .line 1366
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_20

    .line 1367
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_20

    .line 1368
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_20

    goto/16 :goto_1b2

    .line 1373
    :cond_20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1374
    .local v11, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1375
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1378
    .local v13, "token":J
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchVolumeKeyEvent, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", asSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :try_start_66
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_1ad

    .line 1384
    :try_start_6d
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2000(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-nez v0, :cond_196

    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1385
    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    if-nez v0, :cond_83

    goto/16 :goto_196

    .line 1391
    :cond_83
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0
    :try_end_87
    .catchall {:try_start_6d .. :try_end_87} :catchall_1aa

    const/4 v1, 0x2

    if-nez v0, :cond_127

    .line 1392
    :try_start_8a
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_db

    .line 1394
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 1395
    invoke-static/range {p3 .. p3}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v2

    .line 1394
    # setter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3402(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 1396
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0
    :try_end_a3
    .catchall {:try_start_8a .. :try_end_a3} :catchall_120

    move/from16 v7, p4

    :try_start_a5
    # setter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeStream:I
    invoke-static {v0, v7}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3502(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1397
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0
    :try_end_ae
    .catchall {:try_start_a5 .. :try_end_ae} :catchall_d9

    move/from16 v6, p5

    :try_start_b0
    # setter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownMusicOnly:Z
    invoke-static {v0, v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3602(Lcom/android/server/media/MediaSessionService$FullUserRecord;Z)Z

    .line 1398
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v2, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1399
    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1401
    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v3

    const/4 v4, 0x0

    .line 1399
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1402
    # getter for: Lcom/android/server/media/MediaSessionService;->mLongPressTimeout:I
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$3700(Lcom/android/server/media/MediaSessionService;)I

    move-result v3

    int-to-long v3, v3

    .line 1398
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_df

    .line 1431
    :catchall_d9
    move-exception v0

    goto :goto_123

    .line 1404
    :cond_db
    move/from16 v7, p4

    move/from16 v6, p5

    :goto_df
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_eb

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 1405
    :cond_eb
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeMessages(I)V

    .line 1406
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_119

    .line 1407
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v1, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1408
    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 1407
    # invokes: Lcom/android/server/media/MediaSessionService;->dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V
    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService;->access$3800(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    .line 1410
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    const/4 v1, 0x0

    # setter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3402(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 1412
    :cond_119
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V
    invoke-static {v0, v10}, Lcom/android/server/media/MediaSessionService;->access$3800(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    goto/16 :goto_1a4

    .line 1431
    :catchall_120
    move-exception v0

    move/from16 v7, p4

    :goto_123
    move/from16 v6, p5

    goto/16 :goto_1ab

    .line 1415
    :cond_127
    move/from16 v7, p4

    move/from16 v6, p5

    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeMessages(I)V

    .line 1416
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_190

    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1417
    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1418
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_190

    .line 1420
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1421
    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1422
    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeStream:I
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v17

    iget-object v1, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1423
    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownMusicOnly:Z
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Z

    move-result v18

    .line 1420
    move-object v1, v9

    move-object v2, v15

    move v3, v11

    move v4, v12

    move v5, v8

    move-object v6, v0

    move/from16 v7, v17

    move/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 1424
    move-object v1, v9

    move-object v2, v15

    move v3, v11

    move v4, v12

    move/from16 v5, p2

    move-object v6, v10

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    goto :goto_1a4

    .line 1427
    :cond_190
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V
    invoke-static {v0, v10}, Lcom/android/server/media/MediaSessionService;->access$3800(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    goto :goto_1a4

    .line 1386
    :cond_196
    :goto_196
    move-object v1, v9

    move-object v2, v15

    move v3, v11

    move v4, v12

    move/from16 v5, p2

    move-object v6, v10

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 1431
    :cond_1a4
    :goto_1a4
    monitor-exit v16
    :try_end_1a5
    .catchall {:try_start_b0 .. :try_end_1a5} :catchall_1aa

    .line 1433
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1434
    nop

    .line 1435
    return-void

    .line 1431
    :catchall_1aa
    move-exception v0

    :goto_1ab
    :try_start_1ab
    monitor-exit v16
    :try_end_1ac
    .catchall {:try_start_1ab .. :try_end_1ac} :catchall_1aa

    :try_start_1ac
    throw v0
    :try_end_1ad
    .catchall {:try_start_1ac .. :try_end_1ad} :catchall_1ad

    .line 1433
    :catchall_1ad
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1369
    .end local v11    # "pid":I
    .end local v12    # "uid":I
    .end local v13    # "token":J
    :cond_1b2
    :goto_1b2
    move-object/from16 v15, p1

    const-string v0, "MediaSessionService"

    const-string v1, "Attempted to dispatch null or non-volume key event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1521
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1523
    :cond_f
    const-string v0, "MEDIA SESSION SERVICE (dumpsys media_session)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1526
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1527
    :try_start_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessions listeners."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global priority session is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1529
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 1530
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, p2, v2}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1532
    :cond_69
    const-string v1, "User Records:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1533
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$4100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1534
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_79
    if-ge v2, v1, :cond_8f

    .line 1535
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$4100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    const-string v4, ""

    invoke-virtual {v3, p2, v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1534
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 1537
    .end local v2    # "i":I
    :cond_8f
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->dump(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1538
    .end local v1    # "count":I
    monitor-exit v0

    .line 1539
    return-void

    .line 1538
    :catchall_a2
    move-exception v1

    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_1e .. :try_end_a4} :catchall_a2

    throw v1
.end method

.method public getSessionTokens(ZZLjava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "activeSessionOnly"    # Z
    .param p2, "sessionServiceOnly"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1655
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 14
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 1035
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1036
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1037
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1040
    .local v2, "token":J
    :try_start_c
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 1041
    .local v4, "resolvedUserId":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    .local v5, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_47

    .line 1043
    :try_start_1c
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;
    invoke-static {v7, v4}, Lcom/android/server/media/MediaSessionService;->access$2600(Lcom/android/server/media/MediaSessionService;I)Ljava/util/List;

    move-result-object v7

    .line 1044
    .local v7, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/media/MediaSessionRecord;

    .line 1045
    .local v9, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v10

    invoke-interface {v10}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    .end local v9    # "record":Lcom/android/server/media/MediaSessionRecord;
    goto :goto_26

    .line 1047
    .end local v7    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    :cond_3e
    monitor-exit v6
    :try_end_3f
    .catchall {:try_start_1c .. :try_end_3f} :catchall_44

    .line 1048
    nop

    .line 1050
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1048
    return-object v5

    .line 1047
    :catchall_44
    move-exception v7

    :try_start_45
    monitor-exit v6
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v7
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    .line 1050
    .end local v4    # "resolvedUserId":I
    .end local v5    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :catchall_47
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isGlobalPriorityActive()Z
    .registers 3

    .line 1514
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1515
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$2000(Lcom/android/server/media/MediaSessionService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1516
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isTrusted(Ljava/lang/String;II)Z
    .registers 13
    .param p1, "controllerPackageName"    # Ljava/lang/String;
    .param p2, "controllerPid"    # I
    .param p3, "controllerUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1552
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1553
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1555
    .local v1, "token":J
    :try_start_8
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_77

    .line 1558
    .local v3, "controllerUserId":I
    const/4 v4, 0x0

    :try_start_d
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1559
    invoke-virtual {v5, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1b} :catch_52
    .catchall {:try_start_d .. :try_end_1b} :catchall_77

    .line 1565
    .local v5, "controllerUidFromPackageName":I
    nop

    .line 1564
    nop

    .line 1566
    if-eq v5, p3, :cond_46

    .line 1567
    :try_start_1f
    sget-boolean v6, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v6, :cond_41

    .line 1568
    const-string v6, "MediaSessionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " doesn\'t match with the uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_1f .. :try_end_41} :catchall_77

    .line 1571
    :cond_41
    nop

    .line 1576
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1571
    return v4

    .line 1573
    :cond_46
    :try_start_46
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v4, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->hasMediaControlPermission(ILjava/lang/String;II)Z

    move-result v4
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_77

    .line 1576
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1573
    return v4

    .line 1560
    .end local v5    # "controllerUidFromPackageName":I
    :catch_52
    move-exception v5

    .line 1561
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_53
    sget-boolean v6, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v6, :cond_72

    .line 1562
    const-string v6, "MediaSessionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " doesn\'t exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_53 .. :try_end_72} :catchall_77

    .line 1564
    :cond_72
    nop

    .line 1576
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1564
    return v4

    .line 1576
    .end local v3    # "controllerUserId":I
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_77
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removeSessionTokensListener(Landroid/media/ISessionTokensListener;Ljava/lang/String;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/ISessionTokensListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1712
    return-void
.end method

.method public removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1088
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->access$2700(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v1

    .line 1089
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    .line 1090
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2c

    .line 1092
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1c
    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$900(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_29
    .catchall {:try_start_1c .. :try_end_28} :catchall_2c

    .line 1095
    goto :goto_2a

    .line 1093
    :catch_29
    move-exception v3

    .line 1097
    .end local v1    # "index":I
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    .line 1098
    return-void

    .line 1097
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public setCallback(Landroid/media/session/ICallback;)V
    .registers 12
    .param p1, "callback"    # Landroid/media/session/ICallback;

    .line 1182
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1183
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1184
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1186
    .local v2, "token":J
    const/16 v4, 0x3ea

    :try_start_e
    invoke-static {v1, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 1190
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_b1

    .line 1191
    :try_start_1b
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1192
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v6, v5}, Lcom/android/server/media/MediaSessionService;->access$3000(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1193
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_8b

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v5, :cond_2e

    goto :goto_8b

    .line 1198
    :cond_2e
    # setter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3102(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;

    .line 1199
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The callback "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is set by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1200
    # invokes: Lcom/android/server/media/MediaSessionService;->getCallingPackageName(I)Ljava/lang/String;
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1199
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v7

    if-nez v7, :cond_64

    .line 1202
    monitor-exit v4
    :try_end_60
    .catchall {:try_start_1b .. :try_end_60} :catchall_a6

    .line 1221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1202
    return-void

    .line 1205
    :cond_64
    :try_start_64
    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/session/ICallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    invoke-direct {v8, p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1214
    # invokes: Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_78} :catch_79
    .catchall {:try_start_64 .. :try_end_78} :catchall_a6

    .line 1218
    goto :goto_85

    .line 1215
    :catch_79
    move-exception v7

    .line 1216
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_7a
    const-string v8, "MediaSessionService"

    const-string v9, "Failed to set callback"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    const/4 v8, 0x0

    # setter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;
    invoke-static {v6, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3102(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;

    .line 1219
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_85
    monitor-exit v4
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_a6

    .line 1221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1222
    nop

    .line 1223
    return-void

    .line 1194
    .restart local v5    # "userId":I
    .restart local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_8b
    :goto_8b
    :try_start_8b
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can set the callback, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    monitor-exit v4
    :try_end_a2
    .catchall {:try_start_8b .. :try_end_a2} :catchall_a6

    .line 1221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1196
    return-void

    .line 1219
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_a6
    move-exception v5

    :try_start_a7
    monitor-exit v4
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw v5

    .line 1187
    :cond_a9
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Only Bluetooth service processes can set Callback"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_b1

    .line 1221
    :catchall_b1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    .registers 13
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyListener;

    .line 1287
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1288
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1289
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1292
    .local v2, "token":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_MEDIA_KEY_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_f1

    .line 1299
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_f9

    .line 1300
    :try_start_21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1301
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v6, v5}, Lcom/android/server/media/MediaSessionService;->access$3000(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1302
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_d3

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v5, :cond_35

    goto/16 :goto_d3

    .line 1307
    :cond_35
    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7

    if-eqz v7, :cond_68

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v1, :cond_68

    .line 1308
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The media key listener cannot be reset by another app. , mOnMediaKeyListenerUid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1308
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_21 .. :try_end_64} :catchall_ee

    .line 1338
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1311
    return-void

    .line 1314
    :cond_68
    :try_start_68
    # setter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2802(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;

    .line 1315
    # setter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I
    invoke-static {v6, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3302(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1317
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The media key listener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is set by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1318
    # invokes: Lcom/android/server/media/MediaSessionService;->getCallingPackageName(I)Ljava/lang/String;
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1317
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7
    :try_end_9a
    .catchall {:try_start_68 .. :try_end_9a} :catchall_ee

    if-eqz v7, :cond_cd

    .line 1322
    :try_start_9c
    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/session/IOnMediaKeyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;

    invoke-direct {v8, p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_ad} :catch_ae
    .catchall {:try_start_9c .. :try_end_ad} :catchall_ee

    .line 1334
    goto :goto_cd

    .line 1331
    :catch_ae
    move-exception v7

    .line 1332
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_af
    const-string v8, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set death recipient "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const/4 v8, 0x0

    # setter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;
    invoke-static {v6, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2802(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;

    .line 1336
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_cd
    :goto_cd
    monitor-exit v4
    :try_end_ce
    .catchall {:try_start_af .. :try_end_ce} :catchall_ee

    .line 1338
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    nop

    .line 1340
    return-void

    .line 1303
    .restart local v5    # "userId":I
    .restart local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_d3
    :goto_d3
    :try_start_d3
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can set the media key listener, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    monitor-exit v4
    :try_end_ea
    .catchall {:try_start_d3 .. :try_end_ea} :catchall_ee

    .line 1338
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1305
    return-void

    .line 1336
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_ee
    move-exception v5

    :try_start_ef
    monitor-exit v4
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_ee

    :try_start_f0
    throw v5

    .line 1295
    :cond_f1
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Must hold the SET_MEDIA_KEY_LISTENER permission."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_f9
    .catchall {:try_start_f0 .. :try_end_f9} :catchall_f9

    .line 1338
    :catchall_f9
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    .registers 13
    .param p1, "listener"    # Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1227
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1228
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1229
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1232
    .local v2, "token":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_VOLUME_KEY_LONG_PRESS_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_ed

    .line 1239
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_f5

    .line 1240
    :try_start_21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1241
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    invoke-static {v6, v5}, Lcom/android/server/media/MediaSessionService;->access$3000(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1242
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_cf

    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v5, :cond_35

    goto/16 :goto_cf

    .line 1247
    :cond_35
    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7

    if-eqz v7, :cond_68

    .line 1248
    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v1, :cond_68

    .line 1249
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The volume key long-press listener cannot be reset by another app , mOnVolumeKeyLongPressListener="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1249
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_21 .. :try_end_64} :catchall_ea

    .line 1281
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1253
    return-void

    .line 1256
    :cond_68
    :try_start_68
    # setter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1102(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1257
    # setter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I
    invoke-static {v6, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3202(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1259
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The volume key long-press listener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is set by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1260
    # invokes: Lcom/android/server/media/MediaSessionService;->getCallingPackageName(I)Ljava/lang/String;
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1259
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7
    :try_end_96
    .catchall {:try_start_68 .. :try_end_96} :catchall_ea

    if-eqz v7, :cond_c9

    .line 1264
    :try_start_98
    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/session/IOnVolumeKeyLongPressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;

    invoke-direct {v8, p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a9} :catch_aa
    .catchall {:try_start_98 .. :try_end_a9} :catchall_ea

    .line 1277
    goto :goto_c9

    .line 1273
    :catch_aa
    move-exception v7

    .line 1274
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_ab
    const-string v8, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set death recipient "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    # getter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1274
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const/4 v8, 0x0

    # setter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;
    invoke-static {v6, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1102(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1279
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_c9
    :goto_c9
    monitor-exit v4
    :try_end_ca
    .catchall {:try_start_ab .. :try_end_ca} :catchall_ea

    .line 1281
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1282
    nop

    .line 1283
    return-void

    .line 1243
    .restart local v5    # "userId":I
    .restart local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_cf
    :goto_cf
    :try_start_cf
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can set the volume key long-press listener, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    monitor-exit v4
    :try_end_e6
    .catchall {:try_start_cf .. :try_end_e6} :catchall_ea

    .line 1281
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1245
    return-void

    .line 1279
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_ea
    move-exception v5

    :try_start_eb
    monitor-exit v4
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    :try_start_ec
    throw v5

    .line 1235
    :cond_ed
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Must hold the SET_VOLUME_KEY_LONG_PRESS_LISTENER permission."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_f5
    .catchall {:try_start_ec .. :try_end_f5} :catchall_f5

    .line 1281
    :catchall_f5
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .registers 8
    .param p1, "rvc"    # Landroid/media/IRemoteVolumeController;

    .line 1501
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1502
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1503
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1505
    .local v2, "token":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string/jumbo v5, "listen for volume changes"

    # invokes: Lcom/android/server/media/MediaSessionService;->enforceSystemUiPermission(Ljava/lang/String;II)V
    invoke-static {v4, v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->access$3900(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 1506
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # setter for: Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;
    invoke-static {v4, p1}, Lcom/android/server/media/MediaSessionService;->access$4002(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1e

    .line 1508
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1509
    nop

    .line 1510
    return-void

    .line 1508
    :catchall_1e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
