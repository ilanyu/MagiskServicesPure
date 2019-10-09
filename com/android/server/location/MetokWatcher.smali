.class public Lcom/android/server/location/MetokWatcher;
.super Ljava/lang/Object;
.source "MetokWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final D:Z = false

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field public static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.metok"

.field private static final TAG:Ljava/lang/String; = "MetokWatcher"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mBoundComponent:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundService:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mNewServiceWork:Ljava/lang/Runnable;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mServicePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "newServiceWork"    # Ljava/lang/Runnable;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    .line 59
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I

    .line 61
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/location/MetokWatcher;->mBoundUserId:I

    .line 216
    new-instance v0, Lcom/android/server/location/MetokWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/MetokWatcher$2;-><init>(Lcom/android/server/location/MetokWatcher;)V

    iput-object v0, p0, Lcom/android/server/location/MetokWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 65
    iput-object p1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/MetokWatcher;->mPm:Landroid/content/pm/PackageManager;

    .line 68
    iput-object p3, p0, Lcom/android/server/location/MetokWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    .line 69
    iput-object p4, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "com.xiaomi.metok"

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/MetokWatcher;

    .line 32
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/MetokWatcher;

    .line 32
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/location/MetokWatcher;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private bindBestPackageLocked(Ljava/lang/String;Z)Z
    .registers 19
    .param p1, "justCheckThisPackage"    # Ljava/lang/String;
    .param p2, "forceRebind"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 128
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_10

    .line 130
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :cond_10
    iget-object v3, v0, Lcom/android/server/location/MetokWatcher;->mPm:Landroid/content/pm/PackageManager;

    const v4, 0x10000080

    iget v5, v0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 135
    .local v3, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v4, -0x80000000

    .line 136
    .local v4, "bestVersion":I
    const/4 v5, 0x0

    .line 137
    .local v5, "bestComponent":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 138
    .local v6, "bestIsMultiuser":Z
    if-eqz v3, :cond_62

    .line 139
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_62

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 141
    .local v8, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v9}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    .line 142
    .local v9, "component":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 145
    .local v10, "packageName":Ljava/lang/String;
    const/high16 v11, -0x80000000

    .line 146
    .local v11, "version":I
    const/4 v12, 0x0

    .line 147
    .local v12, "isMultiuser":Z
    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_5c

    .line 148
    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v14, "serviceVersion"

    const/high16 v15, -0x80000000

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 150
    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v14, "serviceIsMultiuser"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 153
    :cond_5c
    if-le v11, v4, :cond_61

    .line 154
    move v4, v11

    .line 155
    move-object v5, v9

    .line 156
    move v6, v12

    .line 158
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "version":I
    .end local v12    # "isMultiuser":Z
    :cond_61
    goto :goto_25

    .line 174
    :cond_62
    const/4 v7, 0x0

    if-nez v5, :cond_81

    .line 175
    const-string v8, "MetokWatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Odd, no component found for service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/MetokWatcher;->unbindLocked()V

    .line 177
    return v7

    .line 180
    :cond_81
    if-eqz v6, :cond_85

    move v8, v7

    goto :goto_87

    :cond_85
    iget v8, v0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    .line 181
    .local v8, "userId":I
    :goto_87
    iget-object v9, v0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_9a

    iget v9, v0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I

    if-ne v4, v9, :cond_9a

    iget v9, v0, Lcom/android/server/location/MetokWatcher;->mBoundUserId:I

    if-ne v8, v9, :cond_9a

    move v7, v10

    nop

    .line 183
    .local v7, "alreadyBound":Z
    :cond_9a
    if-nez p2, :cond_9e

    if-nez v7, :cond_a4

    .line 184
    :cond_9e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/MetokWatcher;->unbindLocked()V

    .line 185
    invoke-direct {v0, v5, v4, v8}, Lcom/android/server/location/MetokWatcher;->bindToPackageLocked(Landroid/content/ComponentName;II)V

    .line 187
    :cond_a4
    return v10
.end method

.method private bindToPackageLocked(Landroid/content/ComponentName;II)V
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "version"    # I
    .param p3, "userId"    # I

    .line 204
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    iput-object p1, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    .line 207
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;

    .line 208
    iput p2, p0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I

    .line 209
    iput p3, p0, Lcom/android/server/location/MetokWatcher;->mBoundUserId:I

    .line 211
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 214
    return-void
.end method

.method private unbindLocked()V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    .line 193
    .local v0, "component":Landroid/content/ComponentName;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    .line 194
    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;

    .line 195
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I

    .line 196
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundUserId:I

    .line 197
    if-eqz v0, :cond_16

    .line 199
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 201
    :cond_16
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundService:Landroid/os/IBinder;

    monitor-exit v0

    return-object v1

    .line 295
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 283
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getVersion()I
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    iget v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I

    monitor-exit v0

    return v1

    .line 289
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 256
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 259
    iput-object p2, p0, Lcom/android/server/location/MetokWatcher;->mBoundService:Landroid/os/IBinder;

    .line 260
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    if-eqz v1, :cond_34

    .line 261
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/location/MetokWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_34

    .line 264
    :cond_1d
    const-string v1, "MetokWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected onServiceConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_34
    :goto_34
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 271
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 275
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundService:Landroid/os/IBinder;

    .line 277
    :cond_e
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public start()Z
    .registers 8

    .line 82
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_13

    .line 84
    const-string v1, "MetokWatcher"

    const-string v2, "failed to bind metok, when we are booting now"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_43

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/location/MetokWatcher$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/MetokWatcher$1;-><init>(Lcom/android/server/location/MetokWatcher;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_42

    .line 109
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v3, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 112
    :cond_42
    return v2

    .line 86
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public switchUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 299
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_3
    iput p1, p0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    .line 301
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z

    .line 302
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public unlockUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 307
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_3
    iget v1, p0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    if-ne p1, v1, :cond_d

    .line 309
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z

    .line 311
    :cond_d
    monitor-exit v0

    .line 312
    return-void

    .line 311
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method
