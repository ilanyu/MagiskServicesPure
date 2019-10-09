.class public Lcom/android/server/slice/SliceClientPermissions;
.super Ljava/lang/Object;
.source "SliceClientPermissions.java"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker;
.implements Lcom/android/server/slice/DirtyTracker$Persistable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    }
.end annotation


# static fields
.field private static final ATTR_AUTHORITY:Ljava/lang/String; = "authority"

.field private static final ATTR_FULL_ACCESS:Ljava/lang/String; = "fullAccess"

.field private static final ATTR_PKG:Ljava/lang/String; = "pkg"

.field private static final NAMESPACE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SliceClientPermissions"

.field private static final TAG_AUTHORITY:Ljava/lang/String; = "authority"

.field static final TAG_CLIENT:Ljava/lang/String; = "client"

.field private static final TAG_PATH:Ljava/lang/String; = "path"


# instance fields
.field private final mAuths:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/slice/SlicePermissionManager$PkgUser;",
            "Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;",
            ">;"
        }
    .end annotation
.end field

.field private mHasFullAccess:Z

.field private final mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

.field private final mTracker:Lcom/android/server/slice/DirtyTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V
    .registers 4
    .param p1, "pkg"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .param p2, "tracker"    # Lcom/android/server/slice/DirtyTracker;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 60
    iput-object p1, p0, Lcom/android/server/slice/SliceClientPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 61
    iput-object p2, p0, Lcom/android/server/slice/SliceClientPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 62
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    return-object v0
.end method

.method public static createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;
    .registers 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tracker"    # Lcom/android/server/slice/DirtyTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9c

    const-string v0, "client"

    .line 162
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_9c

    .line 165
    :cond_15
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 166
    .local v0, "depth":I
    new-instance v2, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    sget-object v3, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v4, "pkg"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "pkgUser":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    new-instance v3, Lcom/android/server/slice/SliceClientPermissions;

    invoke-direct {v3, v2, p1}, Lcom/android/server/slice/SliceClientPermissions;-><init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 168
    .local v3, "provider":Lcom/android/server/slice/SliceClientPermissions;
    sget-object v4, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v5, "fullAccess"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "fullAccess":Ljava/lang/String;
    if-nez v4, :cond_38

    .line 170
    const-string v4, "0"

    .line 172
    :cond_38
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_40

    const/4 v5, 0x1

    goto :goto_41

    :cond_40
    const/4 v5, 0x0

    :goto_41
    iput-boolean v5, v3, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    .line 173
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 175
    :goto_46
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_9b

    .line 176
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v1, :cond_97

    const-string v5, "authority"

    .line 177
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 179
    :try_start_5e
    new-instance v5, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    sget-object v6, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v7, "pkg"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;)V

    .line 180
    .local v5, "pkg":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    new-instance v6, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    sget-object v7, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v8, "authority"

    .line 181
    invoke-interface {p0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5, v3}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;-><init>(Ljava/lang/String;Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 182
    .local v6, "authority":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    invoke-virtual {v6, p0}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->readFrom(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 183
    iget-object v7, v3, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-virtual {v6}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->getUserId()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_8e} :catch_8f

    .line 187
    .end local v5    # "pkg":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .end local v6    # "authority":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    goto :goto_97

    .line 185
    :catch_8f
    move-exception v5

    .line 186
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "SliceClientPermissions"

    const-string v7, "Couldn\'t read PkgUser"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_97
    :goto_97
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_46

    .line 192
    :cond_9b
    return-object v3

    .line 163
    .end local v0    # "depth":I
    .end local v2    # "pkgUser":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .end local v3    # "provider":Lcom/android/server/slice/SliceClientPermissions;
    .end local v4    # "fullAccess":Ljava/lang/String;
    :cond_9c
    :goto_9c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_0
.end method

.method public static getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;
    .registers 5
    .param p0, "pkg"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 196
    const-string v0, "client_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 124
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    .line 125
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 126
    invoke-virtual {p0, p0}, Lcom/android/server/slice/SliceClientPermissions;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 127
    return-void
.end method

.method public declared-synchronized getAuthorities()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/slice/SliceClientPermissions;
    throw v0
.end method

.method public declared-synchronized getAuthority(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    .registers 3
    .param p1, "authority"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .end local p1    # "authority":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    :catchall_b
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/slice/SliceClientPermissions;
    throw p1
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-static {v0}, Lcom/android/server/slice/SliceClientPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getOrCreateAuthority(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    .registers 6
    .param p1, "authority"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .param p2, "provider"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 74
    .local v0, "ret":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    if-nez v0, :cond_1d

    .line 75
    new-instance v1, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    invoke-virtual {p1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2, p0}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;-><init>(Ljava/lang/String;Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    move-object v0, v1

    .line 76
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SliceClientPermissions;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 79
    :cond_1d
    monitor-exit p0

    return-object v0

    .line 72
    .end local v0    # "ret":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    .end local p1    # "authority":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .end local p2    # "provider":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    :catchall_1f
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/slice/SliceClientPermissions;
    throw p1
.end method

.method public getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    return-object v0
.end method

.method public grantUri(Landroid/net/Uri;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "providerPkg"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 109
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 110
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->getUserId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 109
    invoke-virtual {p0, v0, p2}, Lcom/android/server/slice/SliceClientPermissions;->getOrCreateAuthority(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    move-result-object v0

    .line 112
    .local v0, "authority":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->addPath(Ljava/util/List;)V

    .line 113
    return-void
.end method

.method public hasFullAccess()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    return v0
.end method

.method public declared-synchronized hasPermission(Landroid/net/Uri;I)Z
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    monitor-enter p0

    .line 103
    :try_start_1
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2d

    const/4 v1, 0x0

    if-nez v0, :cond_10

    monitor-exit p0

    return v1

    .line 104
    :cond_10
    :try_start_10
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/slice/SliceClientPermissions;->getAuthority(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    move-result-object v0

    .line 105
    .local v0, "authority":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->hasPermission(Ljava/util/List;)Z

    move-result v2
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2d

    if-eqz v2, :cond_2b

    const/4 v1, 0x1

    nop

    :cond_2b
    monitor-exit p0

    return v1

    .line 102
    .end local v0    # "authority":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "userId":I
    :catchall_2d
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/slice/SliceClientPermissions;
    throw p1
.end method

.method public onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .registers 3
    .param p1, "obj"    # Lcom/android/server/slice/DirtyTracker$Persistable;

    .line 131
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {v0, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 132
    return-void
.end method

.method public removeAuthority(Ljava/lang/String;I)V
    .registers 5
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 97
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v1, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 98
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {v0, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 100
    :cond_12
    return-void
.end method

.method public revokeUri(Landroid/net/Uri;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "providerPkg"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 116
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 117
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->getUserId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 116
    invoke-virtual {p0, v0, p2}, Lcom/android/server/slice/SliceClientPermissions;->getOrCreateAuthority(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    move-result-object v0

    .line 119
    .local v0, "authority":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->removePath(Ljava/util/List;)V

    .line 120
    return-void
.end method

.method public setHasFullAccess(Z)V
    .registers 3
    .param p1, "hasFullAccess"    # Z

    .line 91
    iget-boolean v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 92
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    .line 93
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {v0, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 94
    return-void
.end method

.method public declared-synchronized writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 140
    :try_start_1
    sget-object v0, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v1, "client"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    sget-object v0, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "pkg"

    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-virtual {v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    sget-object v0, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v1, "fullAccess"

    iget-boolean v2, p0, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    if-eqz v2, :cond_21

    const-string v2, "1"

    goto :goto_23

    :cond_21
    const-string v2, "0"

    :goto_23
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 145
    .local v0, "N":I
    const/4 v1, 0x0

    .line 145
    .local v1, "i":I
    :goto_2d
    if-ge v1, v0, :cond_76

    .line 146
    sget-object v2, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v3, "authority"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    sget-object v2, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v3, "authority"

    iget-object v4, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    # getter for: Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->access$000(Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    sget-object v2, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v3, "pkg"

    iget-object v4, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    # getter for: Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    invoke-static {v4}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->access$100(Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;)Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    invoke-virtual {v2, p1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 152
    sget-object v2, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v3, "authority"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 155
    .end local v1    # "i":I
    :cond_76
    sget-object v1, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v2, "client"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7d
    .catchall {:try_start_1 .. :try_end_7d} :catchall_7f

    .line 156
    monitor-exit p0

    return-void

    .line 139
    .end local v0    # "N":I
    .end local p1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_7f
    move-exception p1

    monitor-exit p0

    .line 139
    .end local p0    # "this":Lcom/android/server/slice/SliceClientPermissions;
    throw p1
.end method
