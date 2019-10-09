.class public Lcom/android/server/UidStateHelper;
.super Ljava/lang/Object;
.source "UidStateHelper.java"


# static fields
.field private static DEBUG:Z = false

.field private static final MSG_DISPATCH_UID_STATE_CHANGE:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/UidStateHelper;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mObserverInstalled:Z

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mStateLock:Ljava/lang/Object;

.field private final mUidForeground:Landroid/util/SparseBooleanArray;

.field private final mUidPidForeground:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mUidStateObervers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/app/IUidStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-string v0, "UidProcStateHelper"

    sput-object v0, Lcom/android/server/UidStateHelper;->TAG:Ljava/lang/String;

    .line 23
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/UidStateHelper;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    .line 33
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mUidPidForeground:Landroid/util/SparseArray;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z

    .line 37
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    .line 150
    new-instance v0, Lcom/android/server/UidStateHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/UidStateHelper$1;-><init>(Lcom/android/server/UidStateHelper;)V

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 186
    new-instance v0, Lcom/android/server/UidStateHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/UidStateHelper$2;-><init>(Lcom/android/server/UidStateHelper;)V

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 49
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UidStateHelper;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/UidStateHelper;->mHandler:Landroid/os/Handler;

    .line 54
    :try_start_47
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/UidStateHelper;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_51} :catch_52

    .line 57
    goto :goto_53

    .line 56
    :catch_52
    move-exception v0

    .line 58
    :goto_53
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 21
    sget-boolean v0, Lcom/android/server/UidStateHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 21
    sget-object v0, Lcom/android/server/UidStateHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/UidStateHelper;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/UidStateHelper;

    .line 21
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/UidStateHelper;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/UidStateHelper;

    .line 21
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidPidForeground:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/UidStateHelper;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/UidStateHelper;
    .param p1, "x1"    # I

    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/UidStateHelper;->computeUidForegroundLocked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/UidStateHelper;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/UidStateHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/server/UidStateHelper;->dispatchUidStateChange(II)V

    return-void
.end method

.method private computeUidForegroundLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .line 115
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 118
    .local v0, "pidForeground":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .line 119
    .local v1, "uidForeground":Z
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 120
    .local v2, "size":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_f
    if-ge v4, v2, :cond_1c

    .line 121
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 122
    const/4 v1, 0x1

    .line 123
    goto :goto_1c

    .line 120
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 127
    .end local v4    # "i":I
    :cond_1c
    :goto_1c
    iget-object v4, p0, Lcom/android/server/UidStateHelper;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    .line 128
    .local v4, "oldUidForeground":Z
    if-eq v4, v1, :cond_37

    .line 130
    iget-object v5, p0, Lcom/android/server/UidStateHelper;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 131
    iget-object v5, p0, Lcom/android/server/UidStateHelper;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    if-eqz v1, :cond_30

    move v3, v6

    nop

    :cond_30
    invoke-virtual {v5, v6, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 134
    :cond_37
    return-void
.end method

.method private dispatchUidStateChange(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 137
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 138
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 139
    iget-object v2, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/IUidStateChangeCallback;

    .line 140
    .local v2, "callback":Lcom/android/internal/app/IUidStateChangeCallback;
    if-eqz v2, :cond_18

    .line 142
    :try_start_13
    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IUidStateChangeCallback;->onUidStateChange(II)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    .line 144
    goto :goto_18

    .line 143
    :catch_17
    move-exception v3

    .line 138
    .end local v2    # "callback":Lcom/android/internal/app/IUidStateChangeCallback;
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 147
    .end local v1    # "i":I
    :cond_1b
    iget-object v1, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 148
    return-void
.end method

.method public static get()Lcom/android/server/UidStateHelper;
    .registers 1

    .line 42
    sget-object v0, Lcom/android/server/UidStateHelper;->sInstance:Lcom/android/server/UidStateHelper;

    if-nez v0, :cond_b

    .line 43
    new-instance v0, Lcom/android/server/UidStateHelper;

    invoke-direct {v0}, Lcom/android/server/UidStateHelper;-><init>()V

    sput-object v0, Lcom/android/server/UidStateHelper;->sInstance:Lcom/android/server/UidStateHelper;

    .line 45
    :cond_b
    sget-object v0, Lcom/android/server/UidStateHelper;->sInstance:Lcom/android/server/UidStateHelper;

    return-object v0
.end method


# virtual methods
.method public isUidForeground(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 80
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_8
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_b
    iget-object v1, p0, Lcom/android/server/UidStateHelper;->mUidForeground:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 85
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw v1
.end method

.method public isUidForeground(IZ)Z
    .registers 12
    .param p1, "uid"    # I
    .param p2, "doubleCheck"    # Z

    .line 89
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 90
    return v1

    .line 93
    :cond_8
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_b
    iget-object v2, p0, Lcom/android/server/UidStateHelper;->mUidForeground:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    .line 95
    .local v2, "isUidFg":Z
    if-eqz p2, :cond_5d

    .line 96
    const/4 v4, 0x0

    .line 97
    .local v4, "isFgByPids":Z
    iget-object v5, p0, Lcom/android/server/UidStateHelper;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseBooleanArray;

    .line 98
    .local v5, "pidForeground":Landroid/util/SparseBooleanArray;
    if-eqz v5, :cond_34

    .line 99
    move v6, v4

    move v4, v3

    .local v4, "i":I
    .local v6, "isFgByPids":Z
    :goto_21
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_33

    .line 100
    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    .line 101
    .local v7, "pid":I
    invoke-static {v7}, Lcom/android/server/am/ExtraActivityManagerService;->hasForegroundActivities(I)Z

    move-result v8

    or-int/2addr v6, v8

    .line 99
    .end local v7    # "pid":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 104
    .end local v4    # "i":I
    :cond_33
    move v4, v6

    .end local v6    # "isFgByPids":Z
    .local v4, "isFgByPids":Z
    :cond_34
    if-eq v2, v4, :cond_54

    .line 105
    sget-object v6, Lcom/android/server/UidStateHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ProcessObserver may miss callback, isUidFg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isFgByPids="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_54
    if-nez v2, :cond_5b

    if-eqz v4, :cond_59

    goto :goto_5b

    :cond_59
    move v1, v3

    nop

    :cond_5b
    :goto_5b
    monitor-exit v0

    return v1

    .line 109
    .end local v4    # "isFgByPids":Z
    .end local v5    # "pidForeground":Landroid/util/SparseBooleanArray;
    :cond_5d
    monitor-exit v0

    .line 110
    return v2

    .line 109
    .end local v2    # "isUidFg":Z
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_b .. :try_end_61} :catchall_5f

    throw v1
.end method

.method public registerUidStateObserver(Lcom/android/internal/app/IUidStateChangeCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/app/IUidStateChangeCallback;

    .line 61
    iget-boolean v0, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z

    if-eqz v0, :cond_f

    .line 64
    monitor-enter p0

    .line 65
    :try_start_5
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 66
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0

    .line 62
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ProcessObserver not installed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterUidStateObserver(Lcom/android/internal/app/IUidStateChangeCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/app/IUidStateChangeCallback;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z

    if-eqz v0, :cond_f

    .line 73
    monitor-enter p0

    .line 74
    :try_start_5
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 75
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0

    .line 71
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ProcessObserver not installed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
