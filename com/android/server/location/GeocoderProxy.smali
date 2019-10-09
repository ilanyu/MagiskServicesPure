.class public Lcom/android/server/location/GeocoderProxy;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.GeocodeProvider"

.field private static final TAG:Ljava/lang/String; = "GeocoderProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;IIILandroid/os/Handler;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlaySwitchResId"    # I
    .param p3, "defaultServicePackageNameResId"    # I
    .param p4, "initialPackageNamesResId"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy;->mContext:Landroid/content/Context;

    .line 59
    new-instance v9, Lcom/android/server/ServiceWatcher;

    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy;->mContext:Landroid/content/Context;

    const-string v2, "GeocoderProxy"

    const-string v3, "com.android.location.service.GeocodeProvider"

    const/4 v7, 0x0

    move-object v0, v9

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 61
    return-void
.end method

.method private bind()Z
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v0

    return v0
.end method

.method public static createAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "overlaySwitchResId"    # I
    .param p2, "defaultServicePackageNameResId"    # I
    .param p3, "initialPackageNamesResId"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .line 45
    new-instance v6, Lcom/android/server/location/GeocoderProxy;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GeocoderProxy;-><init>(Landroid/content/Context;IIILandroid/os/Handler;)V

    .line 47
    .local v0, "proxy":Lcom/android/server/location/GeocoderProxy;
    invoke-direct {v0}, Lcom/android/server/location/GeocoderProxy;->bind()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 48
    return-object v0

    .line 50
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getConnectedPackageName()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 22
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 73
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const-string v0, "Service not Available"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "result":[Ljava/lang/String;
    move-object v11, p0

    iget-object v12, v11, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v13, Lcom/android/server/location/GeocoderProxy$1;

    move-object v1, v13

    move-object v2, v11

    move-object v3, v0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/android/server/location/GeocoderProxy$1;-><init>(Lcom/android/server/location/GeocoderProxy;[Ljava/lang/String;DDILandroid/location/GeocoderParams;Ljava/util/List;)V

    invoke-virtual {v12, v13}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    .line 86
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 31
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 93
    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const-string v0, "Service not Available"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "result":[Ljava/lang/String;
    move-object/from16 v15, p0

    iget-object v14, v15, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v13, Lcom/android/server/location/GeocoderProxy$2;

    move-object v1, v13

    move-object v2, v15

    move-object v3, v0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-object/from16 v16, v0

    move-object v0, v13

    move/from16 v13, p10

    .end local v0    # "result":[Ljava/lang/String;
    .local v16, "result":[Ljava/lang/String;
    move-object/from16 v17, v0

    move-object v0, v14

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v1 .. v15}, Lcom/android/server/location/GeocoderProxy$2;-><init>(Lcom/android/server/location/GeocoderProxy;[Ljava/lang/String;Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)V

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    .line 107
    const/4 v0, 0x0

    aget-object v0, v16, v0

    return-object v0
.end method
