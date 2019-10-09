.class final Lcom/android/server/am/UriPermission;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UriPermission$Snapshot;,
        Lcom/android/server/am/UriPermission$PersistedTimeComparator;
    }
.end annotation


# static fields
.field private static final INVALID_TIME:J = -0x8000000000000000L

.field public static final STRENGTH_GLOBAL:I = 0x2

.field public static final STRENGTH_NONE:I = 0x0

.field public static final STRENGTH_OWNED:I = 0x1

.field public static final STRENGTH_PERSISTABLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UriPermission"


# instance fields
.field globalModeFlags:I

.field private mReadOwners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteOwners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field modeFlags:I

.field ownedModeFlags:I

.field persistableModeFlags:I

.field persistedCreateTime:J

.field persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field private stringName:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I

.field final targetUserId:I

.field final uri:Lcom/android/server/am/ActivityManagerService$GrantUri;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/am/ActivityManagerService$GrantUri;)V
    .registers 7
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "uri"    # Lcom/android/server/am/ActivityManagerService$GrantUri;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 68
    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 70
    iput v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 72
    iput v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 75
    iput v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 81
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 91
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/UriPermission;->targetUserId:I

    .line 92
    iput-object p1, p0, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    .line 94
    iput p3, p0, Lcom/android/server/am/UriPermission;->targetUid:I

    .line 95
    iput-object p4, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    .line 96
    return-void
.end method

.method private addReadOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .registers 3
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .line 257
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-nez v0, :cond_13

    .line 258
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 259
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 260
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 262
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 263
    invoke-virtual {p1, p0}, Lcom/android/server/am/UriPermissionOwner;->addReadPermission(Lcom/android/server/am/UriPermission;)V

    .line 265
    :cond_1e
    return-void
.end method

.method private addWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .registers 3
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .line 282
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-nez v0, :cond_13

    .line 283
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 284
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 285
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 287
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 288
    invoke-virtual {p1, p0}, Lcom/android/server/am/UriPermissionOwner;->addWritePermission(Lcom/android/server/am/UriPermission;)V

    .line 290
    :cond_1e
    return-void
.end method

.method private updateModeFlags()V
    .registers 5

    .line 99
    iget v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 100
    .local v0, "oldModeFlags":I
    iget v1, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    iget v2, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 102
    const-string v1, "UriPermission"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_75

    iget v1, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    if-eq v1, v0, :cond_75

    .line 103
    const-string v1, "UriPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is changing from 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " via calling UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " PID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 103
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    :cond_75
    return-void
.end method


# virtual methods
.method public buildGrantedUriPermission()Landroid/app/GrantedUriPermission;
    .registers 4

    .line 393
    new-instance v0, Landroid/app/GrantedUriPermission;

    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/GrantedUriPermission;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public buildPersistedPublicApiObject()Landroid/content/UriPermission;
    .registers 6

    .line 389
    new-instance v0, Landroid/content/UriPermission;

    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iget-wide v3, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 321
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "targetUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UriPermission;->targetUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sourcePkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " targetPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " owned=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " global=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " persistable=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " persisted=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    iget-wide v0, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ea

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " persistedCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    :cond_ea
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 337
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-eqz v0, :cond_124

    .line 338
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    const-string/jumbo v0, "readOwners:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_100
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_124

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermissionOwner;

    .line 341
    .local v1, "owner":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .end local v1    # "owner":Lcom/android/server/am/UriPermissionOwner;
    goto :goto_100

    .line 345
    :cond_124
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz v0, :cond_15b

    .line 346
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    const-string/jumbo v0, "writeOwners:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_137
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermissionOwner;

    .line 349
    .restart local v1    # "owner":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    .end local v1    # "owner":Lcom/android/server/am/UriPermissionOwner;
    goto :goto_137

    .line 353
    :cond_15b
    return-void
.end method

.method public getStrength(I)I
    .registers 4
    .param p1, "modeFlags"    # I

    .line 243
    const/4 v0, 0x3

    and-int/2addr p1, v0

    .line 245
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_8

    .line 246
    return v0

    .line 247
    :cond_8
    iget v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_f

    .line 248
    const/4 v0, 0x2

    return v0

    .line 249
    :cond_f
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_16

    .line 250
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method grantModes(ILcom/android/server/am/UriPermissionOwner;)V
    .registers 5
    .param p1, "modeFlags"    # I
    .param p2, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .line 128
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 129
    .local v0, "persistable":Z
    :goto_7
    and-int/lit8 p1, p1, 0x3

    .line 132
    if-eqz v0, :cond_10

    .line 133
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 136
    :cond_10
    if-nez p2, :cond_18

    .line 137
    iget v1, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    goto :goto_26

    .line 139
    :cond_18
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1f

    .line 140
    invoke-direct {p0, p2}, Lcom/android/server/am/UriPermission;->addReadOwner(Lcom/android/server/am/UriPermissionOwner;)V

    .line 142
    :cond_1f
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_26

    .line 143
    invoke-direct {p0, p2}, Lcom/android/server/am/UriPermission;->addWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V

    .line 147
    :cond_26
    :goto_26
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 148
    return-void
.end method

.method initPersistedModes(IJ)V
    .registers 4
    .param p1, "modeFlags"    # I
    .param p2, "createdTime"    # J

    .line 117
    and-int/lit8 p1, p1, 0x3

    .line 120
    iput p1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 121
    iput p1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 122
    iput-wide p2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 124
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 125
    return-void
.end method

.method releasePersistableModes(I)Z
    .registers 5
    .param p1, "modeFlags"    # I

    .line 176
    and-int/lit8 p1, p1, 0x3

    .line 179
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 181
    .local v0, "before":I
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 182
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 184
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-nez v1, :cond_18

    .line 185
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 188
    :cond_18
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 189
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v1, v0, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method removeReadOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .registers 5
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .line 271
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 272
    const-string v0, "UriPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown read owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_3a

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 276
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 277
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 279
    :cond_3a
    return-void
.end method

.method removeWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .registers 5
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .line 296
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 297
    const-string v0, "UriPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown write owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_3a

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 301
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 302
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 304
    :cond_3a
    return-void
.end method

.method revokeModes(IZ)Z
    .registers 10
    .param p1, "modeFlags"    # I
    .param p2, "includingOwners"    # Z

    .line 196
    and-int/lit8 v0, p1, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 197
    .local v0, "persistable":Z
    :goto_9
    and-int/lit8 p1, p1, 0x3

    .line 200
    iget v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 202
    .local v3, "before":I
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_4a

    .line 203
    if-eqz v0, :cond_20

    .line 204
    iget v4, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 205
    iget v4, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 207
    :cond_20
    iget v4, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 208
    iget-object v4, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-eqz v4, :cond_4a

    if-eqz p2, :cond_4a

    .line 209
    iget v4, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 210
    iget-object v4, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UriPermissionOwner;

    .line 211
    .local v6, "r":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {v6, p0}, Lcom/android/server/am/UriPermissionOwner;->removeReadPermission(Lcom/android/server/am/UriPermission;)V

    .line 212
    .end local v6    # "r":Lcom/android/server/am/UriPermissionOwner;
    goto :goto_38

    .line 213
    :cond_48
    iput-object v5, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 216
    :cond_4a
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_86

    .line 217
    if-eqz v0, :cond_5c

    .line 218
    iget v4, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 219
    iget v4, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 221
    :cond_5c
    iget v4, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 222
    iget-object v4, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz v4, :cond_86

    if-eqz p2, :cond_86

    .line 223
    iget v4, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 224
    iget-object v4, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UriPermissionOwner;

    .line 225
    .restart local v6    # "r":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {v6, p0}, Lcom/android/server/am/UriPermissionOwner;->removeWritePermission(Lcom/android/server/am/UriPermission;)V

    .line 226
    .end local v6    # "r":Lcom/android/server/am/UriPermissionOwner;
    goto :goto_74

    .line 227
    :cond_84
    iput-object v5, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 231
    :cond_86
    iget v4, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-nez v4, :cond_8e

    .line 232
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 235
    :cond_8e
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 236
    iget v4, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v4, v3, :cond_97

    move v1, v2

    nop

    :cond_97
    return v1
.end method

.method public snapshot()Lcom/android/server/am/UriPermission$Snapshot;
    .registers 3

    .line 385
    new-instance v0, Lcom/android/server/am/UriPermission$Snapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/UriPermission$Snapshot;-><init>(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission$1;)V

    return-object v0
.end method

.method takePersistableModes(I)Z
    .registers 6
    .param p1, "modeFlags"    # I

    .line 154
    and-int/lit8 p1, p1, 0x3

    .line 157
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eq v0, p1, :cond_36

    .line 158
    const-string v0, "UriPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested flags 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but only 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " are allowed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v1

    .line 164
    :cond_36
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 165
    .local v0, "before":I
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v3, p1

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 167
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eqz v2, :cond_4a

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 171
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 172
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v2, v0, :cond_53

    const/4 v1, 0x1

    nop

    :cond_53
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 309
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    return-object v0

    .line 311
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 312
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UriPermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    return-object v1
.end method
