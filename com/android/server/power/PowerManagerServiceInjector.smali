.class public Lcom/android/server/power/PowerManagerServiceInjector;
.super Ljava/lang/Object;
.source "PowerManagerServiceInjector.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "PowerManagerServiceInjector"

.field private static sHandler:Landroid/os/Handler;

.field private static sLightSensor:Landroid/hardware/Sensor;

.field private static sLightSensorEnabled:Z

.field private static final sLightSensorListener:Landroid/hardware/SensorEventListener;

.field private static sLock:Ljava/lang/Object;

.field private static sPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

.field private static sPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private static sSensorManager:Landroid/hardware/SensorManager;

.field private static sStartLightSensorTime:J

.field private static sUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

.field private static sUidStateHelper:Lcom/android/server/UidStateHelper;

.field private static sWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PowerManagerServiceInjector;->sLightSensorEnabled:Z

    .line 50
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/power/PowerManagerServiceInjector;->sStartLightSensorTime:J

    .line 96
    new-instance v0, Lcom/android/server/power/PowerManagerServiceInjector$2;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerServiceInjector$2;-><init>()V

    sput-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 309
    new-instance v0, Lcom/android/server/power/PowerManagerServiceInjector$3;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerServiceInjector$3;-><init>()V

    sput-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/UidStateHelper;)Lcom/android/server/UidStateHelper;
    .registers 1
    .param p0, "x0"    # Lcom/android/server/UidStateHelper;

    .line 35
    sput-object p0, Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateHelper:Lcom/android/server/UidStateHelper;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy;
    .registers 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy;

    .line 35
    sput-object p0, Lcom/android/server/power/PowerManagerServiceInjector;->sPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    return-object p0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 35
    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceInjector;->sLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$300()J
    .registers 2

    .line 35
    sget-wide v0, Lcom/android/server/power/PowerManagerServiceInjector;->sStartLightSensorTime:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .registers 2
    .param p0, "x0"    # J

    .line 35
    sput-wide p0, Lcom/android/server/power/PowerManagerServiceInjector;->sStartLightSensorTime:J

    return-wide p0
.end method

.method public static getPartialWakeLockHoldByUid(I)I
    .registers 8
    .param p0, "uid"    # I

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "wakeLockNum":I
    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_4
    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 137
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-object v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 138
    .local v4, "ws":Landroid/os/WorkSource;
    if-nez v4, :cond_1e

    iget v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne v5, p0, :cond_a

    :cond_1e
    if-eqz v4, :cond_28

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    if-eq v5, p0, :cond_28

    .line 139
    goto :goto_a

    .line 141
    :cond_28
    iget v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    .line 142
    .local v5, "wakeLockType":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_33

    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 145
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v4    # "ws":Landroid/os/WorkSource;
    .end local v5    # "wakeLockType":I
    :cond_33
    goto :goto_a

    .line 146
    :cond_34
    monitor-exit v1

    .line 147
    return v0

    .line 146
    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw v2
.end method

.method private static getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I
    .registers 5
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 119
    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 120
    .local v1, "realOwners":[I
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v2, :cond_f

    .line 121
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 122
    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    aput v2, v1, v0

    goto :goto_25

    .line 124
    :cond_f
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    .line 125
    .local v2, "N":I
    new-array v1, v2, [I

    .line 126
    nop

    .local v0, "i":I
    :goto_18
    if-ge v0, v2, :cond_25

    .line 127
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    aput v3, v1, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 130
    .end local v0    # "i":I
    .end local v2    # "N":I
    :cond_25
    :goto_25
    return-object v1
.end method

.method public static getScreenWakeLockHoldByUid(I)I
    .registers 8
    .param p0, "uid"    # I

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "wakeLockNum":I
    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_4
    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 154
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-object v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 155
    .local v4, "ws":Landroid/os/WorkSource;
    if-nez v4, :cond_1e

    iget v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne v5, p0, :cond_a

    :cond_1e
    if-eqz v4, :cond_28

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    if-eq v5, p0, :cond_28

    .line 156
    goto :goto_a

    .line 158
    :cond_28
    iget v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    .line 159
    .local v5, "wakeLockType":I
    const/4 v6, 0x6

    if-eq v5, v6, :cond_3a

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3a

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_3a

    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v4    # "ws":Landroid/os/WorkSource;
    .end local v5    # "wakeLockType":I
    goto :goto_3d

    .line 163
    .restart local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .restart local v4    # "ws":Landroid/os/WorkSource;
    .restart local v5    # "wakeLockType":I
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    .line 164
    nop

    .line 168
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v4    # "ws":Landroid/os/WorkSource;
    .end local v5    # "wakeLockType":I
    :goto_3d
    goto :goto_a

    .line 169
    :cond_3e
    monitor-exit v1

    .line 170
    return v0

    .line 169
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_40

    throw v2
.end method

.method public static init(Lcom/android/server/power/PowerManagerService;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 5
    .param p0, "powerManagerService"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/PowerManagerService;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 54
    .local p1, "allWakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/PowerManagerService$WakeLock;>;"
    sput-object p0, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 55
    sput-object p1, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    .line 56
    sput-object p2, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sHandler:Landroid/os/Handler;

    .line 59
    sget-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/PowerManagerServiceInjector$1;

    invoke-direct {v1}, Lcom/android/server/power/PowerManagerServiceInjector$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method public static init(Lcom/android/server/power/PowerManagerService;Ljava/util/ArrayList;Ljava/lang/Object;Landroid/hardware/SensorManager;)V
    .registers 6
    .param p0, "powerManagerService"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/PowerManagerService;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/hardware/SensorManager;",
            ")V"
        }
    .end annotation

    .line 77
    .local p1, "allWakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/PowerManagerService$WakeLock;>;"
    sput-object p3, Lcom/android/server/power/PowerManagerServiceInjector;->sSensorManager:Landroid/hardware/SensorManager;

    .line 78
    sget-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sLightSensor:Landroid/hardware/Sensor;

    .line 79
    invoke-static {p0, p1, p2}, Lcom/android/server/power/PowerManagerServiceInjector;->init(Lcom/android/server/power/PowerManagerService;Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method static isBackgroundScreenWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 9
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "foreground":Z
    invoke-static {p0}, Lcom/android/server/power/PowerManagerServiceInjector;->getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I

    move-result-object v1

    .line 176
    .local v1, "realOwners":[I
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .end local v0    # "foreground":Z
    .local v4, "foreground":Z
    :goto_9
    const/4 v5, 0x1

    if-ge v0, v2, :cond_1c

    aget v6, v1, v0

    .line 177
    .local v6, "realOwner":I
    sget-object v7, Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateHelper:Lcom/android/server/UidStateHelper;

    if-eqz v7, :cond_19

    .line 178
    sget-object v7, Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateHelper:Lcom/android/server/UidStateHelper;

    invoke-virtual {v7, v6, v5}, Lcom/android/server/UidStateHelper;->isUidForeground(IZ)Z

    move-result v5

    or-int/2addr v4, v5

    .line 176
    .end local v6    # "realOwner":I
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 181
    :cond_1c
    if-nez v4, :cond_20

    move v3, v5

    nop

    :cond_20
    return v3
.end method

.method public static isShutdownOrRebootPermitted(Landroid/content/Context;ZZLjava/lang/String;Z)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    .line 399
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 401
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 402
    .local v1, "cr":Landroid/content/ContentResolver;
    if-nez v1, :cond_b

    return v0

    .line 404
    :cond_b
    if-eqz p1, :cond_25

    const-string v2, "com.xiaomi.system.devicelock.locked"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_25

    .line 406
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 407
    .local v0, "h":Landroid/os/Handler;
    if-eqz v0, :cond_24

    .line 408
    new-instance v2, Lcom/android/server/power/PowerManagerServiceInjector$4;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerServiceInjector$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    :cond_24
    return v3

    .line 424
    .end local v0    # "h":Landroid/os/Handler;
    :cond_25
    return v0
.end method

.method static isWakelockDisabledByPolicy(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 8
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "disabled":Z
    invoke-static {p0}, Lcom/android/server/power/PowerManagerServiceInjector;->getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I

    move-result-object v1

    .line 187
    .local v1, "realOwners":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_3e

    aget v4, v1, v3

    .line 188
    .local v4, "realOwner":I
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    if-eqz v5, :cond_3b

    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->isWakelockDisabledByPolicy(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 189
    const/4 v0, 0x1

    .line 190
    const-string v2, "PowerManagerServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wakeLock:["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] is disabled by policy"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    goto :goto_3e

    .line 187
    .end local v4    # "realOwner":I
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 194
    :cond_3e
    :goto_3e
    return v0
.end method

.method public static recordShutDownTime()V
    .registers 10

    .line 355
    const-wide/16 v0, 0x0

    .line 356
    .local v0, "usrConfirmTime":J
    const/4 v2, 0x0

    .line 357
    .local v2, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .line 358
    .local v3, "buf":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "/cache/recovery/last_utime"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v4, "last_utime":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 360
    const-string v5, "PowerManagerServiceInjector"

    const-string/jumbo v6, "last_utime doesn\'t exist"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 365
    :cond_1a
    :try_start_1a
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 366
    .local v5, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    if-eqz v6, :cond_7d

    .line 367
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide v0, v6

    .line 368
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_42

    .line 369
    const-string v6, "PowerManagerServiceInjector"

    const-string/jumbo v7, "last_utime has invalid content"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 371
    return-void

    .line 378
    :cond_42
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 380
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/last_shutdowntime"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v6, "last_ShutdownTime":Ljava/io/File;
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 382
    .local v7, "writer":Ljava/io/BufferedWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 383
    invoke-virtual {v7, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 385
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 386
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v8

    if-nez v8, :cond_7c

    .line 387
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 388
    const-string v8, "PowerManagerServiceInjector"

    const-string/jumbo v9, "set last_shutdowntime readable failed"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void

    .line 393
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "last_ShutdownTime":Ljava/io/File;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :cond_7c
    goto :goto_93

    .line 374
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_7d
    const-string v6, "PowerManagerServiceInjector"

    const-string/jumbo v7, "last_utime is blank"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_88} :catch_89

    .line 376
    return-void

    .line 391
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_89
    move-exception v5

    .line 392
    .local v5, "ex":Ljava/io/IOException;
    const-string v6, "PowerManagerServiceInjector"

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v5    # "ex":Ljava/io/IOException;
    :goto_93
    return-void
.end method

.method static restoreScreenWakeLockDisabledState(I)V
    .registers 11
    .param p0, "uid"    # I

    .line 281
    sget-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, "changed":Z
    :try_start_4
    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 284
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v5, 0x6

    if-eq v4, v5, :cond_28

    const/16 v5, 0xa

    if-eq v4, v5, :cond_28

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_28

    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    goto :goto_68

    .line 288
    .restart local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_28
    invoke-static {v3}, Lcom/android/server/power/PowerManagerServiceInjector;->getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I

    move-result-object v4

    .line 289
    .local v4, "realOwners":[I
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_2f
    if-ge v7, v5, :cond_67

    aget v8, v4, v7

    .line 290
    .local v8, "realOwner":I
    if-ne v8, p0, :cond_64

    iget-boolean v9, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v9, :cond_64

    .line 291
    invoke-static {v3, v6}, Lcom/android/server/power/PowerManagerServiceInjector;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v5

    or-int/2addr v1, v5

    .line 292
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 293
    const-string v5, "PowerManagerServiceInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "screen wakeLock:["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] enabled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    goto :goto_67

    .line 289
    .end local v8    # "realOwner":I
    :cond_64
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 297
    :cond_67
    :goto_67
    nop

    .line 301
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v4    # "realOwners":[I
    :goto_68
    goto :goto_a

    .line 302
    :cond_69
    if-eqz v1, :cond_75

    .line 303
    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    .line 304
    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 306
    .end local v1    # "changed":Z
    :cond_75
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_4 .. :try_end_79} :catchall_77

    throw v1
.end method

.method public static setLightSensorEnabled(Z)V
    .registers 5
    .param p0, "enable"    # Z

    .line 83
    if-eqz p0, :cond_1c

    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceInjector;->sLightSensorEnabled:Z

    if-nez v0, :cond_1c

    .line 84
    const-string v0, "PowerManagerServiceInjector"

    const-string/jumbo v1, "setLightSensorEnabled enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/PowerManagerServiceInjector;->sLightSensorEnabled:Z

    .line 86
    sget-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sLightSensorListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_38

    .line 88
    :cond_1c
    if-nez p0, :cond_38

    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceInjector;->sLightSensorEnabled:Z

    if-eqz v0, :cond_38

    .line 89
    const-string v0, "PowerManagerServiceInjector"

    const-string/jumbo v1, "setLightSensorEnabled disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PowerManagerServiceInjector;->sLightSensorEnabled:Z

    .line 91
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/power/PowerManagerServiceInjector;->sStartLightSensorTime:J

    .line 92
    sget-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 94
    :cond_38
    :goto_38
    return-void
.end method

.method public static setUidPartialWakeLockDisabledState(ILjava/lang/String;Z)V
    .registers 12
    .param p0, "uid"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "disabled"    # Z

    .line 319
    if-nez p1, :cond_20

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_20

    .line 320
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not disable all wakelock for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_20
    :goto_20
    sget-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_23
    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 325
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v3, 0x0

    .line 326
    .local v3, "changed":Z
    iget v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_40

    goto :goto_60

    .line 328
    :cond_40
    invoke-static {v2}, Lcom/android/server/power/PowerManagerServiceInjector;->getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I

    move-result-object v4

    .line 329
    .local v4, "realOwners":[I
    array-length v5, v4

    const/4 v6, 0x0

    :goto_46
    if-ge v6, v5, :cond_5f

    aget v7, v4, v6

    .line 330
    .local v7, "realOwner":I
    if-ne v7, p0, :cond_5c

    if-eqz p1, :cond_56

    iget-object v8, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 331
    :cond_56
    invoke-static {v2, p2}, Lcom/android/server/power/PowerManagerServiceInjector;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v5

    move v3, v5

    .line 332
    goto :goto_5f

    .line 329
    .end local v7    # "realOwner":I
    :cond_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 335
    :cond_5f
    :goto_5f
    nop

    .line 339
    .end local v4    # "realOwners":[I
    :goto_60
    if-eqz v3, :cond_bb

    .line 340
    iget-boolean v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v4, :cond_8c

    .line 341
    const-string v4, "PowerManagerServiceInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set partial wakelock disabled:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-object v4, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_b1

    .line 344
    :cond_8c
    const-string v4, "PowerManagerServiceInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set partial wakelock enabled:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sget-object v4, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 347
    :goto_b1
    sget-object v4, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    .line 348
    sget-object v4, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 350
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v3    # "changed":Z
    :cond_bb
    goto/16 :goto_29

    .line 351
    :cond_bd
    monitor-exit v0

    .line 352
    return-void

    .line 351
    :catchall_bf
    move-exception v1

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_23 .. :try_end_c1} :catchall_bf

    throw v1
.end method

.method private static setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z
    .registers 4
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p1, "disabled"    # Z

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v1, p1, :cond_8

    .line 200
    const/4 v0, 0x1

    .line 201
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 203
    :cond_8
    return v0
.end method

.method public static updateAllPartialWakeLockDisableState()V
    .registers 6

    .line 227
    sget-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "changed":Z
    :try_start_4
    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 230
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_20

    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    goto :goto_2a

    .line 232
    .restart local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_20
    invoke-static {v3}, Lcom/android/server/power/PowerManagerServiceInjector;->isWakelockDisabledByPolicy(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v4

    .line 233
    .local v4, "disabled":Z
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerServiceInjector;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v5

    or-int/2addr v1, v5

    .line 234
    nop

    .line 238
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v4    # "disabled":Z
    :goto_2a
    goto :goto_a

    .line 239
    :cond_2b
    if-eqz v1, :cond_37

    .line 240
    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    .line 241
    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 243
    .end local v1    # "changed":Z
    :cond_37
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method static updateAllScreenWakeLockDisabledStateLocked()V
    .registers 6

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "changed":Z
    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 251
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/4 v4, 0x6

    if-eq v3, v4, :cond_25

    const/16 v4, 0xa

    if-eq v3, v4, :cond_25

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_25

    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    goto :goto_4d

    .line 255
    .restart local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_25
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2c

    .line 256
    goto :goto_7

    .line 258
    :cond_2c
    const-string v3, "PowerManagerServiceInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "screen wakeLock:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] not by window manager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    nop

    .line 272
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :goto_4d
    goto :goto_7

    .line 273
    :cond_4e
    if-eqz v0, :cond_55

    .line 274
    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    .line 276
    :cond_55
    return-void
.end method

.method static updateWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)V
    .registers 5
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p1, "notify"    # Z

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "changed":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    goto :goto_1a

    .line 211
    :cond_b
    invoke-static {p0}, Lcom/android/server/power/PowerManagerServiceInjector;->isWakelockDisabledByPolicy(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v1

    .line 212
    .local v1, "disabled":Z
    invoke-static {p0, v1}, Lcom/android/server/power/PowerManagerServiceInjector;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v0

    .line 213
    if-eqz v0, :cond_1a

    .line 214
    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    .line 220
    .end local v1    # "disabled":Z
    :cond_1a
    :goto_1a
    if-eqz p1, :cond_2c

    if-eqz v0, :cond_2c

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v1, :cond_2c

    .line 221
    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 222
    sget-object v1, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 224
    :cond_2c
    return-void
.end method
