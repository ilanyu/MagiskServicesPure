.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->setCallback(Landroid/media/session/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field final synthetic val$user:Lcom/android/server/media/MediaSessionService$FullUserRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 1206
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->val$user:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1209
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1210
    :try_start_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->val$user:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;
    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3102(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;

    .line 1211
    monitor-exit v0

    .line 1212
    return-void

    .line 1211
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1
.end method
