.class Lcom/android/server/location/GeocoderProxy$2;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeocoderProxy;

.field final synthetic val$addrs:Ljava/util/List;

.field final synthetic val$locationName:Ljava/lang/String;

.field final synthetic val$lowerLeftLatitude:D

.field final synthetic val$lowerLeftLongitude:D

.field final synthetic val$maxResults:I

.field final synthetic val$params:Landroid/location/GeocoderParams;

.field final synthetic val$result:[Ljava/lang/String;

.field final synthetic val$upperRightLatitude:D

.field final synthetic val$upperRightLongitude:D


# direct methods
.method constructor <init>(Lcom/android/server/location/GeocoderProxy;[Ljava/lang/String;Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)V
    .registers 15
    .param p1, "this$0"    # Lcom/android/server/location/GeocoderProxy;

    .line 94
    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$2;->this$0:Lcom/android/server/location/GeocoderProxy;

    iput-object p2, p0, Lcom/android/server/location/GeocoderProxy$2;->val$result:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/location/GeocoderProxy$2;->val$locationName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLatitude:D

    iput-wide p6, p0, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLongitude:D

    iput-wide p8, p0, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLatitude:D

    iput-wide p10, p0, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLongitude:D

    iput p12, p0, Lcom/android/server/location/GeocoderProxy$2;->val$maxResults:I

    iput-object p13, p0, Lcom/android/server/location/GeocoderProxy$2;->val$params:Landroid/location/GeocoderParams;

    iput-object p14, p0, Lcom/android/server/location/GeocoderProxy$2;->val$addrs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .registers 18
    .param p1, "binder"    # Landroid/os/IBinder;

    move-object/from16 v1, p0

    .line 97
    invoke-static/range {p1 .. p1}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v2

    .line 99
    .local v2, "provider":Landroid/location/IGeocodeProvider;
    :try_start_6
    iget-object v0, v1, Lcom/android/server/location/GeocoderProxy$2;->val$result:[Ljava/lang/String;

    const/4 v15, 0x0

    iget-object v3, v1, Lcom/android/server/location/GeocoderProxy$2;->val$locationName:Ljava/lang/String;

    iget-wide v4, v1, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLatitude:D

    iget-wide v6, v1, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLongitude:D

    iget-wide v8, v1, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLatitude:D

    iget-wide v10, v1, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLongitude:D

    iget v12, v1, Lcom/android/server/location/GeocoderProxy$2;->val$maxResults:I

    iget-object v13, v1, Lcom/android/server/location/GeocoderProxy$2;->val$params:Landroid/location/GeocoderParams;

    iget-object v14, v1, Lcom/android/server/location/GeocoderProxy$2;->val$addrs:Ljava/util/List;

    invoke-interface/range {v2 .. v14}, Landroid/location/IGeocodeProvider;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v15
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1f} :catch_20

    .line 104
    goto :goto_26

    .line 102
    :catch_20
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "GeocoderProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method
