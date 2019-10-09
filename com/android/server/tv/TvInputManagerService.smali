.class public final Lcom/android/server/tv/TvInputManagerService;
.super Lcom/android/server/SystemService;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;,
        Lcom/android/server/tv/TvInputManagerService$HardwareListener;,
        Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;,
        Lcom/android/server/tv/TvInputManagerService$SessionCallback;,
        Lcom/android/server/tv/TvInputManagerService$ServiceCallback;,
        Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;,
        Lcom/android/server/tv/TvInputManagerService$SessionState;,
        Lcom/android/server/tv/TvInputManagerService$TvInputState;,
        Lcom/android/server/tv/TvInputManagerService$ServiceState;,
        Lcom/android/server/tv/TvInputManagerService$ClientState;,
        Lcom/android/server/tv/TvInputManagerService$UserState;,
        Lcom/android/server/tv/TvInputManagerService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DVB_DIRECTORY:Ljava/lang/String; = "/dev/dvb"

.field private static final TAG:Ljava/lang/String; = "TvInputManagerService"

.field private static final sAdapterDirPattern:Ljava/util/regex/Pattern;

.field private static final sFrontEndDevicePattern:Ljava/util/regex/Pattern;

.field private static final sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mLock:Ljava/lang/Object;

.field private final mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tv/TvInputManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 110
    const-string v0, "^dvb([0-9]+)\\.frontend([0-9]+)$"

    .line 111
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    .line 112
    const-string v0, "^adapter([0-9]+)$"

    .line 113
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 114
    const-string v0, "^frontend([0-9]+)$"

    .line 115
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 134
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 135
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 136
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;-><init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    .line 137
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager;

    new-instance v1, Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$1;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/tv/TvInputHardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 139
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_3b
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 141
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_42

    throw v1
.end method

.method private abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 16
    .param p1, "serviceState"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 612
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 613
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v1, "sessionsToAbort":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 615
    .local v3, "sessionToken":Landroid/os/IBinder;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 616
    .local v4, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    if-nez v5, :cond_3c

    if-eqz p2, :cond_39

    .line 617
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 618
    :cond_39
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    .end local v3    # "sessionToken":Landroid/os/IBinder;
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3c
    goto :goto_11

    .line 621
    :cond_3d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 622
    .local v3, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 623
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v7

    .line 624
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v11

    .line 623
    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 625
    .end local v3    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    goto :goto_41

    .line 626
    :cond_6b
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3700(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 627
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 102
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/tv/TvInputManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 102
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 102
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "x2"    # Landroid/media/tv/TvInputInfo;

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/media/tv/ITvInputClient;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/IBinder;
    .param p4, "x4"    # Landroid/view/InputChannel;
    .param p5, "x5"    # I

    .line 102
    invoke-direct/range {p0 .. p5}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/media/tv/ITvInputService;
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 102
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 102
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    return-object v0
.end method

.method static synthetic access$5700()Ljava/util/regex/Pattern;
    .registers 1

    .line 102
    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$5800()Ljava/util/regex/Pattern;
    .registers 1

    .line 102
    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$5900()Ljava/util/regex/Pattern;
    .registers 1

    .line 102
    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;

    .line 102
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$6500(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 102
    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/media/tv/ITvInputManagerCallback;

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->removeUser(I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setStateLocked(Ljava/lang/String;II)V

    return-void
.end method

.method private buildTvContentRatingSystemListLocked(I)V
    .registers 13
    .param p1, "userId"    # I

    .line 351
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 352
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1500(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 354
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 355
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v2, "intent":Landroid/content/Intent;
    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 358
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 359
    .local v5, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 360
    .local v6, "metaData":Landroid/os/Bundle;
    if-nez v6, :cond_35

    .line 361
    goto :goto_22

    .line 364
    :cond_35
    const-string v7, "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 365
    .local v7, "xmlResId":I
    if-nez v7, :cond_60

    .line 366
    const-string v8, "TvInputManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing meta-data \'android.media.tv.metadata.CONTENT_RATING_SYSTEMS\' on receiver "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    goto :goto_22

    .line 371
    :cond_60
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1500(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 372
    invoke-static {v7, v9}, Landroid/media/tv/TvContentRatingSystemInfo;->createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;

    move-result-object v9

    .line 371
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "receiver":Landroid/content/pm/ActivityInfo;
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v7    # "xmlResId":I
    goto :goto_22

    .line 375
    :cond_6e
    return-void
.end method

.method private buildTvInputListLocked(I[Ljava/lang/String;)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "updatedPackages"    # [Ljava/lang/String;

    .line 264
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 265
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 268
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 269
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.tv.TvInputService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 273
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v3, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_d0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 275
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 276
    .local v7, "si":Landroid/content/pm/ServiceInfo;
    const-string v8, "android.permission.BIND_TV_INPUT"

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_63

    .line 277
    const-string v6, "TvInputManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping TV input "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": it does not require the permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "android.permission.BIND_TV_INPUT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    goto :goto_27

    .line 282
    :cond_63
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .local v8, "component":Landroid/content/ComponentName;
    invoke-static {v1, v8}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_9b

    .line 284
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 285
    .local v9, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v9, :cond_8f

    .line 288
    new-instance v10, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    invoke-direct {v10, p0, v8, p1, v6}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V

    move-object v6, v10

    .line 289
    .end local v9    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .local v6, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-direct {p0, v8, p1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    goto :goto_9a

    .line 292
    .end local v6    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .restart local v9    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_8f
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    .end local v9    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :goto_9a
    goto :goto_aa

    .line 296
    :cond_9b
    :try_start_9b
    new-instance v6, Landroid/media/tv/TvInputInfo$Builder;

    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9, v5}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v6}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    move-result-object v6

    .line 297
    .local v6, "info":Landroid/media/tv/TvInputInfo;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a9} :catch_b5

    .line 301
    .end local v6    # "info":Landroid/media/tv/TvInputInfo;
    nop

    .line 303
    :goto_aa
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v6

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "component":Landroid/content/ComponentName;
    goto/16 :goto_27

    .line 298
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "component":Landroid/content/ComponentName;
    :catch_b5
    move-exception v6

    .line 299
    .local v6, "e":Ljava/lang/Exception;
    const-string v9, "TvInputManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to load TV input "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    goto/16 :goto_27

    .line 306
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "component":Landroid/content/ComponentName;
    :cond_d0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 307
    .local v4, "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_106

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/tv/TvInputInfo;

    .line 311
    .local v7, "info":Landroid/media/tv/TvInputInfo;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 312
    .local v8, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v8, :cond_fb

    .line 313
    new-instance v9, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-direct {v9, v6}, Lcom/android/server/tv/TvInputManagerService$TvInputState;-><init>(Lcom/android/server/tv/TvInputManagerService$1;)V

    move-object v8, v9

    .line 315
    :cond_fb
    # setter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v8, v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1402(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputInfo;

    .line 316
    invoke-virtual {v7}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .end local v7    # "info":Landroid/media/tv/TvInputInfo;
    .end local v8    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    goto :goto_d9

    .line 319
    :cond_106
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_153

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 320
    .local v6, "inputId":Ljava/lang/String;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_128

    .line 321
    invoke-direct {p0, v0, v6}, Lcom/android/server/tv/TvInputManagerService;->notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    goto :goto_152

    .line 322
    :cond_128
    if-eqz p2, :cond_152

    .line 324
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 325
    .local v7, "component":Landroid/content/ComponentName;
    array-length v8, p2

    const/4 v9, 0x0

    :goto_13a
    if-ge v9, v8, :cond_152

    aget-object v10, p2, v9

    .line 326
    .local v10, "updatedPackage":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14f

    .line 327
    invoke-direct {p0, v7, p1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 328
    invoke-direct {p0, v0, v6}, Lcom/android/server/tv/TvInputManagerService;->notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    .line 329
    goto :goto_152

    .line 325
    .end local v10    # "updatedPackage":Ljava/lang/String;
    :cond_14f
    add-int/lit8 v9, v9, 0x1

    goto :goto_13a

    .line 333
    .end local v6    # "inputId":Ljava/lang/String;
    .end local v7    # "component":Landroid/content/ComponentName;
    :cond_152
    :goto_152
    goto :goto_10e

    .line 335
    :cond_153
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_196

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 336
    .restart local v6    # "inputId":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_195

    .line 337
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v7

    .line 338
    .local v7, "info":Landroid/media/tv/TvInputInfo;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 339
    .local v8, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v8, :cond_192

    .line 340
    invoke-direct {p0, v8, v6, p1}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    .line 342
    :cond_192
    invoke-direct {p0, v0, v6}, Lcom/android/server/tv/TvInputManagerService;->notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    .line 344
    .end local v6    # "inputId":Ljava/lang/String;
    .end local v7    # "info":Landroid/media/tv/TvInputInfo;
    .end local v8    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_195
    goto :goto_15f

    .line 346
    :cond_196
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 347
    # setter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v0, v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1202(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/util/Map;)Ljava/util/Map;

    .line 348
    return-void
.end method

.method private clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 8
    .param p1, "state"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 425
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 427
    :try_start_6
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 430
    goto :goto_1a

    .line 428
    :catch_12
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onSessionReleased"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 434
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 435
    .local v2, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v3

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_65

    .line 436
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v3

    const/16 v4, 0x3e8

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)V

    .line 438
    :try_start_51
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v3

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5c} :catch_5d

    .line 441
    goto :goto_65

    .line 439
    :catch_5d
    move-exception v3

    .line 440
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "TvInputManagerService"

    const-string v5, "error in onSessionReleased"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    .end local v2    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_65
    :goto_65
    goto :goto_2e

    .line 444
    :cond_66
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v1

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 445
    return-void
.end method

.method private createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    .registers 20
    .param p1, "service"    # Landroid/media/tv/ITvInputService;
    .param p2, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 631
    move/from16 v10, p3

    invoke-direct {v7, v10}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v11

    .line 632
    .local v11, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 636
    .local v12, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v13

    .line 639
    .local v13, "channels":[Landroid/view/InputChannel;
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;

    invoke-direct {v0, v7, v12, v13}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V

    move-object v14, v0

    .line 643
    .local v14, "callback":Landroid/media/tv/ITvInputSessionCallback;
    const/4 v15, 0x1

    :try_start_26
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 644
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v14, v0}, Landroid/media/tv/ITvInputService;->createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V

    goto :goto_3d

    .line 646
    :cond_34
    aget-object v0, v13, v15

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v14, v1}, Landroid/media/tv/ITvInputService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_3d} :catch_3e

    .line 653
    :goto_3d
    goto :goto_5b

    .line 648
    :catch_3e
    move-exception v0

    .line 649
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputManagerService"

    const-string v2, "error in createSession"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    invoke-direct {v7, v9, v10}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 651
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v2

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 652
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v6

    .line 651
    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 654
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5b
    aget-object v0, v13, v15

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 655
    return-void
.end method

.method private getContentResolverForUser(I)Landroid/content/ContentResolver;
    .registers 7
    .param p1, "userId"    # I

    .line 493
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 496
    .local v0, "user":Landroid/os/UserHandle;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_e} :catch_f

    .line 500
    .local v1, "context":Landroid/content/Context;
    goto :goto_28

    .line 497
    .end local v1    # "context":Landroid/content/Context;
    :catch_f
    move-exception v1

    .line 498
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "TvInputManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create package context as user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 501
    .local v1, "context":Landroid/content/Context;
    :goto_28
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    return-object v2
.end method

.method private getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 6
    .param p1, "userId"    # I

    .line 505
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 506
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v0, :cond_18

    .line 507
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Landroid/content/Context;ILcom/android/server/tv/TvInputManagerService$1;)V

    move-object v0, v1

    .line 508
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 510
    :cond_18
    return-object v0
.end method

.method private getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 514
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 515
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 516
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v1, :cond_11

    .line 520
    return-object v1

    .line 517
    :cond_11
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service state not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .registers 5
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 538
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    return-object v0
.end method

.method private getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 6
    .param p1, "sessionState"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 542
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    .line 543
    .local v0, "session":Landroid/media/tv/ITvInputSession;
    if-eqz v0, :cond_7

    .line 547
    return-object v0

    .line 544
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session not yet created for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 9
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 524
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 525
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 526
    .local v1, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    if-eqz v1, :cond_3b

    .line 530
    const/16 v2, 0x3e8

    if-eq p2, v2, :cond_3a

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    if-ne p2, v2, :cond_1b

    goto :goto_3a

    .line 531
    :cond_1b
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal access to the session with token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 534
    :cond_3a
    :goto_3a
    return-object v1

    .line 527
    :cond_3b
    new-instance v2, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session state not found for token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 259
    const-string v0, "android.permission.TV_INPUT_HARDWARE"

    .line 260
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 8
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 748
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ITvInputManagerCallback;

    .line 750
    .local v1, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_14
    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputAdded(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 753
    goto :goto_20

    .line 751
    :catch_18
    move-exception v2

    .line 752
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string v4, "failed to report added input to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 754
    .end local v1    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_20
    goto :goto_8

    .line 755
    :cond_21
    return-void
.end method

.method private notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 8
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 761
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ITvInputManagerCallback;

    .line 763
    .local v1, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_14
    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputRemoved(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 766
    goto :goto_20

    .line 764
    :catch_18
    move-exception v2

    .line 765
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string v4, "failed to report removed input to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    .end local v1    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_20
    goto :goto_8

    .line 768
    :cond_21
    return-void
.end method

.method private notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .registers 10
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "targetCallback"    # Landroid/media/tv/ITvInputManagerCallback;

    .line 789
    if-nez p4, :cond_23

    .line 790
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ITvInputManagerCallback;

    .line 792
    .local v1, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_16
    invoke-interface {v1, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 795
    goto :goto_22

    .line 793
    :catch_1a
    move-exception v2

    .line 794
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string v4, "failed to report state change to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    .end local v1    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_22
    goto :goto_a

    .line 799
    :cond_23
    :try_start_23
    invoke-interface {p4, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27

    .line 802
    goto :goto_2f

    .line 800
    :catch_27
    move-exception v0

    .line 801
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputManagerService"

    const-string v2, "failed to report state change to callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    :goto_2f
    return-void
.end method

.method private notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 8
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 774
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ITvInputManagerCallback;

    .line 776
    .local v1, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_14
    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputUpdated(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 779
    goto :goto_20

    .line 777
    :catch_18
    move-exception v2

    .line 778
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string v4, "failed to report updated input to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    .end local v1    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_20
    goto :goto_8

    .line 781
    :cond_21
    return-void
.end method

.method private registerBroadcastReceivers()V
    .registers 9

    .line 175
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputManagerService$1;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    .line 240
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 242
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/tv/TvInputManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/tv/TvInputManagerService$2;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 256
    return-void
.end method

.method private releaseSessionLocked(Landroid/os/IBinder;II)V
    .registers 9
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 667
    const/4 v0, 0x0

    move-object v1, v0

    .line 669
    .local v1, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v2

    move-object v1, v2

    .line 670
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 671
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    .line 672
    .local v2, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v3

    if-ne p1, v3, :cond_1b

    .line 673
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    .line 675
    :cond_1b
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_22} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_2 .. :try_end_22} :catch_2a
    .catchall {:try_start_2 .. :try_end_22} :catchall_28

    .line 680
    .end local v2    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_22
    if-eqz v1, :cond_35

    .line 681
    :goto_24
    # setter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1, v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1702(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    goto :goto_35

    .line 680
    :catchall_28
    move-exception v2

    goto :goto_39

    .line 677
    :catch_2a
    move-exception v2

    .line 678
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string v3, "TvInputManagerService"

    const-string v4, "error in releaseSession"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_28

    .line 680
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_35

    goto :goto_24

    .line 684
    :cond_35
    :goto_35
    invoke-direct {p0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 685
    return-void

    .line 680
    :goto_39
    if-eqz v1, :cond_3e

    .line 681
    # setter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v1, v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1702(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    :cond_3e
    throw v2
.end method

.method private removeSessionStateLocked(Landroid/os/IBinder;I)V
    .registers 10
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 688
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 689
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v1

    if-ne p1, v1, :cond_e

    .line 693
    const/4 v1, 0x0

    # setter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3002(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 697
    :cond_e
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 699
    .local v1, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    if-nez v1, :cond_1b

    .line 700
    return-void

    .line 705
    :cond_1b
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 706
    .local v2, "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    if-eqz v2, :cond_4b

    .line 707
    # getter for: Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$3800(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 708
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputManagerService$ClientState;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 709
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_4b
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 714
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v3, :cond_62

    .line 715
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 717
    :cond_62
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 720
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v4

    .line 721
    .local v4, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 723
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 724
    return-void
.end method

.method private removeUser(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 448
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 450
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v1, :cond_f

    .line 451
    monitor-exit v0

    return-void

    .line 454
    :cond_f
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 455
    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_bc

    if-eqz v4, :cond_3d

    .line 457
    :try_start_2d
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_35
    .catchall {:try_start_2d .. :try_end_34} :catchall_bc

    .line 460
    goto :goto_3d

    .line 458
    :catch_35
    move-exception v4

    .line 459
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_36
    const-string v5, "TvInputManagerService"

    const-string v6, "error in release"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3d
    :goto_3d
    goto :goto_1b

    .line 463
    :cond_3e
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 466
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 467
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    if-eqz v4, :cond_86

    .line 468
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v4
    :try_end_67
    .catchall {:try_start_36 .. :try_end_67} :catchall_bc

    if-eqz v4, :cond_7d

    .line 470
    :try_start_69
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_74} :catch_75
    .catchall {:try_start_69 .. :try_end_74} :catchall_bc

    .line 473
    goto :goto_7d

    .line 471
    :catch_75
    move-exception v4

    .line 472
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_76
    const-string v5, "TvInputManagerService"

    const-string v6, "error in unregisterCallback"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_7d
    :goto_7d
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 477
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_86
    goto :goto_51

    .line 478
    :cond_87
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 481
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 482
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 483
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1500(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 484
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 485
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 486
    const/4 v2, 0x0

    # setter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3002(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 488
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 489
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v0

    .line 490
    return-void

    .line 489
    :catchall_bc
    move-exception v1

    monitor-exit v0
    :try_end_be
    .catchall {:try_start_76 .. :try_end_be} :catchall_bc

    throw v1
.end method

.method private resolveCallingUserId(IIILjava/lang/String;)I
    .registers 12
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "requestedUserId"    # I
    .param p4, "methodName"    # Ljava/lang/String;

    .line 552
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 9
    .param p1, "client"    # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Landroid/os/IBinder;
    .param p4, "channel"    # Landroid/view/InputChannel;
    .param p5, "seq"    # I

    .line 660
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/media/tv/ITvInputClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 663
    goto :goto_c

    .line 661
    :catch_4
    move-exception v0

    .line 662
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onSessionCreated"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private setMainLocked(Landroid/os/IBinder;ZII)V
    .registers 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "isMain"    # Z
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 728
    :try_start_0
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v0

    .line 729
    .local v0, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 730
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-direct {p0, v1, v2, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v1

    move-object v0, v1

    .line 733
    :cond_15
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v1

    .line 734
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 735
    return-void

    .line 737
    :cond_24
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v2

    .line 738
    .local v2, "session":Landroid/media/tv/ITvInputSession;
    invoke-interface {v2, p2}, Landroid/media/tv/ITvInputSession;->setMain(Z)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2b} :catch_2c
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 741
    .end local v0    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v2    # "session":Landroid/media/tv/ITvInputSession;
    goto :goto_34

    .line 739
    :catch_2c
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TvInputManagerService"

    const-string v2, "error in setMain"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_34
    return-void
.end method

.method private setStateLocked(Ljava/lang/String;II)V
    .registers 9
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "userId"    # I

    .line 828
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 829
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 830
    .local v1, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 831
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$4000(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v3

    .line 832
    .local v3, "oldState":I
    # setter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I
    invoke-static {v1, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$4002(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)I

    .line 833
    if-eqz v2, :cond_40

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    if-nez v4, :cond_40

    .line 834
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3f

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 836
    :cond_3f
    return-void

    .line 838
    :cond_40
    if-eq v3, p2, :cond_46

    .line 839
    const/4 v4, 0x0

    invoke-direct {p0, v0, p1, p2, v4}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    .line 841
    :cond_46
    return-void
.end method

.method private switchUser(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 378
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_9

    .line 380
    monitor-exit v0

    return-void

    .line 382
    :cond_9
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 383
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v2, "sessionStatesToRelease":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 385
    .local v4, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    if-eqz v5, :cond_3f

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 386
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3f
    goto :goto_24

    .line 389
    :cond_40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_d5

    .line 391
    .restart local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :try_start_50
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_57} :catch_58
    .catchall {:try_start_50 .. :try_end_57} :catchall_d5

    .line 394
    goto :goto_60

    .line 392
    :catch_58
    move-exception v5

    .line 393
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_59
    const-string v6, "TvInputManagerService"

    const-string v7, "error in release"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_60
    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 396
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    goto :goto_44

    .line 398
    :cond_64
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 399
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 400
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 401
    .local v4, "component":Landroid/content/ComponentName;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 402
    .local v5, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v5, :cond_b8

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 403
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v6
    :try_end_96
    .catchall {:try_start_59 .. :try_end_96} :catchall_d5

    if-eqz v6, :cond_ac

    .line 405
    :try_start_98
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v6

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a3} :catch_a4
    .catchall {:try_start_98 .. :try_end_a3} :catchall_d5

    .line 408
    goto :goto_ac

    .line 406
    :catch_a4
    move-exception v6

    .line 407
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_a5
    const-string v7, "TvInputManagerService"

    const-string v8, "error in unregisterCallback"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_ac
    :goto_ac
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Landroid/content/ServiceConnection;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 411
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 413
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_b8
    goto :goto_70

    .line 415
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_b9
    iput p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 416
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 417
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 419
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    const/4 v4, 0x3

    .line 420
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getContentResolverForUser(I)Landroid/content/ContentResolver;

    move-result-object v5

    .line 419
    invoke-virtual {v3, v4, v5}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 420
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 421
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v2    # "sessionStatesToRelease":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    monitor-exit v0

    .line 422
    return-void

    .line 421
    :catchall_d5
    move-exception v1

    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_a5 .. :try_end_d7} :catchall_d5

    throw v1
.end method

.method private updateServiceConnectionLocked(Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 557
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 558
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 559
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v1, :cond_11

    .line 560
    return-void

    .line 562
    :cond_11
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    .line 563
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 565
    return-void

    .line 567
    :cond_23
    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z
    invoke-static {v1, v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3302(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    .line 571
    :cond_26
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v4, 0x1

    if-ne p2, v2, :cond_40

    .line 572
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_3d

    :cond_3c
    goto :goto_3e

    :cond_3d
    :goto_3d
    move v3, v4

    :goto_3e
    move v2, v3

    .local v2, "shouldBind":Z
    goto :goto_49

    .line 578
    .end local v2    # "shouldBind":Z
    :cond_40
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    .line 581
    .restart local v2    # "shouldBind":Z
    :goto_49
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    if-nez v3, :cond_79

    if-eqz v2, :cond_79

    .line 584
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3500(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 587
    return-void

    .line 593
    :cond_58
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.tv.TvInputService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 594
    .local v3, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 595
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v5

    const v6, 0x2000001

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 594
    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z
    invoke-static {v1, v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3502(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    .line 598
    .end local v3    # "i":Landroid/content/Intent;
    goto :goto_91

    :cond_79
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    if-eqz v3, :cond_91

    if-nez v2, :cond_91

    .line 604
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 605
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :cond_91
    :goto_91
    return-void
.end method

.method private updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .registers 10
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 810
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "inputId":Ljava/lang/String;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 812
    .local v1, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v1, :cond_27

    .line 813
    const-string v2, "TvInputManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to set input info - unknown input id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-void

    .line 816
    :cond_27
    # setter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v1, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1402(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputInfo;

    .line 818
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/ITvInputManagerCallback;

    .line 820
    .local v3, "callback":Landroid/media/tv/ITvInputManagerCallback;
    :try_start_3e
    invoke-interface {v3, p2}, Landroid/media/tv/ITvInputManagerCallback;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42

    .line 823
    goto :goto_4a

    .line 821
    :catch_42
    move-exception v4

    .line 822
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "TvInputManagerService"

    const-string v6, "failed to report updated input info to callback"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    .end local v3    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_4a
    goto :goto_32

    .line 825
    :cond_4b
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 151
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_8

    .line 152
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V

    goto :goto_1f

    .line 153
    :cond_8
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1f

    .line 154
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_f
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 156
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 157
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    throw v1

    .line 159
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onBootPhase(I)V

    .line 160
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 146
    const-string/jumbo v0, "tv_input"

    new-instance v1, Lcom/android/server/tv/TvInputManagerService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 147
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .line 165
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-eq v1, p1, :cond_9

    .line 167
    monitor-exit v0

    return-void

    .line 169
    :cond_9
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 170
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 171
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method
