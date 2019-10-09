.class Lcom/android/server/media/MediaSessionStack;
.super Ljava/lang/Object;
.source "MediaSessionStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;
    }
.end annotation


# static fields
.field private static final ALWAYS_PRIORITY_STATES:[I

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaSessionStack"

.field private static final TRANSITION_PRIORITY_STATES:[I


# instance fields
.field private final mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field private final mCachedActiveLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

.field private final mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

.field private final mSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    return-void

    nop

    :array_16
    .array-data 4
        0x4
        0x5
        0x9
        0xa
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x8
        0x3
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;)V
    .registers 4
    .param p1, "monitor"    # Lcom/android/server/media/AudioPlayerStateMonitor;
    .param p2, "listener"    # Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 96
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 97
    iput-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    .line 98
    return-void
.end method

.method private clearCache(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 379
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 382
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 383
    return-void
.end method

.method private containsState(I[I)Z
    .registers 6
    .param p1, "state"    # I
    .param p2, "states"    # [I

    .line 369
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_e

    .line 370
    aget v2, p2, v1

    if-ne v2, p1, :cond_b

    .line 371
    const/4 v0, 0x1

    return v0

    .line 369
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 374
    .end local v1    # "i":I
    :cond_e
    return v0
.end method

.method private findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;
    .registers 8
    .param p1, "uid"    # I

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord;

    .line 216
    .local v2, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    if-ne p1, v3, :cond_33

    .line 217
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 218
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result v4

    if-ne v3, v4, :cond_30

    .line 221
    return-object v2

    .line 223
    :cond_30
    if-nez v0, :cond_33

    .line 226
    move-object v0, v2

    .line 229
    .end local v2    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_33
    goto :goto_7

    .line 230
    :cond_34
    return-object v0
.end method

.method private shouldUpdatePriority(II)Z
    .registers 5
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 358
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 359
    return v1

    .line 361
    :cond_a
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    .line 362
    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 363
    return v1

    .line 365
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 4
    .param p1, "newMediaButtonSession"    # Lcom/android/server/media/MediaSessionRecord;

    .line 260
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    .line 261
    .local v0, "oldMediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    .line 262
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    invoke-interface {v1, v0, p1}, Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;->onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord;)V

    .line 264
    return-void
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .line 106
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 113
    return-void
.end method

.method public contains(Lcom/android/server/media/MediaSessionRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .line 135
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v1

    .line 298
    .local v1, "sortedSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 299
    .local v2, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Media button session is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Sessions Stack - have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessions:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "indent":Ljava/lang/String;
    nop

    .local v0, "i":I
    :goto_51
    if-ge v0, v2, :cond_62

    .line 303
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionRecord;

    .line 304
    .local v4, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v4, p1, v3}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 302
    .end local v4    # "record":Lcom/android/server/media/MediaSessionRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 307
    .end local v0    # "i":I
    :cond_62
    return-void
.end method

.method public getActiveSessions(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 243
    .local v0, "cachedActiveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    if-nez v0, :cond_14

    .line 244
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    :cond_14
    return-object v0
.end method

.method public getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;
    .registers 8
    .param p1, "userId"    # I

    .line 283
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 285
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 286
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1d

    .line 287
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 288
    .local v3, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1a

    .line 289
    return-object v3

    .line 286
    .end local v3    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 292
    .end local v2    # "i":I
    :cond_1d
    const/4 v2, 0x0

    return-object v2
.end method

.method public getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;
    .registers 6

    .line 267
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v0, :cond_7

    .line 268
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    return-object v0

    .line 270
    :cond_7
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 272
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_26

    .line 273
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 274
    .local v3, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 275
    iput-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 276
    return-object v3

    .line 272
    .end local v3    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 279
    .end local v2    # "i":I
    :cond_26
    const/4 v2, 0x0

    return-object v2
.end method

.method public getMediaButtonSession()Lcom/android/server/media/MediaSessionRecord;
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    return-object v0
.end method

.method public getPriorityList(ZI)Ljava/util/ArrayList;
    .registers 10
    .param p1, "activeOnly"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    const/4 v1, 0x0

    .line 326
    .local v1, "lastPlaybackActiveIndex":I
    const/4 v2, 0x0

    .line 328
    .local v2, "lastActiveIndex":I
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 329
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v3, :cond_46

    .line 330
    iget-object v5, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionRecord;

    .line 332
    .local v5, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v6, -0x1

    if-eq p2, v6, :cond_22

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v6

    if-eq p2, v6, :cond_22

    .line 334
    goto :goto_43

    .line 337
    :cond_22
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 338
    if-nez p1, :cond_43

    .line 341
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 346
    :cond_2e
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 347
    add-int/lit8 v6, v1, 0x1

    .local v6, "lastPlaybackActiveIndex":I
    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 348
    .end local v1    # "lastPlaybackActiveIndex":I
    add-int/lit8 v2, v2, 0x1

    .line 329
    move v1, v6

    goto :goto_43

    .line 350
    .end local v6    # "lastPlaybackActiveIndex":I
    .restart local v1    # "lastPlaybackActiveIndex":I
    :cond_3d
    add-int/lit8 v6, v2, 0x1

    .local v6, "lastActiveIndex":I
    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 329
    .end local v2    # "lastActiveIndex":I
    .end local v5    # "session":Lcom/android/server/media/MediaSessionRecord;
    move v2, v6

    .end local v6    # "lastActiveIndex":I
    .restart local v2    # "lastActiveIndex":I
    :cond_43
    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 354
    .end local v4    # "i":I
    :cond_46
    return-object v0
.end method

.method public onPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)V
    .registers 6
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 146
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionStack;->shouldUpdatePriority(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 147
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 149
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    goto :goto_22

    .line 150
    :cond_19
    invoke-static {p3}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 159
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_43

    .line 160
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    .line 161
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 162
    .local v0, "newMediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eq v0, v1, :cond_43

    .line 163
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 166
    .end local v0    # "newMediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    :cond_43
    return-void
.end method

.method public onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .line 176
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 177
    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .line 121
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-ne v0, p1, :cond_d

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 128
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 129
    return-void
.end method

.method public updateMediaButtonSessionIfNeeded()V
    .registers 6

    .line 186
    sget-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 187
    const-string v0, "MediaSessionStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMediaButtonSessionIfNeeded, callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_20
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->getSortedAudioPlaybackClientUids()Landroid/util/IntArray;

    move-result-object v0

    .line 190
    .local v0, "audioPlaybackUids":Landroid/util/IntArray;
    const/4 v1, 0x0

    .line 190
    .local v1, "i":I
    :goto_27
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 191
    nop

    .line 192
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    .line 193
    .local v2, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    if-eqz v2, :cond_49

    .line 195
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->cleanUpAudioPlaybackUids(I)V

    .line 196
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eq v3, v2, :cond_48

    .line 197
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 199
    :cond_48
    return-void

    .line 190
    .end local v2    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 202
    .end local v1    # "i":I
    :cond_4c
    return-void
.end method
