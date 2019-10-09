.class public Lcom/android/server/location/LocationProviderProxy;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mNewServiceWork:Ljava/lang/Runnable;

.field private mProperties:Lcom/android/internal/location/ProviderProperties;

.field private mRequest:Lcom/android/internal/location/ProviderRequest;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;

.field private mWorksource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    sput-boolean v0, Lcom/android/server/location/LocationProviderProxy;->D:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNamesResId"    # I
    .param p7, "handler"    # Landroid/os/Handler;

    move-object v0, p0

    move-object v1, p2

    .line 74
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    .line 54
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 55
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 56
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, v0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;

    .line 95
    new-instance v2, Lcom/android/server/location/LocationProviderProxy$1;

    invoke-direct {v2, v0}, Lcom/android/server/location/LocationProviderProxy$1;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    iput-object v2, v0, Lcom/android/server/location/LocationProviderProxy;->mNewServiceWork:Ljava/lang/Runnable;

    .line 75
    move-object v2, p1

    iput-object v2, v0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    .line 76
    iput-object v1, v0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    .line 77
    new-instance v12, Lcom/android/server/ServiceWatcher;

    iget-object v4, v0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocationProviderProxy-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v10, v0, Lcom/android/server/location/LocationProviderProxy;->mNewServiceWork:Ljava/lang/Runnable;

    move-object v3, v12

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v12, v0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 80
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 42
    sget-boolean v0, Lcom/android/server/location/LocationProviderProxy;->D:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 42
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationProviderProxy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 42
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ProviderRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 42
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 42
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 42
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/location/LocationProviderProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderProperties;

    .line 42
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-object p1
.end method

.method private bind()Z
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v0

    return v0
.end method

.method public static createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "overlaySwitchResId"    # I
    .param p4, "defaultServicePackageNameResId"    # I
    .param p5, "initialPackageNamesResId"    # I
    .param p6, "handler"    # Landroid/os/Handler;

    .line 62
    new-instance v8, Lcom/android/server/location/LocationProviderProxy;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    .line 65
    .local v0, "proxy":Lcom/android/server/location/LocationProviderProxy;
    invoke-direct {v0}, Lcom/android/server/location/LocationProviderProxy;->bind()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 66
    return-object v0

    .line 68
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public disable()V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 182
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_12

    .line 183
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/LocationProviderProxy$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationProviderProxy$3;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    .line 197
    return-void

    .line 182
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 230
    const-string v0, "REMOTE SERVICE"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 231
    const-string v0, " name="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 232
    const-string v0, " pkg="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 233
    const-string v0, " version="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v2}, Lcom/android/server/ServiceWatcher;->getBestVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 234
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 235
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/LocationProviderProxy$5;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/location/LocationProviderProxy$5;-><init>(Lcom/android/server/location/LocationProviderProxy;Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 246
    const-string/jumbo v0, "service down (null)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    :cond_57
    return-void
.end method

.method public enable()V
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 161
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_12

    .line 162
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/LocationProviderProxy$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationProviderProxy$2;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    .line 176
    return-void

    .line 161
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getConnectedPackageName()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    monitor-exit v0

    return-object v1

    .line 154
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 252
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    move-object v0, v1

    .line 253
    .local v0, "result":[I
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v3, Lcom/android/server/location/LocationProviderProxy$6;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/location/LocationProviderProxy$6;-><init>(Lcom/android/server/location/LocationProviderProxy;[ILandroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    .line 267
    aget v1, v0, v2

    return v1
.end method

.method public getStatusUpdateTime()J
    .registers 5

    .line 272
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 273
    .local v0, "result":[J
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v3, Lcom/android/server/location/LocationProviderProxy$7;

    invoke-direct {v3, p0, v0}, Lcom/android/server/location/LocationProviderProxy$7;-><init>(Lcom/android/server/location/LocationProviderProxy;[J)V

    invoke-virtual {v2, v3}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    .line 287
    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public isEnabled()Z
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 203
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 292
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 293
    .local v0, "result":[Z
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v3, Lcom/android/server/location/LocationProviderProxy$8;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/android/server/location/LocationProviderProxy$8;-><init>(Lcom/android/server/location/LocationProviderProxy;[ZLjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    .line 307
    aget-boolean v1, v0, v1

    return v1
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 208
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_3
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 210
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;

    .line 211
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_13

    .line 212
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/LocationProviderProxy$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/LocationProviderProxy$4;-><init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    .line 226
    return-void

    .line 211
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method
