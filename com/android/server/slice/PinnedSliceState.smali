.class public Lcom/android/server/slice/PinnedSliceState;
.super Ljava/lang/Object;
.source "PinnedSliceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/slice/PinnedSliceState$ListenerInfo;
    }
.end annotation


# static fields
.field private static final SLICE_TIMEOUT:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "PinnedSliceState"


# instance fields
.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/slice/PinnedSliceState$ListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPinnedPkgs:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkg:Ljava/lang/String;

.field private final mService:Lcom/android/server/slice/SliceManagerService;

.field private mSlicePinned:Z

.field private mSupportedSpecs:[Landroid/app/slice/SliceSpec;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 194
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public constructor <init>(Lcom/android/server/slice/SliceManagerService;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/slice/SliceManagerService;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mPinnedPkgs:Landroid/util/ArraySet;

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    .line 57
    new-instance v0, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$KzxFkvfomRuMb5PD8_pIHDIhUUE;

    invoke-direct {v0, p0}, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$KzxFkvfomRuMb5PD8_pIHDIhUUE;-><init>(Lcom/android/server/slice/PinnedSliceState;)V

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 61
    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 62
    iput-object p2, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 63
    iput-object p3, p0, Lcom/android/server/slice/PinnedSliceState;->mPkg:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {v0}, Lcom/android/server/slice/SliceManagerService;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method private checkSelfRemove()V
    .registers 3

    .line 165
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->hasPinOrListener()Z

    move-result v0

    if-nez v0, :cond_d

    .line 167
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/server/slice/SliceManagerService;->removePinnedSlice(Landroid/net/Uri;)V

    .line 169
    :cond_d
    return-void
.end method

.method private findSpec([Landroid/app/slice/SliceSpec;Ljava/lang/String;)Landroid/app/slice/SliceSpec;
    .registers 7
    .param p1, "specs"    # [Landroid/app/slice/SliceSpec;
    .param p2, "type"    # Ljava/lang/String;

    .line 94
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 95
    .local v2, "spec":Landroid/app/slice/SliceSpec;
    invoke-virtual {v2}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 96
    return-object v2

    .line 94
    .end local v2    # "spec":Landroid/app/slice/SliceSpec;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 99
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleRecheckListeners()V
    .registers 5

    .line 172
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->hasPinOrListener()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 173
    :cond_7
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_a
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_2e

    .line 175
    iget-object v2, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;

    .line 176
    .local v2, "l":Lcom/android/server/slice/PinnedSliceState$ListenerInfo;
    # getter for: Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->token:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->access$000(Lcom/android/server/slice/PinnedSliceState$ListenerInfo;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 177
    iget-object v3, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 174
    .end local v2    # "l":Lcom/android/server/slice/PinnedSliceState$ListenerInfo;
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 180
    .end local v1    # "i":I
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/slice/PinnedSliceState;->checkSelfRemove()V

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw v1
.end method

.method private handleSendPinned()V
    .registers 8

    .line 185
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->getClient()Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 186
    .local v0, "client":Landroid/content/ContentProviderClient;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 194
    if-eqz v0, :cond_c

    invoke-static {v1, v0}, Lcom/android/server/slice/PinnedSliceState;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 186
    :cond_c
    return-void

    .line 187
    :cond_d
    :try_start_d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v2, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "slice_uri"

    iget-object v4, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1a} :catch_42
    .catchall {:try_start_d .. :try_end_1a} :catchall_40

    .line 190
    :try_start_1a
    const-string/jumbo v3, "pin"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_20} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_20} :catch_42
    .catchall {:try_start_1a .. :try_end_20} :catchall_40

    .line 193
    goto :goto_3a

    .line 191
    :catch_21
    move-exception v3

    .line 192
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v4, "PinnedSliceState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to contact "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_3a} :catch_42
    .catchall {:try_start_22 .. :try_end_3a} :catchall_40

    .line 194
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3a
    if-eqz v0, :cond_3f

    invoke-static {v1, v0}, Lcom/android/server/slice/PinnedSliceState;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 195
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_3f
    return-void

    .line 194
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    :catchall_40
    move-exception v2

    goto :goto_44

    .line 185
    :catch_42
    move-exception v1

    :try_start_43
    throw v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_40

    .line 194
    :goto_44
    if-eqz v0, :cond_49

    invoke-static {v1, v0}, Lcom/android/server/slice/PinnedSliceState;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_49
    throw v2
.end method

.method private handleSendUnpinned()V
    .registers 8

    .line 198
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->getClient()Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 199
    .local v0, "client":Landroid/content/ContentProviderClient;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 207
    if-eqz v0, :cond_c

    invoke-static {v1, v0}, Lcom/android/server/slice/PinnedSliceState;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 199
    :cond_c
    return-void

    .line 200
    :cond_d
    :try_start_d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v2, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "slice_uri"

    iget-object v4, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1a} :catch_42
    .catchall {:try_start_d .. :try_end_1a} :catchall_40

    .line 203
    :try_start_1a
    const-string/jumbo v3, "unpin"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_20} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_20} :catch_42
    .catchall {:try_start_1a .. :try_end_20} :catchall_40

    .line 206
    goto :goto_3a

    .line 204
    :catch_21
    move-exception v3

    .line 205
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v4, "PinnedSliceState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to contact "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_3a} :catch_42
    .catchall {:try_start_22 .. :try_end_3a} :catchall_40

    .line 207
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3a
    if-eqz v0, :cond_3f

    invoke-static {v1, v0}, Lcom/android/server/slice/PinnedSliceState;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 208
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_3f
    return-void

    .line 207
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    :catchall_40
    move-exception v2

    goto :goto_44

    .line 198
    :catch_42
    move-exception v1

    :try_start_43
    throw v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_40

    .line 207
    :goto_44
    if-eqz v0, :cond_49

    invoke-static {v1, v0}, Lcom/android/server/slice/PinnedSliceState;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_49
    throw v2
.end method

.method public static synthetic lambda$KzxFkvfomRuMb5PD8_pIHDIhUUE(Lcom/android/server/slice/PinnedSliceState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/slice/PinnedSliceState;->handleRecheckListeners()V

    return-void
.end method

.method public static synthetic lambda$TZdoqC_LDA8If7sQ7WXz9LM6VHg(Lcom/android/server/slice/PinnedSliceState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/slice/PinnedSliceState;->handleSendPinned()V

    return-void
.end method

.method public static synthetic lambda$mergeSpecs$0(Lcom/android/server/slice/PinnedSliceState;[Landroid/app/slice/SliceSpec;Landroid/app/slice/SliceSpec;)Landroid/app/slice/SliceSpec;
    .registers 6
    .param p1, "supportedSpecs"    # [Landroid/app/slice/SliceSpec;
    .param p2, "s"    # Landroid/app/slice/SliceSpec;

    .line 82
    invoke-virtual {p2}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/slice/PinnedSliceState;->findSpec([Landroid/app/slice/SliceSpec;Ljava/lang/String;)Landroid/app/slice/SliceSpec;

    move-result-object v0

    .line 83
    .local v0, "other":Landroid/app/slice/SliceSpec;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    .line 84
    :cond_c
    invoke-virtual {v0}, Landroid/app/slice/SliceSpec;->getRevision()I

    move-result v1

    invoke-virtual {p2}, Landroid/app/slice/SliceSpec;->getRevision()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 85
    return-object v0

    .line 87
    :cond_17
    return-object p2
.end method

.method static synthetic lambda$mergeSpecs$1(Landroid/app/slice/SliceSpec;)Z
    .registers 2
    .param p0, "s"    # Landroid/app/slice/SliceSpec;

    .line 88
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic lambda$mergeSpecs$2(I)[Landroid/app/slice/SliceSpec;
    .registers 2
    .param p0, "x$0"    # I

    .line 88
    new-array v0, p0, [Landroid/app/slice/SliceSpec;

    return-object v0
.end method

.method public static synthetic lambda$t5Vl61Ns1u_83c4ri7920sczEu0(Lcom/android/server/slice/PinnedSliceState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/slice/PinnedSliceState;->handleSendUnpinned()V

    return-void
.end method

.method private setSlicePinned(Z)V
    .registers 5
    .param p1, "pinned"    # Z

    .line 111
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/slice/PinnedSliceState;->mSlicePinned:Z

    if-ne v1, p1, :cond_9

    monitor-exit v0

    return-void

    .line 113
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/slice/PinnedSliceState;->mSlicePinned:Z

    .line 114
    if-eqz p1, :cond_1c

    .line 115
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {v1}, Lcom/android/server/slice/SliceManagerService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$TZdoqC_LDA8If7sQ7WXz9LM6VHg;

    invoke-direct {v2, p0}, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$TZdoqC_LDA8If7sQ7WXz9LM6VHg;-><init>(Lcom/android/server/slice/PinnedSliceState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .line 117
    :cond_1c
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {v1}, Lcom/android/server/slice/SliceManagerService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$t5Vl61Ns1u_83c4ri7920sczEu0;

    invoke-direct {v2, p0}, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$t5Vl61Ns1u_83c4ri7920sczEu0;-><init>(Lcom/android/server/slice/PinnedSliceState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    :goto_2a
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/slice/PinnedSliceState;->setSlicePinned(Z)V

    .line 108
    return-void
.end method

.method getClient()Landroid/content/ContentProviderClient;
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 158
    invoke-virtual {v0}, Lcom/android/server/slice/SliceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 159
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    return-object v1

    .line 160
    :cond_14
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 161
    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecs()[Landroid/app/slice/SliceSpec;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasPinOrListener()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mPinnedPkgs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v1, 0x1

    :goto_17
    monitor-exit v0

    return v1

    .line 153
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public isListening()Z
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    .line 146
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public mergeSpecs([Landroid/app/slice/SliceSpec;)V
    .registers 6
    .param p1, "supportedSpecs"    # [Landroid/app/slice/SliceSpec;

    .line 76
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    if-nez v1, :cond_a

    .line 78
    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    goto :goto_2d

    .line 80
    :cond_a
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 81
    .local v1, "specs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$j_JfEZwPCa729MjgsTSd8MAItIw;

    invoke-direct {v3, p0, p1}, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$j_JfEZwPCa729MjgsTSd8MAItIw;-><init>(Lcom/android/server/slice/PinnedSliceState;[Landroid/app/slice/SliceSpec;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$2PaYhOaggf1E5xg82LTTEwxmLE4;->INSTANCE:Lcom/android/server/slice/-$$Lambda$PinnedSliceState$2PaYhOaggf1E5xg82LTTEwxmLE4;

    .line 88
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$vxnx7v9Z67Tj9aywVmtdX48br1M;->INSTANCE:Lcom/android/server/slice/-$$Lambda$PinnedSliceState$vxnx7v9Z67Tj9aywVmtdX48br1M;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/app/slice/SliceSpec;

    iput-object v2, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    .line 90
    .end local v1    # "specs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    :goto_2d
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public pin(Ljava/lang/String;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V
    .registers 14
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "specs"    # [Landroid/app/slice/SliceSpec;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 123
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    new-instance v9, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;

    const/4 v6, 0x1

    .line 125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    move-object v2, v9

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;-><init>(Lcom/android/server/slice/PinnedSliceState;Landroid/os/IBinder;Ljava/lang/String;ZII)V

    .line 124
    invoke-virtual {v1, p3, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2b

    .line 127
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_20} :catch_21
    .catchall {:try_start_1a .. :try_end_20} :catchall_2b

    .line 129
    goto :goto_22

    .line 128
    :catch_21
    move-exception v1

    .line 130
    :goto_22
    :try_start_22
    invoke-virtual {p0, p2}, Lcom/android/server/slice/PinnedSliceState;->mergeSpecs([Landroid/app/slice/SliceSpec;)V

    .line 131
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/slice/PinnedSliceState;->setSlicePinned(Z)V

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public unpin(Ljava/lang/String;Landroid/os/IBinder;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 136
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 138
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    .line 140
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->hasPinOrListener()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 139
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method
