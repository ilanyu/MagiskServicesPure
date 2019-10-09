.class Lcom/android/server/power/ShutdownThreadInjector$1;
.super Ljava/lang/Object;
.source "ShutdownThreadInjector.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThreadInjector;->playShutdownMusicImpl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$actionDoneSync:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/android/server/power/ShutdownThreadInjector$1;->val$actionDoneSync:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 162
    iget-object v0, p0, Lcom/android/server/power/ShutdownThreadInjector$1;->val$actionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    const/4 v1, 0x0

    :try_start_4
    # setter for: Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z
    invoke-static {v1}, Lcom/android/server/power/ShutdownThreadInjector;->access$002(Z)Z

    .line 164
    iget-object v1, p0, Lcom/android/server/power/ShutdownThreadInjector$1;->val$actionDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v1
.end method
