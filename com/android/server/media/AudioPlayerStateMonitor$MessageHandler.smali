.class final Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;
.super Landroid/os/Handler;
.source "AudioPlayerStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/AudioPlayerStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_AUDIO_PLAYER_ACTIVE_STATE_CHANGED:I = 0x1


# instance fields
.field private final mListener:Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "listener"    # Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;

    .line 70
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    iput-object p2, p0, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;->mListener:Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;

    .line 72
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_15

    .line 78
    :cond_6
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;->mListener:Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-interface {v0, v2, v1}, Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;->onAudioPlayerActiveStateChanged(Landroid/media/AudioPlaybackConfiguration;Z)V

    .line 82
    :goto_15
    return-void
.end method

.method sendAudioPlayerActiveStateChangedMessage(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 5
    .param p1, "config"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "isRemoved"    # Z

    .line 86
    nop

    .line 87
    const/4 v0, 0x0

    .line 86
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 88
    return-void
.end method
