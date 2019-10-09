.class public Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AudioFocusDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 442
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    .line 444
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 447
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 448
    :try_start_5
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$100(Lcom/android/server/audio/MediaFocusControl;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 449
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->removeFocusEntryForExtPolicy(Landroid/os/IBinder;)V
    invoke-static {v1, v2}, Lcom/android/server/audio/MediaFocusControl;->access$200(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    goto :goto_1c

    .line 451
    :cond_15
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V
    invoke-static {v1, v2}, Lcom/android/server/audio/MediaFocusControl;->access$300(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    .line 453
    :goto_1c
    monitor-exit v0

    .line 454
    return-void

    .line 453
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1
.end method
