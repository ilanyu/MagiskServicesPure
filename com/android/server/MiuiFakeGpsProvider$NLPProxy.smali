.class Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;
.super Ljava/lang/Object;
.source "MiuiFakeGpsProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiFakeGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NLPProxy"
.end annotation


# instance fields
.field private mProxyInterval:I

.field private mProxyRequested:Z

.field final synthetic this$0:Lcom/android/server/MiuiFakeGpsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/MiuiFakeGpsProvider;)V
    .registers 2

    .line 436
    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyRequested:Z

    .line 438
    iput p1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyInterval:I

    .line 439
    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .registers 3

    .line 477
    sget-boolean v0, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v0, :cond_b

    const-string v0, "MiuiGpsProvider"

    const-string v1, "cancelRequest"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_b
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MiuiFakeGpsProvider;->access$1000(Lcom/android/server/MiuiFakeGpsProvider;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 479
    .local v0, "manager":Landroid/location/LocationManager;
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 480
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyRequested:Z

    .line 481
    iput v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyInterval:I

    .line 482
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5
    .param p1, "location"    # Landroid/location/Location;

    .line 443
    sget-boolean v0, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v0, :cond_1a

    const-string v0, "MiuiGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get location from nlp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_1a
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;
    invoke-static {v0}, Lcom/android/server/MiuiFakeGpsProvider;->access$900(Lcom/android/server/MiuiFakeGpsProvider;)Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 445
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/MiuiFakeGpsProvider;->access$500(Lcom/android/server/MiuiFakeGpsProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 446
    :try_start_29
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;
    invoke-static {v1}, Lcom/android/server/MiuiFakeGpsProvider;->access$900(Lcom/android/server/MiuiFakeGpsProvider;)Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->setLocationLocked(Landroid/location/Location;)V

    .line 447
    monitor-exit v0

    goto :goto_37

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1

    .line 450
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MiuiFakeGpsProvider;->access$1000(Lcom/android/server/MiuiFakeGpsProvider;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 451
    .local v0, "manager":Landroid/location/LocationManager;
    sget-boolean v1, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v1, :cond_51

    const-string v1, "MiuiGpsProvider"

    const-string v2, "get loc and remove updates"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_51
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 453
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 459
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 457
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 455
    return-void
.end method

.method public requestLocation(I)V
    .registers 9
    .param p1, "interval"    # I

    .line 462
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyRequested:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyInterval:I

    if-eq v0, p1, :cond_43

    .line 463
    :cond_8
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MiuiFakeGpsProvider;->access$1000(Lcom/android/server/MiuiFakeGpsProvider;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 464
    .local v0, "manager":Landroid/location/LocationManager;
    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 465
    iget v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyInterval:I

    if-eq v1, p1, :cond_27

    .line 466
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 468
    :cond_27
    sget-boolean v1, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v1, :cond_33

    const-string v1, "MiuiGpsProvider"

    const-string/jumbo v2, "requestLocation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_33
    const-string/jumbo v2, "network"

    int-to-long v3, p1

    const/high16 v5, 0x41200000    # 10.0f

    move-object v1, v0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 470
    iput p1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyInterval:I

    .line 471
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyRequested:Z

    .line 474
    .end local v0    # "manager":Landroid/location/LocationManager;
    :cond_43
    return-void
.end method
