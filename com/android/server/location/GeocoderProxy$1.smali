.class Lcom/android/server/location/GeocoderProxy$1;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeocoderProxy;

.field final synthetic val$addrs:Ljava/util/List;

.field final synthetic val$latitude:D

.field final synthetic val$longitude:D

.field final synthetic val$maxResults:I

.field final synthetic val$params:Landroid/location/GeocoderParams;

.field final synthetic val$result:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeocoderProxy;[Ljava/lang/String;DDILandroid/location/GeocoderParams;Ljava/util/List;)V
    .registers 10
    .param p1, "this$0"    # Lcom/android/server/location/GeocoderProxy;

    .line 74
    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    iput-object p2, p0, Lcom/android/server/location/GeocoderProxy$1;->val$result:[Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/location/GeocoderProxy$1;->val$latitude:D

    iput-wide p5, p0, Lcom/android/server/location/GeocoderProxy$1;->val$longitude:D

    iput p7, p0, Lcom/android/server/location/GeocoderProxy$1;->val$maxResults:I

    iput-object p8, p0, Lcom/android/server/location/GeocoderProxy$1;->val$params:Landroid/location/GeocoderParams;

    iput-object p9, p0, Lcom/android/server/location/GeocoderProxy$1;->val$addrs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .registers 12
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 77
    invoke-static {p1}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v0

    .line 79
    .local v0, "provider":Landroid/location/IGeocodeProvider;
    :try_start_4
    iget-object v8, p0, Lcom/android/server/location/GeocoderProxy$1;->val$result:[Ljava/lang/String;

    const/4 v9, 0x0

    iget-wide v1, p0, Lcom/android/server/location/GeocoderProxy$1;->val$latitude:D

    iget-wide v3, p0, Lcom/android/server/location/GeocoderProxy$1;->val$longitude:D

    iget v5, p0, Lcom/android/server/location/GeocoderProxy$1;->val$maxResults:I

    iget-object v6, p0, Lcom/android/server/location/GeocoderProxy$1;->val$params:Landroid/location/GeocoderParams;

    iget-object v7, p0, Lcom/android/server/location/GeocoderProxy$1;->val$addrs:Ljava/util/List;

    invoke-interface/range {v0 .. v7}, Landroid/location/IGeocodeProvider;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v9
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18

    .line 83
    goto :goto_1e

    .line 81
    :catch_18
    move-exception v1

    .line 82
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "GeocoderProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method
