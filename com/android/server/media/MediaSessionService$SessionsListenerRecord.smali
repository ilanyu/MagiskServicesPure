.class final Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SessionsListenerRecord"
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mListener:Landroid/media/session/IActiveSessionsListener;

.field private final mPid:I

.field private final mUid:I

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;
    .param p2, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "pid"    # I
    .param p6, "uid"    # I

    .line 970
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 971
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;

    .line 972
    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mComponentName:Landroid/content/ComponentName;

    .line 973
    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUserId:I

    .line 974
    iput p5, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mPid:I

    .line 975
    iput p6, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUid:I

    .line 976
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 961
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 961
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mPid:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 961
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUid:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 961
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUserId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 961
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 980
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 981
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 982
    monitor-exit v0

    .line 983
    return-void

    .line 982
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method
