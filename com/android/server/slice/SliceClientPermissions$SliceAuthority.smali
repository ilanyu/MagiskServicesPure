.class public Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
.super Ljava/lang/Object;
.source "SliceClientPermissions.java"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker$Persistable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceClientPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliceAuthority"
.end annotation


# static fields
.field public static final DELIMITER:Ljava/lang/String; = "/"


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mPaths:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

.field private final mTracker:Lcom/android/server/slice/DirtyTracker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V
    .registers 5
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .param p3, "tracker"    # Lcom/android/server/slice/DirtyTracker;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 207
    iput-object p1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 209
    iput-object p3, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 199
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;)Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 199
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    return-object v0
.end method

.method private decodeSegments(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 313
    const-string v0, "/"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "sets":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 315
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 317
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method private encodeSegments([Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # [Ljava/lang/String;

    .line 305
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 306
    .local v0, "out":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 307
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 309
    .end local v1    # "i":I
    :cond_12
    const-string v1, "/"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "prefix"    # [Ljava/lang/String;
    .param p2, "path"    # [Ljava/lang/String;

    .line 265
    array-length v0, p1

    .line 266
    .local v0, "prefixSize":I
    array-length v1, p2

    const/4 v2, 0x0

    if-ge v1, v0, :cond_6

    return v2

    .line 268
    :cond_6
    move v1, v2

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 269
    aget-object v3, p2, v1

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 270
    return v2

    .line 268
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 274
    .end local v1    # "i":I
    :cond_17
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$equals$0([Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "o"    # [Ljava/lang/String;

    .line 330
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$equals$1([Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "o"    # [Ljava/lang/String;

    .line 331
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$pathToString$2([Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # [Ljava/lang/String;

    .line 350
    const-string v0, "/"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pathToString(Landroid/util/ArraySet;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 350
    .local p1, "paths":Landroid/util/ArraySet;, "Landroid/util/ArraySet<[Ljava/lang/String;>;"
    const-string v0, ", "

    invoke-virtual {p1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$lvjy01xuWTQLCsbGw02qqI7DYDM;->INSTANCE:Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$lvjy01xuWTQLCsbGw02qqI7DYDM;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 351
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 350
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addPath(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 221
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 222
    .local v0, "pathSegs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_33

    .line 223
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 224
    .local v2, "existing":[Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 226
    return-void

    .line 228
    :cond_25
    invoke-direct {p0, v0, v2}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 229
    iget-object v3, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 222
    .end local v2    # "existing":[Ljava/lang/String;
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 232
    .end local v1    # "i":I
    :cond_33
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {v1, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 234
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "obj"    # Ljava/lang/Object;

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 326
    :cond_14
    move-object v0, p1

    check-cast v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 327
    .local v0, "other":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-eq v2, v3, :cond_26

    return v1

    .line 328
    :cond_26
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 329
    .local v2, "p1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 330
    .local v3, "p2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$gfIfSC_15op1dWInvxEKC7DlOkg;->INSTANCE:Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$gfIfSC_15op1dWInvxEKC7DlOkg;

    invoke-static {v4}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 331
    sget-object v4, Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$czFcrdPWpaFU7_jx7xCl0wMHBps;->INSTANCE:Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$czFcrdPWpaFU7_jx7xCl0wMHBps;

    invoke-static {v4}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 332
    move v4, v1

    .local v4, "i":I
    :goto_47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_73

    .line 333
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 334
    .local v5, "a1":[Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 335
    .local v6, "a2":[Ljava/lang/String;
    array-length v7, v5

    array-length v8, v6

    if-eq v7, v8, :cond_5e

    return v1

    .line 336
    :cond_5e
    move v7, v1

    .local v7, "j":I
    :goto_5f
    array-length v8, v5

    if-ge v7, v8, :cond_70

    .line 337
    aget-object v8, v5, v7

    aget-object v9, v6, v7

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6d

    return v1

    .line 336
    :cond_6d
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f

    .line 332
    .end local v5    # "a1":[Ljava/lang/String;
    .end local v6    # "a2":[Ljava/lang/String;
    .end local v7    # "j":I
    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 340
    .end local v4    # "i":I
    :cond_73
    iget-object v4, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    iget-object v4, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    iget-object v5, v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 341
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 340
    const/4 v1, 0x1

    goto :goto_8a

    .line 341
    :cond_89
    nop

    .line 340
    :goto_8a
    return v1
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getPaths()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 252
    :try_start_1
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    throw v0
.end method

.method public getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    return-object v0
.end method

.method public hasPermission(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 256
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 257
    .local v1, "p":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 258
    const/4 v0, 0x1

    return v0

    .line 260
    .end local v1    # "p":[Ljava/lang/String;
    :cond_26
    goto :goto_6

    .line 261
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized readFrom(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 293
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 294
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 295
    .local v0, "depth":I
    :goto_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-lt v1, v0, :cond_33

    .line 296
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    const-string/jumbo v1, "path"

    .line 297
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 298
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->decodeSegments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_2f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_35

    goto :goto_8

    .line 302
    :cond_33
    monitor-exit p0

    return-void

    .line 292
    .end local v0    # "depth":I
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_35
    move-exception p1

    monitor-exit p0

    .line 292
    .end local p0    # "this":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    throw p1
.end method

.method removePath(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 237
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 238
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 239
    .local v1, "pathSegs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_15
    if-ltz v2, :cond_2e

    .line 240
    iget-object v3, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 241
    .local v3, "existing":[Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 242
    const/4 v0, 0x1

    .line 243
    iget-object v4, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 239
    .end local v3    # "existing":[Ljava/lang/String;
    :cond_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 246
    .end local v2    # "i":I
    :cond_2e
    if-eqz v0, :cond_35

    .line 247
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {v2, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 249
    :cond_35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 346
    const-string v0, "(%s, %s: %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-virtual {v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-direct {p0, v2}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->pathToString(Landroid/util/ArraySet;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 283
    :try_start_1
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 284
    .local v0, "N":I
    const/4 v1, 0x0

    .line 284
    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_30

    .line 285
    # getter for: Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/slice/SliceClientPermissions;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "path"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 286
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->encodeSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    # getter for: Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/slice/SliceClientPermissions;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "path"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_32

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 289
    .end local v1    # "i":I
    :cond_30
    monitor-exit p0

    return-void

    .line 282
    .end local v0    # "N":I
    .end local p1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_32
    move-exception p1

    monitor-exit p0

    .line 282
    .end local p0    # "this":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    throw p1
.end method
