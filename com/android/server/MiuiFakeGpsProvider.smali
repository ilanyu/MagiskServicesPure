.class public Lcom/android/server/MiuiFakeGpsProvider;
.super Ljava/lang/Object;
.source "MiuiFakeGpsProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;,
        Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;,
        Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;
    }
.end annotation


# static fields
.field private static final ACTION_FAKE_GPS_STOP:Ljava/lang/String; = "action.fakegps.stop"

.field private static final CANCEL_FAKE_REQUEST:I = 0x1

.field public static final D:Z

.field private static final MIN_INTERVAL:I = 0x3e8

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.powerkeeper"

.field private static final SET_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MiuiGpsProvider"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFakeGpsStatusListener:Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

.field private mFixIntervalMs:I

.field private mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLock:Ljava/lang/Object;

.field private mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mRptLocThreadRunning:Z

.field private mSingleShot:Z

.field private mStarted:Z

.field private mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

.field private sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    const-string v0, "MiuiGpsProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Lcom/android/server/LocationPolicyManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationManager"    # Landroid/location/ILocationManager;
    .param p3, "locationPolicy"    # Lcom/android/server/LocationPolicyManagerService;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 42
    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    .line 44
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mRptLocThreadRunning:Z

    .line 49
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v1, Lcom/android/server/MiuiFakeGpsProvider$1;

    invoke-direct {v1, p0}, Lcom/android/server/MiuiFakeGpsProvider$1;-><init>(Lcom/android/server/MiuiFakeGpsProvider;)V

    iput-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    .line 63
    new-instance v1, Lcom/android/server/MiuiFakeGpsProvider$2;

    invoke-direct {v1, p0}, Lcom/android/server/MiuiFakeGpsProvider$2;-><init>(Lcom/android/server/MiuiFakeGpsProvider;)V

    iput-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFakeGpsStatusListener:Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    .line 77
    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    .line 78
    new-instance v1, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;-><init>(Lcom/android/server/MiuiFakeGpsProvider;Lcom/android/server/MiuiFakeGpsProvider$1;)V

    iput-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    .line 79
    iput-object p2, p0, Lcom/android/server/MiuiFakeGpsProvider;->mILocationManager:Landroid/location/ILocationManager;

    .line 80
    iput-object p3, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    .line 81
    new-instance v0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    invoke-direct {v0, p0}, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;-><init>(Lcom/android/server/MiuiFakeGpsProvider;)V

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    .line 82
    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->registerFakeGpsStatus()V

    .line 83
    const-string v0, "MiuiGpsProvider"

    const-string v1, "create miui gps provider"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MiuiFakeGpsProvider;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;
    .param p1, "x1"    # Z

    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider;->changeProviderIfNecessary(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/MiuiFakeGpsProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;

    .line 29
    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->stopNavigating()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/MiuiFakeGpsProvider;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;

    .line 29
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/MiuiFakeGpsProvider;Lcom/android/internal/location/ProviderRequest;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderRequest;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/MiuiFakeGpsProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;

    .line 29
    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->cancelNlpLocationRequest()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/MiuiFakeGpsProvider;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;

    .line 29
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/MiuiFakeGpsProvider;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;
    .param p1, "x1"    # Z

    .line 29
    iput-boolean p1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mRptLocThreadRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/MiuiFakeGpsProvider;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider;->reportLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/MiuiFakeGpsProvider;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;

    .line 29
    iget v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/MiuiFakeGpsProvider;)Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;

    .line 29
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    return-object v0
.end method

.method private cancelNlpLocationRequest()V
    .registers 4

    .line 350
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 352
    .local v0, "manager":Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 353
    sget-boolean v1, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v1, :cond_1b

    const-string v1, "MiuiGpsProvider"

    const-string v2, "cancel miui gps request"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_1b
    return-void
.end method

.method private changeProviderIfNecessary(Z)V
    .registers 15
    .param p1, "isFakeGpsON"    # Z

    .line 289
    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider;->isProviderNeedChange(Z)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 290
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 292
    .local v0, "manager":Landroid/location/LocationManager;
    const-wide/32 v1, 0xea60

    .line 293
    .local v1, "minTime":J
    const/high16 v3, 0x42c80000    # 100.0f

    .line 294
    .local v3, "minDistance":F
    const/4 v4, 0x1

    .line 295
    .local v4, "oneShot":Z
    const-string v5, "gps"

    const-wide/32 v6, 0xea60

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v5

    .line 302
    .local v5, "request":Landroid/location/LocationRequest;
    invoke-virtual {v5, v9}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 305
    .local v6, "token":J
    :try_start_2a
    iget-object v8, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    iget-object v10, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    .line 308
    invoke-virtual {v10}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    .line 305
    invoke-virtual {v0, v5, v8, v10}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_35} :catch_3b
    .catchall {:try_start_2a .. :try_end_35} :catchall_39

    .line 312
    :goto_35
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 313
    goto :goto_53

    .line 312
    :catchall_39
    move-exception v8

    goto :goto_75

    .line 309
    :catch_3b
    move-exception v8

    .line 310
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3c
    const-string v10, "MiuiGpsProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error in changeProviderIfNecessary: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_3c .. :try_end_52} :catchall_39

    .end local v8    # "e":Ljava/lang/Exception;
    goto :goto_35

    .line 315
    :goto_53
    const-string v8, "MiuiGpsProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeProvider send request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v8, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    iget-object v10, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    invoke-virtual {v10, v9}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    .end local v0    # "manager":Landroid/location/LocationManager;
    .end local v1    # "minTime":J
    .end local v3    # "minDistance":F
    .end local v4    # "oneShot":Z
    .end local v5    # "request":Landroid/location/LocationRequest;
    .end local v6    # "token":J
    goto :goto_79

    .line 312
    .restart local v0    # "manager":Landroid/location/LocationManager;
    .restart local v1    # "minTime":J
    .restart local v3    # "minDistance":F
    .restart local v4    # "oneShot":Z
    .restart local v5    # "request":Landroid/location/LocationRequest;
    .restart local v6    # "token":J
    :goto_75
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 318
    .end local v0    # "manager":Landroid/location/LocationManager;
    .end local v1    # "minTime":J
    .end local v3    # "minDistance":F
    .end local v4    # "oneShot":Z
    .end local v5    # "request":Landroid/location/LocationRequest;
    .end local v6    # "token":J
    :cond_79
    :goto_79
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;

    .line 149
    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 151
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-nez v0, :cond_a

    .line 152
    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->stopNavigating()V

    .line 153
    return-void

    .line 156
    :cond_a
    const/4 v0, 0x0

    .line 158
    .local v0, "singleShot":Z
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    .line 159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_39

    .line 162
    const/4 v0, 0x1

    .line 164
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationRequest;

    .line 165
    .local v2, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v2}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_38

    .line 166
    const/4 v0, 0x0

    .line 168
    .end local v2    # "lr":Landroid/location/LocationRequest;
    :cond_38
    goto :goto_24

    .line 170
    :cond_39
    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    .line 172
    sget-boolean v1, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v1, :cond_58

    const-string v1, "MiuiGpsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_58
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v1, :cond_c2

    .line 174
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v1, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    .line 177
    iget v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v3, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8f

    .line 178
    const-string v1, "MiuiGpsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interval overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v3, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    .line 183
    :cond_8f
    iget v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_97

    .line 184
    iput v2, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    .line 187
    :cond_97
    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    if-eqz v1, :cond_a6

    .line 188
    const-string v1, "MiuiGpsProvider"

    const-string v2, "already started"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0, v0}, Lcom/android/server/MiuiFakeGpsProvider;->scheduleReportLocation(Z)V

    goto :goto_a9

    .line 191
    :cond_a6
    invoke-direct {p0, v0}, Lcom/android/server/MiuiFakeGpsProvider;->startNavigating(Z)V

    .line 194
    :goto_a9
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    invoke-virtual {v1}, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->cancelRequest()V

    .line 195
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    if-eqz v1, :cond_c8

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationPolicyManagerService;->getPhoneStationary()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 196
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    iget v2, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I

    invoke-virtual {v1, v2}, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->requestLocation(I)V

    goto :goto_c8

    .line 199
    :cond_c2
    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->stopNavigating()V

    .line 201
    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->notifyFakeGpsProviderStop()V

    .line 203
    :cond_c8
    :goto_c8
    return-void
.end method

.method private isProviderNeedChange(Z)Z
    .registers 13
    .param p1, "isFakeGpsOn"    # Z

    .line 322
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 323
    new-array v2, v0, [I

    const/16 v3, 0x2a

    aput v3, v2, v1

    .line 323
    .local v2, "ops":[I
    goto :goto_11

    .line 325
    .end local v2    # "ops":[I
    :cond_b
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_8a

    .line 328
    .restart local v2    # "ops":[I
    :goto_11
    iget-object v3, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 329
    .local v3, "opsManager":Landroid/app/AppOpsManager;
    invoke-virtual {v3, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4

    .line 331
    .local v4, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-nez v4, :cond_22

    .line 332
    return v1

    .line 335
    :cond_22
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 336
    .local v6, "pkgops":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    .line 337
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v7, :cond_39

    .line 337
    .end local v6    # "pkgops":Landroid/app/AppOpsManager$PackageOps;
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    goto :goto_26

    .line 338
    .restart local v6    # "pkgops":Landroid/app/AppOpsManager$PackageOps;
    .restart local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_39
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$OpEntry;

    .line 339
    .local v9, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_6b

    .line 340
    sget-boolean v1, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v1, :cond_6a

    const-string v1, "MiuiGpsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isProviderNeedChange: true, isMiuiGpsOn: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_6a
    return v0

    .line 343
    .end local v9    # "entry":Landroid/app/AppOpsManager$OpEntry;
    :cond_6b
    goto :goto_3d

    .line 344
    .end local v6    # "pkgops":Landroid/app/AppOpsManager$PackageOps;
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_6c
    goto :goto_26

    .line 345
    :cond_6d
    sget-boolean v0, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v0, :cond_88

    const-string v0, "MiuiGpsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isProviderNeedChange: false, isMiuiGpsOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_88
    return v1

    nop

    :array_8a
    .array-data 4
        0x2
        0x2a
    .end array-data
.end method

.method private notifyFakeGpsProviderStop()V
    .registers 4

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.fakegps.stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "fakegpsStopIntent":Landroid/content/Intent;
    const-string v1, "com.miui.powerkeeper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 209
    return-void
.end method

.method private registerFakeGpsStatus()V
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFakeGpsStatusListener:Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    if-eqz v0, :cond_17

    .line 256
    const-string v0, "MiuiGpsProvider"

    const-string/jumbo v1, "register provider status"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->sLocationPolicy:Lcom/android/server/LocationPolicyManagerService;

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mFakeGpsStatusListener:Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    invoke-virtual {v0, v1}, Lcom/android/server/LocationPolicyManagerService;->registerFakeGpsStatus(Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;)V

    .line 259
    :cond_17
    return-void
.end method

.method private reportLocation(Landroid/location/Location;)V
    .registers 5
    .param p1, "location"    # Landroid/location/Location;

    .line 262
    if-eqz p1, :cond_43

    .line 264
    :try_start_2
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 265
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 266
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 268
    :cond_19
    sget-boolean v0, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v0, :cond_34

    const-string v0, "MiuiGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "report location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_34
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mILocationManager:Landroid/location/ILocationManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_3a} :catch_3b

    .line 272
    goto :goto_43

    .line 270
    :catch_3b
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiGpsProvider"

    const-string v2, "RemoteException calling reportLocation"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_43
    :goto_43
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    if-eqz v0, :cond_4a

    .line 275
    invoke-direct {p0}, Lcom/android/server/MiuiFakeGpsProvider;->stopNavigating()V

    .line 277
    :cond_4a
    return-void
.end method

.method private scheduleReportLocation(Z)V
    .registers 7
    .param p1, "singleShot"    # Z

    .line 234
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    if-nez v0, :cond_46

    .line 235
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mRptLocThreadRunning:Z

    .line 237
    new-instance v1, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    const-string v2, "MiuiGpsProvider"

    invoke-direct {v1, p0, v2}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;-><init>(Lcom/android/server/MiuiFakeGpsProvider;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    .line 239
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    invoke-virtual {v1}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->start()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_43

    .line 241
    :goto_18
    :try_start_18
    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mRptLocThreadRunning:Z

    if-nez v1, :cond_22

    .line 242
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_21} :catch_23
    .catchall {:try_start_18 .. :try_end_21} :catchall_43

    goto :goto_18

    .line 247
    :cond_22
    goto :goto_41

    .line 244
    :catch_23
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_24
    const-string v2, "MiuiGpsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 248
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_41
    monitor-exit v0

    goto :goto_46

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_24 .. :try_end_45} :catchall_43

    throw v1

    .line 250
    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    invoke-virtual {v0, p1}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->setOnceRun(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    invoke-virtual {v0}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->reschedule()V

    .line 252
    return-void
.end method

.method private startNavigating(Z)V
    .registers 5
    .param p1, "singleShot"    # Z

    .line 212
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    if-nez v0, :cond_25

    .line 213
    const-string v0, "MiuiGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNavigating, singleShot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    .line 215
    iput-boolean p1, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    .line 216
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    invoke-direct {p0, v0}, Lcom/android/server/MiuiFakeGpsProvider;->scheduleReportLocation(Z)V

    .line 218
    :cond_25
    return-void
.end method

.method private stopNavigating()V
    .registers 4

    .line 221
    const-string v0, "MiuiGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopNavigating, mStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mNLPProxy:Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;

    invoke-virtual {v0}, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->cancelRequest()V

    .line 223
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    if-eqz v0, :cond_33

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mStarted:Z

    .line 225
    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mSingleShot:Z

    .line 226
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    if-eqz v0, :cond_33

    .line 227
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    invoke-virtual {v0}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->letStop()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    .line 231
    :cond_33
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 1

    .line 95
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 109
    return-void
.end method

.method public enable()V
    .registers 1

    .line 92
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 88
    const-string v0, "MiuiGpsProvider"

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 2

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .line 123
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 104
    const-string v0, "MiuiGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider;->mHandler:Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void
.end method
