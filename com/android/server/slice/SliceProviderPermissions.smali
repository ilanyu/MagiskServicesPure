.class public Lcom/android/server/slice/SliceProviderPermissions;
.super Ljava/lang/Object;
.source "SliceProviderPermissions.java"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker;
.implements Lcom/android/server/slice/DirtyTracker$Persistable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    }
.end annotation


# static fields
.field private static final ATTR_AUTHORITY:Ljava/lang/String; = "authority"

.field private static final ATTR_PKG:Ljava/lang/String; = "pkg"

.field private static final NAMESPACE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SliceProviderPermissions"

.field private static final TAG_AUTHORITY:Ljava/lang/String; = "authority"

.field private static final TAG_PKG:Ljava/lang/String; = "pkg"

.field static final TAG_PROVIDER:Ljava/lang/String; = "provider"


# instance fields
.field private final mAuths:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

.field private final mTracker:Lcom/android/server/slice/DirtyTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V
    .registers 4
    .param p1, "pkg"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .param p2, "tracker"    # Lcom/android/server/slice/DirtyTracker;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 51
    iput-object p1, p0, Lcom/android/server/slice/SliceProviderPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 52
    iput-object p2, p0, Lcom/android/server/slice/SliceProviderPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 53
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 34
    sget-object v0, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    return-object v0
.end method

.method public static createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;
    .registers 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tracker"    # Lcom/android/server/slice/DirtyTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6e

    const-string/jumbo v0, "provider"

    .line 104
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_6e

    .line 107
    :cond_15
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 108
    .local v0, "depth":I
    new-instance v2, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    sget-object v3, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v4, "pkg"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "pkgUser":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    new-instance v3, Lcom/android/server/slice/SliceProviderPermissions;

    invoke-direct {v3, v2, p1}, Lcom/android/server/slice/SliceProviderPermissions;-><init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 110
    .local v3, "provider":Lcom/android/server/slice/SliceProviderPermissions;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 112
    :goto_2f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_6d

    .line 113
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v1, :cond_69

    const-string v4, "authority"

    .line 114
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 116
    :try_start_47
    new-instance v4, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    sget-object v5, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v6, "authority"

    .line 117
    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;-><init>(Ljava/lang/String;Lcom/android/server/slice/DirtyTracker;)V

    .line 118
    .local v4, "authority":Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    invoke-virtual {v4, p0}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->readFrom(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 119
    iget-object v5, v3, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_60} :catch_61

    .line 122
    .end local v4    # "authority":Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    goto :goto_69

    .line 120
    :catch_61
    move-exception v4

    .line 121
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "SliceProviderPermissions"

    const-string v6, "Couldn\'t read PkgUser"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_69
    :goto_69
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2f

    .line 127
    :cond_6d
    return-object v3

    .line 105
    .end local v0    # "depth":I
    .end local v2    # "pkgUser":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .end local v3    # "provider":Lcom/android/server/slice/SliceProviderPermissions;
    :cond_6e
    :goto_6e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0
.end method

.method public static getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;
    .registers 5
    .param p0, "pkg"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 131
    const-string/jumbo v0, "provider_%s"

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
.method public declared-synchronized getAuthorities()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 60
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

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

    .end local p0    # "this":Lcom/android/server/slice/SliceProviderPermissions;
    throw v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-static {v0}, Lcom/android/server/slice/SliceProviderPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getOrCreateAuthority(Ljava/lang/String;)Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    .registers 4
    .param p1, "authority"    # Ljava/lang/String;

    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 65
    .local v0, "ret":Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    if-nez v0, :cond_19

    .line 66
    new-instance v1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    invoke-direct {v1, p1, p0}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;-><init>(Ljava/lang/String;Lcom/android/server/slice/DirtyTracker;)V

    move-object v0, v1

    .line 67
    iget-object v1, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SliceProviderPermissions;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 70
    :cond_19
    monitor-exit p0

    return-object v0

    .line 63
    .end local v0    # "ret":Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    .end local p1    # "authority":Ljava/lang/String;
    :catchall_1b
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/slice/SliceProviderPermissions;
    throw p1
.end method

.method public getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    return-object v0
.end method

.method public onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .registers 3
    .param p1, "obj"    # Lcom/android/server/slice/DirtyTracker$Persistable;

    .line 75
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {v0, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 76
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

    .line 84
    :try_start_1
    sget-object v0, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "provider"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    sget-object v0, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "pkg"

    iget-object v2, p0, Lcom/android/server/slice/SliceProviderPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-virtual {v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 88
    .local v0, "N":I
    const/4 v1, 0x0

    .line 88
    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_4f

    .line 89
    sget-object v2, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v3, "authority"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    sget-object v2, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v3, "authority"

    iget-object v4, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    # getter for: Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->access$000(Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    iget-object v2, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    invoke-virtual {v2, p1}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 94
    sget-object v2, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v3, "authority"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 97
    .end local v1    # "i":I
    :cond_4f
    sget-object v1, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "provider"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_59

    .line 98
    monitor-exit p0

    return-void

    .line 83
    .end local v0    # "N":I
    .end local p1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_59
    move-exception p1

    monitor-exit p0

    .line 83
    .end local p0    # "this":Lcom/android/server/slice/SliceProviderPermissions;
    throw p1
.end method
