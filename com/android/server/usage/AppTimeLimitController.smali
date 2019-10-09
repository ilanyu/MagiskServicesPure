.class public Lcom/android/server/usage/AppTimeLimitController;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppTimeLimitController$MyHandler;,
        Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;,
        Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;,
        Lcom/android/server/usage/AppTimeLimitController$UserData;,
        Lcom/android/server/usage/AppTimeLimitController$Lock;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_OBSERVER_PER_UID:J = 0x3e8L

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "AppTimeLimitController"


# instance fields
.field private final mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

.field private mListener:Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;

.field private final mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$UserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;Landroid/os/Looper;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$Lock;-><init>(Lcom/android/server/usage/AppTimeLimitController$1;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    .line 148
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;-><init>(Lcom/android/server/usage/AppTimeLimitController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    .line 149
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"    # Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->informListener(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    return-void
.end method

.method private addGroupToPackageMapLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;[Ljava/lang/String;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .registers 8
    .param p1, "user"    # Lcom/android/server/usage/AppTimeLimitController$UserData;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "group"    # Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    .line 388
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_27

    .line 389
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->packageMap:Landroid/util/ArrayMap;
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 390
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;>;"
    if-nez v1, :cond_21

    .line 391
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 392
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->packageMap:Landroid/util/ArrayMap;
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_21
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 396
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method private getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;
    .registers 5
    .param p1, "userId"    # I

    .line 172
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 173
    .local v0, "userData":Lcom/android/server/usage/AppTimeLimitController$UserData;
    if-nez v0, :cond_16

    .line 174
    new-instance v1, Lcom/android/server/usage/AppTimeLimitController$UserData;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/usage/AppTimeLimitController$UserData;-><init>(ILcom/android/server/usage/AppTimeLimitController$1;)V

    move-object v0, v1

    .line 175
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    :cond_16
    return-object v0
.end method

.method private static inPackageList([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "packages"    # [Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 261
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private informListener(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .registers 12
    .param p1, "group"    # Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    .line 354
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;

    if-eqz v0, :cond_16

    .line 355
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;

    iget v2, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    iget v3, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->userId:I

    iget-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    iget-wide v6, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    iget-wide v8, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    sub-long/2addr v6, v8

    iget-object v8, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->callbackIntent:Landroid/app/PendingIntent;

    invoke-interface/range {v1 .. v8}, Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;->onLimitReached(IIJJLandroid/app/PendingIntent;)V

    .line 359
    :cond_16
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 360
    :try_start_19
    iget v1, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 361
    .local v1, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    iget v2, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->requestingUid:I

    iget v3, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/usage/AppTimeLimitController;->removeObserverLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;IIZ)V

    .line 362
    .end local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private maybeWatchForPackageLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Ljava/lang/String;J)V
    .registers 13
    .param p1, "user"    # Lcom/android/server/usage/AppTimeLimitController$UserData;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uptimeMillis"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 368
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->packageMap:Landroid/util/ArrayMap;
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 369
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;>;"
    if-nez v0, :cond_d

    return-void

    .line 371
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 372
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_2e

    .line 373
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    .line 374
    .local v3, "group":Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    iget-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2b

    .line 375
    iput-wide p3, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    .line 376
    iput-object p2, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    .line 381
    iget-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;J)V

    .line 372
    .end local v3    # "group":Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 384
    .end local v2    # "i":I
    :cond_2e
    return-void
.end method

.method private postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;J)V
    .registers 7
    .param p1, "group"    # Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    .param p2, "timeout"    # J

    .line 411
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 413
    return-void
.end method

.method private postInformListenerLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .registers 5
    .param p1, "group"    # Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    .line 345
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 347
    return-void
.end method

.method private removeGroupFromPackageMapLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .registers 6
    .param p1, "user"    # Lcom/android/server/usage/AppTimeLimitController$UserData;
    .param p2, "group"    # Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    .line 403
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->packageMap:Landroid/util/ArrayMap;
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 404
    .local v0, "mapSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1b

    .line 405
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->packageMap:Landroid/util/ArrayMap;
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 406
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;>;"
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 404
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 408
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private removeObserverLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;IIZ)V
    .registers 9
    .param p1, "user"    # Lcom/android/server/usage/AppTimeLimitController$UserData;
    .param p2, "requestingUid"    # I
    .param p3, "observerId"    # I
    .param p4, "readding"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 267
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->groups:Landroid/util/SparseArray;
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    .line 268
    .local v0, "group":Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    if-eqz v0, :cond_3d

    iget v1, v0, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->requestingUid:I

    if-ne v1, p2, :cond_3d

    .line 269
    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/AppTimeLimitController;->removeGroupFromPackageMapLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    .line 270
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->groups:Landroid/util/SparseArray;
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 271
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 272
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->observerIdCounts:Landroid/util/SparseIntArray;
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 273
    .local v1, "observerIdCount":I
    if-gt v1, v2, :cond_34

    if-nez p4, :cond_34

    .line 274
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->observerIdCounts:Landroid/util/SparseIntArray;
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_3d

    .line 276
    :cond_34
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->observerIdCounts:Landroid/util/SparseIntArray;
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 279
    .end local v1    # "observerIdCount":I
    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method public addObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .registers 16
    .param p1, "requestingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "packages"    # [Ljava/lang/String;
    .param p4, "timeLimit"    # J
    .param p6, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p7, "userId"    # I

    .line 195
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_9c

    .line 198
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 199
    :try_start_b
    invoke-direct {p0, p7}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 200
    .local v1, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/usage/AppTimeLimitController;->removeObserverLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;IIZ)V

    .line 202
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->observerIdCounts:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 203
    .local v2, "observerIdCount":I
    int-to-long v3, v2

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getObserverPerUidLimit()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_82

    .line 207
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->observerIdCounts:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 209
    new-instance v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    invoke-direct {v3}, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;-><init>()V

    .line 210
    .local v3, "group":Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    iput p2, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    .line 211
    iput-object p6, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->callbackIntent:Landroid/app/PendingIntent;

    .line 212
    iput-object p3, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->packages:[Ljava/lang/String;

    .line 213
    iput-wide p4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    .line 214
    iget-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    iput-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    .line 215
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRequested:J

    .line 216
    iput p1, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->requestingUid:I

    .line 217
    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    .line 218
    iput p7, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->userId:I

    .line 220
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->groups:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 222
    invoke-direct {p0, v1, p3, v3}, Lcom/android/server/usage/AppTimeLimitController;->addGroupToPackageMapLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;[Ljava/lang/String;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    .line 229
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedPackage:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_80

    iget-object v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->packages:[Ljava/lang/String;

    .line 230
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedPackage:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-static {v4, v5}, Lcom/android/server/usage/AppTimeLimitController;->inPackageList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 231
    iget-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRequested:J

    iput-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    .line 232
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedPackage:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    .line 233
    iget-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_80

    .line 234
    iget-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;J)V

    .line 237
    .end local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v2    # "observerIdCount":I
    .end local v3    # "group":Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    :cond_80
    monitor-exit v0

    .line 238
    return-void

    .line 204
    .restart local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .restart local v2    # "observerIdCount":I
    :cond_82
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many observers added by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 237
    .end local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v2    # "observerIdCount":I
    :catchall_99
    move-exception v1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_b .. :try_end_9b} :catchall_99

    throw v1

    .line 196
    :cond_9c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time limit must be >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkTimeout(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .registers 8
    .param p1, "group"    # Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    .line 423
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 424
    :try_start_3
    iget v1, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 426
    .local v1, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->groups:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_17

    monitor-exit v0

    return-void

    .line 431
    :cond_17
    iget-wide v2, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_21

    monitor-exit v0

    return-void

    .line 438
    :cond_21
    iget-object v2, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->packages:[Ljava/lang/String;

    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedPackage:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->inPackageList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 443
    iget-wide v2, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4a

    .line 444
    const-string v2, "AppTimeLimitController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startTime was not set correctly for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    sub-long/2addr v2, v4

    .line 447
    .local v2, "timeInForeground":J
    iget-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_67

    .line 450
    iget-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    sub-long/2addr v4, v2

    iput-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    .line 451
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->postInformListenerLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    .line 453
    const-wide/16 v4, -0x1

    iput-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    .line 454
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    goto :goto_6d

    .line 457
    :cond_67
    iget-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    sub-long/2addr v4, v2

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;J)V

    .line 460
    .end local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v2    # "timeInForeground":J
    :cond_6d
    :goto_6d
    monitor-exit v0

    .line 461
    return-void

    .line 460
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 464
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 465
    :try_start_3
    const-string v1, "\n  App Time Limits"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 467
    .local v1, "nUsers":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_90

    .line 468
    iget-object v4, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 469
    .local v4, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    const-string v5, "   User "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->userId:I
    invoke-static {v4}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$800(Lcom/android/server/usage/AppTimeLimitController$UserData;)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 470
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->groups:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 471
    .local v5, "nGroups":I
    move v6, v2

    .local v6, "j":I
    :goto_2f
    if-ge v6, v5, :cond_7e

    .line 472
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->groups:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    .line 473
    .local v7, "group":Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    const-string v8, "    Group id="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 474
    const-string v8, " timeLimit="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 475
    const-string v8, " remaining="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 476
    const-string v8, " currentPackage="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 477
    const-string v8, " timeCurrentPkgStarted="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 478
    const-string v8, " packages="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->packages:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    .end local v7    # "group":Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 480
    .end local v6    # "j":I
    :cond_7e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 481
    const-string v6, "    currentForegroundedPackage="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 482
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedPackage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    .end local v4    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v5    # "nGroups":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 484
    .end local v1    # "nUsers":I
    .end local v3    # "i":I
    :cond_90
    monitor-exit v0

    .line 485
    return-void

    .line 484
    :catchall_92
    move-exception v1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_3 .. :try_end_94} :catchall_92

    throw v1
.end method

.method protected getMinTimeLimit()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 167
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method getObserverGroup(II)Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    .registers 5
    .param p1, "observerId"    # I
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 256
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->groups:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    monitor-exit v0

    return-object v1

    .line 257
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method protected getObserverPerUidLimit()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 161
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method protected getUptimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public moveToBackground(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "userId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 308
    iget-object v3, v1, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v3

    .line 309
    move/from16 v4, p3

    :try_start_9
    invoke-direct {v1, v4}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v0

    .line 310
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedPackage:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 311
    const-string v5, "AppTimeLimitController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eh? Last foregrounded package = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedPackage:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and now backgrounded = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    monitor-exit v3

    return-void

    .line 315
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v5

    .line 318
    .local v5, "stopTime":J
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->packageMap:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 319
    .local v7, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;>;"
    if-eqz v7, :cond_93

    .line 320
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 321
    .local v9, "size":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_50
    if-ge v10, v9, :cond_93

    .line 322
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    .line 324
    .local v11, "group":Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    iget-wide v12, v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gtz v12, :cond_63

    .line 321
    .end local v11    # "group":Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    move/from16 v16, v9

    goto :goto_8e

    .line 326
    .restart local v11    # "group":Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    :cond_63
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedTime:J
    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$600(Lcom/android/server/usage/AppTimeLimitController$UserData;)J

    move-result-wide v12

    move/from16 v16, v9

    iget-wide v8, v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRequested:J

    .end local v9    # "size":I
    .local v16, "size":I
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 328
    .local v8, "startTime":J
    sub-long v12, v5, v8

    .line 329
    .local v12, "diff":J
    iget-wide v14, v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    sub-long/2addr v14, v12

    iput-wide v14, v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    .line 330
    iget-wide v14, v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    const-wide/16 v17, 0x0

    cmp-long v14, v14, v17

    if-gtz v14, :cond_81

    .line 332
    invoke-direct {v1, v11}, Lcom/android/server/usage/AppTimeLimitController;->postInformListenerLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    .line 335
    :cond_81
    const/4 v14, 0x0

    iput-object v14, v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    .line 336
    const-wide/16 v14, -0x1

    iput-wide v14, v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    .line 337
    iget-object v14, v1, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v11}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 321
    .end local v8    # "startTime":J
    .end local v11    # "group":Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    .end local v12    # "diff":J
    :goto_8e
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v16

    goto :goto_50

    .line 340
    .end local v10    # "i":I
    .end local v16    # "size":I
    :cond_93
    const/4 v8, 0x0

    # setter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedPackage:Ljava/lang/String;
    invoke-static {v0, v8}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$502(Lcom/android/server/usage/AppTimeLimitController$UserData;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v5    # "stopTime":J
    .end local v7    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;>;"
    monitor-exit v3

    .line 342
    return-void

    .line 341
    :catchall_99
    move-exception v0

    monitor-exit v3
    :try_end_9b
    .catchall {:try_start_9 .. :try_end_9b} :catchall_99

    throw v0
.end method

.method public moveToForeground(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 288
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 289
    :try_start_3
    invoke-direct {p0, p3}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 292
    .local v1, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    # setter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedPackage:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$502(Lcom/android/server/usage/AppTimeLimitController$UserData;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$602(Lcom/android/server/usage/AppTimeLimitController$UserData;J)J

    .line 296
    # getter for: Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedTime:J
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$600(Lcom/android/server/usage/AppTimeLimitController$UserData;)J

    move-result-wide v2

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->maybeWatchForPackageLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Ljava/lang/String;J)V

    .line 297
    .end local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    monitor-exit v0

    .line 298
    return-void

    .line 297
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public onUserRemoved(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 182
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 184
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 185
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeObserver(III)V
    .registers 7
    .param p1, "requestingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "userId"    # I

    .line 247
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 248
    :try_start_3
    invoke-direct {p0, p3}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 249
    .local v1, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/usage/AppTimeLimitController;->removeObserverLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;IIZ)V

    .line 250
    .end local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method
