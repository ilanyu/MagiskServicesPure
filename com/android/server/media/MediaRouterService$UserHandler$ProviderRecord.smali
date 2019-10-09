.class final Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
.super Ljava/lang/Object;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService$UserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProviderRecord"
.end annotation


# instance fields
.field private mDescriptor:Landroid/media/RemoteDisplayState;

.field private final mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

.field private final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniquePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 1238
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    .line 1240
    return-void
.end method

.method private assignRouteUniqueId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "descriptorId"    # Ljava/lang/String;

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findRouteByDescriptorId(Ljava/lang/String;)I
    .registers 6
    .param p1, "descriptorId"    # Ljava/lang/String;

    .line 1321
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1322
    .local v0, "routeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 1323
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1324
    .local v2, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getDescriptorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1325
    return v1

    .line 1322
    .end local v2    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1328
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public appendClientState(Landroid/media/MediaRouterClientState;)V
    .registers 6
    .param p1, "state"    # Landroid/media/MediaRouterClientState;

    .line 1303
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1304
    .local v0, "routeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 1305
    iget-object v2, p1, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getInfo()Landroid/media/MediaRouterClientState$RouteInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1307
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1335
    .local v0, "indent":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1337
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1338
    .local v1, "routeCount":I
    if-eqz v1, :cond_41

    .line 1339
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    if-ge v2, v1, :cond_55

    .line 1340
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1339
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 1343
    .end local v2    # "i":I
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<no routes>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1345
    :cond_55
    return-void
.end method

.method public findRouteByUniqueId(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .registers 6
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 1310
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1311
    .local v0, "routeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 1312
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1313
    .local v2, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1314
    return-object v2

    .line 1311
    .end local v2    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1317
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;
    .registers 2

    .line 1243
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    return-object v0
.end method

.method public getUniquePrefix()Ljava/lang/String;
    .registers 2

    .line 1247
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDescriptor(Landroid/media/RemoteDisplayState;)Z
    .registers 14
    .param p1, "descriptor"    # Landroid/media/RemoteDisplayState;

    .line 1251
    const/4 v0, 0x0

    .line 1252
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    if-eq v1, p1, :cond_a7

    .line 1253
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    .line 1257
    const/4 v1, 0x0

    .line 1258
    .local v1, "targetIndex":I
    if-eqz p1, :cond_8d

    .line 1259
    invoke-virtual {p1}, Landroid/media/RemoteDisplayState;->isValid()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 1260
    iget-object v2, p1, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    .line 1261
    .local v2, "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/RemoteDisplayState$RemoteDisplayInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1262
    .local v3, "routeCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, v3, :cond_70

    .line 1263
    nop

    .line 1264
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1265
    .local v5, "routeDescriptor":Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
    iget-object v6, v5, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    .line 1266
    .local v6, "descriptorId":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->findRouteByDescriptorId(Ljava/lang/String;)I

    move-result v7

    .line 1267
    .local v7, "sourceIndex":I
    if-gez v7, :cond_3f

    .line 1269
    invoke-direct {p0, v6}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->assignRouteUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1270
    .local v8, "uniqueId":Ljava/lang/String;
    new-instance v9, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-direct {v9, p0, v6, v8}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;-><init>(Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    .local v9, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    iget-object v10, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    add-int/lit8 v11, v1, 0x1

    .local v11, "targetIndex":I
    invoke-virtual {v10, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1273
    .end local v1    # "targetIndex":I
    invoke-virtual {v9, v5}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    .line 1274
    const/4 v0, 0x1

    .line 1275
    .end local v8    # "uniqueId":Ljava/lang/String;
    .end local v9    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    nop

    .line 1262
    move v1, v11

    goto :goto_6d

    .line 1275
    .end local v11    # "targetIndex":I
    .restart local v1    # "targetIndex":I
    :cond_3f
    if-ge v7, v1, :cond_58

    .line 1277
    const-string v8, "MediaRouterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring route descriptor with duplicate id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 1281
    :cond_58
    iget-object v8, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1282
    .local v8, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    iget-object v9, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    add-int/lit8 v10, v1, 0x1

    .local v10, "targetIndex":I
    invoke-static {v9, v7, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 1283
    .end local v1    # "targetIndex":I
    invoke-virtual {v8, v5}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1262
    .end local v5    # "routeDescriptor":Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
    .end local v6    # "descriptorId":Ljava/lang/String;
    .end local v7    # "sourceIndex":I
    .end local v8    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    move v1, v10

    .end local v10    # "targetIndex":I
    .restart local v1    # "targetIndex":I
    :goto_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1286
    .end local v2    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/RemoteDisplayState$RemoteDisplayInfo;>;"
    .end local v3    # "routeCount":I
    .end local v4    # "i":I
    :cond_70
    goto :goto_8d

    .line 1287
    :cond_71
    const-string v2, "MediaRouterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring invalid descriptor from media route provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1288
    invoke-virtual {v4}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1287
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_8d
    :goto_8d
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_95
    if-lt v2, v1, :cond_a7

    .line 1294
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1295
    .local v3, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    .line 1296
    const/4 v0, 0x1

    .line 1293
    .end local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_95

    .line 1299
    .end local v1    # "targetIndex":I
    .end local v2    # "i":I
    :cond_a7
    return v0
.end method
