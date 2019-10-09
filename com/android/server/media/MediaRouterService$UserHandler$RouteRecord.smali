.class final Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
.super Ljava/lang/Object;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService$UserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RouteRecord"
.end annotation


# instance fields
.field private mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

.field private final mDescriptorId:Ljava/lang/String;

.field private mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

.field private final mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

.field private final mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "providerRecord"    # Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    .param p2, "descriptorId"    # Ljava/lang/String;
    .param p3, "uniqueId"    # Ljava/lang/String;

    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 1367
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    .line 1368
    new-instance v0, Landroid/media/MediaRouterClientState$RouteInfo;

    invoke-direct {v0, p3}, Landroid/media/MediaRouterClientState$RouteInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 1369
    return-void
.end method

.method private static computeDescription(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;
    .registers 3
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1494
    iget-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    .line 1495
    .local v0, "description":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    move-object v1, v0

    :goto_b
    return-object v1
.end method

.method private static computeEnabled(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z
    .registers 2
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1505
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    packed-switch v0, :pswitch_data_a

    .line 1511
    const/4 v0, 0x0

    return v0

    .line 1509
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private static computeName(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1490
    iget-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private static computePlaybackStream(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 2
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1537
    const/4 v0, 0x3

    return v0
.end method

.method private static computePlaybackType(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 2
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1533
    const/4 v0, 0x1

    return v0
.end method

.method private static computePresentationDisplayId(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 3
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1570
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    .line 1571
    .local v0, "displayId":I
    if-gez v0, :cond_6

    const/4 v1, -0x1

    goto :goto_7

    :cond_6
    move v1, v0

    :goto_7
    return v1
.end method

.method private static computeStatusCode(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 2
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1516
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    packed-switch v0, :pswitch_data_12

    .line 1528
    const/4 v0, 0x0

    return v0

    .line 1526
    :pswitch_7
    const/4 v0, 0x6

    return v0

    .line 1524
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 1520
    :pswitch_b
    const/4 v0, 0x3

    return v0

    .line 1522
    :pswitch_d
    const/4 v0, 0x5

    return v0

    .line 1518
    :pswitch_f
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method private static computeSupportedTypes(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 2
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1499
    const/4 v0, 0x7

    return v0
.end method

.method private static computeVolume(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 4
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1541
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    .line 1542
    .local v0, "volume":I
    iget v1, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    .line 1543
    .local v1, "volumeMax":I
    if-gez v0, :cond_8

    .line 1544
    const/4 v2, 0x0

    return v2

    .line 1545
    :cond_8
    if-le v0, v1, :cond_b

    .line 1546
    return v1

    .line 1548
    :cond_b
    return v0
.end method

.method private static computeVolumeHandling(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 3
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1557
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    .line 1558
    .local v0, "volumeHandling":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 1563
    const/4 v1, 0x0

    return v1

    .line 1560
    :cond_7
    return v1
.end method

.method private static computeVolumeMax(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 3
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1552
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    .line 1553
    .local v0, "volumeMax":I
    if-lez v0, :cond_6

    move v1, v0

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1478
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mMutableInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mDescriptorId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mDescriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    return-void
.end method

.method public getDescriptorId()Ljava/lang/String;
    .registers 2

    .line 1380
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Landroid/media/MediaRouterClientState$RouteInfo;
    .registers 3

    .line 1388
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    if-nez v0, :cond_d

    .line 1389
    new-instance v0, Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    invoke-direct {v0, v1}, Landroid/media/MediaRouterClientState$RouteInfo;-><init>(Landroid/media/MediaRouterClientState$RouteInfo;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 1391
    :cond_d
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    return-object v0
.end method

.method public getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;
    .registers 2

    .line 1372
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v0

    return-object v0
.end method

.method public getProviderRecord()Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    .registers 2

    .line 1376
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .line 1403
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .registers 2

    .line 1384
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 1399
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-boolean v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 1395
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Route "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v1, v1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v1, v1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z
    .registers 15
    .param p1, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1407
    const/4 v0, 0x0

    .line 1408
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    if-eq v1, p1, :cond_b6

    .line 1409
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1410
    if-eqz p1, :cond_b6

    .line 1411
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeName(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1412
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v2, v2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1413
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput-object v1, v2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 1414
    const/4 v0, 0x1

    .line 1416
    :cond_1c
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeDescription(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;

    move-result-object v2

    .line 1417
    .local v2, "description":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1418
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput-object v2, v3, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 1419
    const/4 v0, 0x1

    .line 1421
    :cond_2f
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeSupportedTypes(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v3

    .line 1422
    .local v3, "supportedTypes":I
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v4, v4, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    if-eq v4, v3, :cond_3e

    .line 1423
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v3, v4, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    .line 1424
    const/4 v0, 0x1

    .line 1426
    :cond_3e
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeEnabled(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    move-result v4

    .line 1427
    .local v4, "enabled":Z
    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-boolean v5, v5, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    if-eq v5, v4, :cond_4d

    .line 1428
    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput-boolean v4, v5, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 1429
    const/4 v0, 0x1

    .line 1431
    :cond_4d
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeStatusCode(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v5

    .line 1432
    .local v5, "statusCode":I
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v6, v6, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    if-eq v6, v5, :cond_5c

    .line 1433
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v5, v6, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 1434
    const/4 v0, 0x1

    .line 1436
    :cond_5c
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computePlaybackType(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v6

    .line 1437
    .local v6, "playbackType":I
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v7, v7, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    if-eq v7, v6, :cond_6b

    .line 1438
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v6, v7, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 1439
    const/4 v0, 0x1

    .line 1441
    :cond_6b
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computePlaybackStream(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v7

    .line 1442
    .local v7, "playbackStream":I
    iget-object v8, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v8, v8, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    if-eq v8, v7, :cond_7a

    .line 1443
    iget-object v8, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v7, v8, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 1444
    const/4 v0, 0x1

    .line 1446
    :cond_7a
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeVolume(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v8

    .line 1447
    .local v8, "volume":I
    iget-object v9, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v9, v9, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    if-eq v9, v8, :cond_89

    .line 1448
    iget-object v9, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v8, v9, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 1449
    const/4 v0, 0x1

    .line 1451
    :cond_89
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeVolumeMax(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v9

    .line 1452
    .local v9, "volumeMax":I
    iget-object v10, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v10, v10, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    if-eq v10, v9, :cond_98

    .line 1453
    iget-object v10, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v9, v10, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 1454
    const/4 v0, 0x1

    .line 1456
    :cond_98
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeVolumeHandling(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v10

    .line 1457
    .local v10, "volumeHandling":I
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v11, v11, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    if-eq v11, v10, :cond_a7

    .line 1458
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v10, v11, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 1459
    const/4 v0, 0x1

    .line 1461
    :cond_a7
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computePresentationDisplayId(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v11

    .line 1462
    .local v11, "presentationDisplayId":I
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v12, v12, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    if-eq v12, v11, :cond_b6

    .line 1463
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput v11, v12, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 1464
    const/4 v0, 0x1

    .line 1468
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "supportedTypes":I
    .end local v4    # "enabled":Z
    .end local v5    # "statusCode":I
    .end local v6    # "playbackType":I
    .end local v7    # "playbackStream":I
    .end local v8    # "volume":I
    .end local v9    # "volumeMax":I
    .end local v10    # "volumeHandling":I
    .end local v11    # "presentationDisplayId":I
    :cond_b6
    if-eqz v0, :cond_bb

    .line 1469
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 1471
    :cond_bb
    return v0
.end method
