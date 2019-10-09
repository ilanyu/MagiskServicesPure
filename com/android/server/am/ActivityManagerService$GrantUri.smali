.class public Lcom/android/server/am/ActivityManagerService$GrantUri;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GrantUri"
.end annotation


# instance fields
.field public prefix:Z

.field public final sourceUserId:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Z)V
    .registers 4
    .param p1, "sourceUserId"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "prefix"    # Z

    .line 1283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1284
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    .line 1285
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    .line 1286
    iput-boolean p3, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    .line 1287
    return-void
.end method

.method public static resolve(ILandroid/net/Uri;)Lcom/android/server/am/ActivityManagerService$GrantUri;
    .registers 6
    .param p0, "defaultSourceUserHandle"    # I
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1329
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 1330
    new-instance v0, Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v2

    .line 1331
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/am/ActivityManagerService$GrantUri;-><init>(ILandroid/net/Uri;Z)V

    .line 1330
    return-object v0

    .line 1333
    :cond_1b
    new-instance v0, Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/am/ActivityManagerService$GrantUri;-><init>(ILandroid/net/Uri;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1300
    instance-of v0, p1, Lcom/android/server/am/ActivityManagerService$GrantUri;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 1301
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ActivityManagerService$GrantUri;

    .line 1302
    .local v0, "other":Lcom/android/server/am/ActivityManagerService$GrantUri;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    iget v3, v0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    if-ne v2, v3, :cond_20

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    if-ne v2, v3, :cond_20

    const/4 v1, 0x1

    nop

    :cond_20
    return v1

    .line 1305
    .end local v0    # "other":Lcom/android/server/am/ActivityManagerService$GrantUri;
    :cond_21
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 1291
    const/4 v0, 0x1

    .line 1292
    .local v0, "hashCode":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    add-int/2addr v2, v3

    .line 1293
    .end local v0    # "hashCode":I
    .local v2, "hashCode":I
    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 1294
    .end local v2    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/2addr v1, v0

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    if-eqz v2, :cond_19

    const/16 v2, 0x4cf

    goto :goto_1b

    :cond_19
    const/16 v2, 0x4d5

    :goto_1b
    add-int/2addr v1, v2

    .line 1295
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    return v1
.end method

.method public toSafeString()Ljava/lang/String;
    .registers 4

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, "result":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    if-eqz v1, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [prefix]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1318
    :cond_36
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1311
    .local v0, "result":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    if-eqz v1, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [prefix]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1312
    :cond_36
    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1322
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1323
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1324
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1325
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1326
    return-void
.end method
