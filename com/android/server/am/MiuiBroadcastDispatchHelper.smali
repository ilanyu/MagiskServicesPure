.class public Lcom/android/server/am/MiuiBroadcastDispatchHelper;
.super Ljava/lang/Object;
.source "MiuiBroadcastDispatchHelper.java"


# static fields
.field private static final ANDROID_VERSION_N:I = 0x18

.field private static final DEBUG_BROADCAST:Z = false

.field private static final DEBUG_BROADCAST_LIGHT:Z = false

.field static final DEFAULT_SLEEP_TIME:J = 0x5L

.field static final DISPATCH_SLEEP_TIME:J = 0x8L

.field static final HEAVY_CONSUMING_INTENT:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field static final HEAVY_CONSUMING_INTENT_SLEEP_TIME:J = 0x32L

.field static final LIMIT_DISPATCH_SLEEP_TIME:J = 0xaL

.field private static final MAX_DISPATCH_INTENT_COUNT:I = 0x3

.field static final MAX_RECEIVERS_SIZE:I = 0x1e

.field static final MIN_RECEIVERS_SIZE:I = 0x3

.field static final MSG_PROCESS_NEXT_BROADCAST_FROM_AMS:I = 0x249f1

.field static final ONE_DISPATCH_MAX_TIME:J = 0xaL

.field static final PROP_MIUI_BROADCAST_DISPATCH:Ljava/lang/String; = "persist.sys.m_b_dispatch"

.field static final SHORT_SLEEP_TIME:J = 0x3L

.field private static mInstance:Lcom/android/server/am/MiuiBroadcastDispatchHelper;


# instance fields
.field private mAddBroadcastToHistoryLocked:Ljava/lang/reflect/Method;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;

.field private mDispatchSleep:Z

.field private final mEnable:Z

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field private timeConsumingIntents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 6
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    .line 59
    iput-object p1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 61
    invoke-direct {p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->findDeliverToRegisteredReceiverLocked()V

    .line 62
    invoke-direct {p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->findAddBroadcastToHistoryLocked()V

    .line 63
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAddBroadcastToHistoryLocked:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1f

    goto :goto_3d

    .line 68
    :cond_1f
    const-string/jumbo v0, "persist.sys.m_b_dispatch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    .line 69
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v0, :cond_2d

    .line 70
    return-void

    .line 73
    :cond_2d
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v2, "BroadcastQueueInjector"

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 75
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 76
    return-void

    .line 64
    :cond_3d
    :goto_3d
    iput-boolean v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    .line 65
    return-void
.end method

.method private addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .registers 6
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAddBroadcastToHistoryLocked:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 256
    goto :goto_10

    .line 254
    :catch_c
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return-void
.end method

.method public static addTimeConsumingIntent([Ljava/lang/String;)V
    .registers 2
    .param p0, "actions"    # [Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 90
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->addIntent([Ljava/lang/String;)V

    .line 92
    :cond_d
    return-void
.end method

.method public static clearTimeConsumingIntent()V
    .registers 1

    .line 101
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 102
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->clearIntent()V

    .line 104
    :cond_d
    return-void
.end method

.method private deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)V
    .registers 11
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p4, "index"    # I

    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x18

    if-lt v0, v5, :cond_28

    .line 238
    :try_start_a
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v4

    aput-object p3, v5, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_22} :catch_23

    goto :goto_27

    .line 239
    :catch_23
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27
    goto :goto_3e

    .line 244
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    aput-object p3, v1, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_39} :catch_3a

    .line 247
    goto :goto_3e

    .line 245
    :catch_3a
    move-exception v0

    .line 246
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method private findAddBroadcastToHistoryLocked()V
    .registers 6

    .line 148
    :try_start_0
    const-class v0, Lcom/android/server/am/BroadcastQueue;

    const-string v1, "addBroadcastToHistoryLocked"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/android/server/am/BroadcastRecord;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAddBroadcastToHistoryLocked:Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 152
    goto :goto_17

    .line 150
    :catch_13
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    return-void
.end method

.method private findDeliverToRegisteredReceiverLocked()V
    .registers 9

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x18

    if-lt v0, v5, :cond_2d

    .line 125
    :try_start_a
    const-class v0, Lcom/android/server/am/BroadcastQueue;

    const-string v5, "deliverToRegisteredReceiverLocked"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Lcom/android/server/am/BroadcastRecord;

    aput-object v7, v6, v4

    const-class v4, Lcom/android/server/am/BroadcastFilter;

    aput-object v4, v6, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v6, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v6, v1

    invoke-static {v0, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_27} :catch_28

    goto :goto_2c

    .line 130
    :catch_28
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2c
    goto :goto_4a

    .line 135
    :cond_2d
    :try_start_2d
    const-class v0, Lcom/android/server/am/BroadcastQueue;

    const-string v5, "deliverToRegisteredReceiverLocked"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v6, Lcom/android/server/am/BroadcastRecord;

    aput-object v6, v1, v4

    const-class v4, Lcom/android/server/am/BroadcastFilter;

    aput-object v4, v1, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {v0, v5, v1}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_45} :catch_46

    .line 142
    goto :goto_4a

    .line 140
    :catch_46
    move-exception v0

    .line 141
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4a
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;
    .registers 1

    .line 119
    sget-object v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mInstance:Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    return-object v0
.end method

.method public static init(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 79
    new-instance v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    invoke-direct {v0, p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mInstance:Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    .line 80
    return-void
.end method

.method public static onScreenOffBroadcastSend()V
    .registers 2

    .line 113
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 114
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->setDispatchSleep(Z)V

    .line 116
    :cond_e
    return-void
.end method

.method public static onScreenOnBroadcastDone()V
    .registers 2

    .line 107
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 108
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->setDispatchSleep(Z)V

    .line 110
    :cond_e
    return-void
.end method

.method public static removeTimeConsumingIntent([Ljava/lang/String;)V
    .registers 2
    .param p0, "actions"    # [Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 96
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->removeIntent([Ljava/lang/String;)V

    .line 98
    :cond_d
    return-void
.end method

.method public static setMiuiBroadcastDispatchEnable(Z)V
    .registers 2
    .param p0, "enable"    # Z

    .line 83
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 84
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->setEnable(Z)V

    .line 86
    :cond_d
    return-void
.end method

.method private shortBroadcastsDispatchLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .registers 7
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 270
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 274
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_24

    .line 275
    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 280
    .local v2, "target":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/android/server/am/BroadcastFilter;

    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)V

    .line 274
    .end local v2    # "target":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 282
    .end local v1    # "i":I
    :cond_24
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V

    .line 286
    return-void
.end method

.method private sleep(J)V
    .registers 4
    .param p1, "time"    # J

    .line 261
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 264
    goto :goto_8

    .line 262
    :catch_4
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    return-void
.end method


# virtual methods
.method public addIntent([Ljava/lang/String;)V
    .registers 7
    .param p1, "actions"    # [Ljava/lang/String;

    .line 200
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v0, :cond_5

    .line 201
    return-void

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v0

    .line 204
    :try_start_8
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget-object v3, p1, v2

    .line 205
    .local v3, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v3    # "action":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 207
    :cond_16
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public clearIntent()V
    .registers 3

    .line 222
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v0, :cond_5

    .line 223
    return-void

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v0

    .line 226
    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 227
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public dispatchParallelBroadcasts(Lcom/android/server/am/BroadcastQueue;Ljava/util/ArrayList;)V
    .registers 24
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BroadcastQueue;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)V"
        }
    .end annotation

    .local p2, "parallelBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "heavyTimeConsumingIntent":Z
    const/4 v3, 0x0

    .line 293
    .local v3, "timeConsumingIntent":Z
    const/4 v4, 0x0

    .local v4, "isNextTopApp":Z
    const/4 v5, 0x0

    .line 294
    .local v5, "isNextSystemServer":Z
    const/16 v6, -0x3e8

    .line 295
    .local v6, "notSleepUid":I
    const/4 v7, 0x0

    .line 297
    .local v7, "dispatchCount":I
    const/4 v8, 0x0

    move v9, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    .line 298
    .end local v0    # "heavyTimeConsumingIntent":Z
    .local v3, "heavyTimeConsumingIntent":Z
    .local v4, "timeConsumingIntent":Z
    .local v5, "isNextTopApp":Z
    .local v6, "isNextSystemServer":Z
    .local v8, "r":Lcom/android/server/am/BroadcastRecord;
    .local v9, "notSleepUid":I
    :goto_11
    const/4 v0, 0x3

    const/4 v10, 0x0

    if-ge v7, v0, :cond_174

    .line 299
    add-int/lit8 v11, v7, 0x1

    .line 300
    .end local v7    # "dispatchCount":I
    .local v11, "dispatchCount":I
    iget-object v12, v1, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 301
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_16a

    if-lez v7, :cond_163

    .line 302
    move-object/from16 v13, p2

    :try_start_25
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    move-object v8, v7

    .line 303
    iget-object v7, v8, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v0, :cond_3d

    .line 304
    invoke-direct {v1, v2, v8}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->shortBroadcastsDispatchLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V

    .line 305
    monitor-exit v12
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_172

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 297
    move v7, v11

    goto :goto_11

    .line 310
    :cond_3d
    :try_start_3d
    monitor-exit v12
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_172

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iput-wide v14, v8, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v8, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 313
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    iget-object v7, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 314
    .end local v3    # "heavyTimeConsumingIntent":Z
    .local v7, "heavyTimeConsumingIntent":Z
    if-eqz v7, :cond_5d

    const/4 v0, 0x1

    goto :goto_67

    :cond_5d
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 315
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v1, v0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->isTimeConsumingIntent(Ljava/lang/String;)Z

    move-result v0

    :goto_67
    move v14, v0

    .line 316
    .end local v4    # "timeConsumingIntent":Z
    .local v14, "timeConsumingIntent":Z
    const/4 v0, 0x0

    .line 317
    .end local v5    # "isNextTopApp":Z
    .local v0, "isNextTopApp":Z
    const/4 v3, 0x0

    .line 318
    .end local v6    # "isNextSystemServer":Z
    .local v3, "isNextSystemServer":Z
    const/16 v4, -0x3e8

    .line 319
    .end local v9    # "notSleepUid":I
    .local v4, "notSleepUid":I
    iget-object v5, v8, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    .line 323
    .local v15, "N":I
    move/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v4

    .end local v0    # "isNextTopApp":Z
    .end local v3    # "isNextSystemServer":Z
    .end local v4    # "notSleepUid":I
    .local v10, "i":I
    .local v16, "isNextTopApp":Z
    .local v17, "isNextSystemServer":Z
    .local v18, "notSleepUid":I
    :goto_78
    move v3, v10

    .end local v10    # "i":I
    .local v3, "i":I
    if-ge v3, v15, :cond_113

    .line 324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 325
    .local v4, "startTime":J
    iget-object v6, v1, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_82
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 326
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 327
    .local v0, "target":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 328
    const/16 v17, 0x0

    .line 329
    add-int/lit8 v9, v15, -0x1

    if-ge v3, v9, :cond_c1

    .line 330
    iget-object v9, v8, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    add-int/lit8 v10, v3, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/BroadcastFilter;

    .line 331
    .local v9, "next":Lcom/android/server/am/BroadcastFilter;
    iget-object v10, v9, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v10, v10, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_af

    iget-object v10, v9, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v10, v10, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v12, 0x2

    if-gt v10, v12, :cond_af

    .line 333
    const/4 v10, 0x1

    .line 335
    .end local v16    # "isNextTopApp":Z
    .local v10, "isNextTopApp":Z
    move/from16 v16, v10

    .end local v10    # "isNextTopApp":Z
    .restart local v16    # "isNextTopApp":Z
    :cond_af
    iget-object v10, v9, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v10, v10, Lcom/android/server/am/ReceiverList;->pid:I

    sget v12, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v10, v12, :cond_ba

    .line 336
    const/4 v10, 0x1

    .line 338
    .end local v17    # "isNextSystemServer":Z
    .local v10, "isNextSystemServer":Z
    move/from16 v17, v10

    .end local v10    # "isNextSystemServer":Z
    .restart local v17    # "isNextSystemServer":Z
    :cond_ba
    iget-object v10, v9, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v10, v10, Lcom/android/server/am/ReceiverList;->uid:I

    move v9, v10

    .line 345
    .end local v18    # "notSleepUid":I
    .local v9, "notSleepUid":I
    move/from16 v18, v9

    .end local v9    # "notSleepUid":I
    .restart local v18    # "notSleepUid":I
    :cond_c1
    move-object v9, v0

    check-cast v9, Lcom/android/server/am/BroadcastFilter;

    invoke-direct {v1, v2, v8, v9, v3}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)V

    .line 346
    .end local v0    # "target":Ljava/lang/Object;
    monitor-exit v6
    :try_end_c8
    .catchall {:try_start_82 .. :try_end_c8} :catchall_10d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 347
    iget-boolean v0, v1, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    if-eqz v0, :cond_109

    if-nez v16, :cond_109

    if-eqz v17, :cond_d4

    .line 350
    goto :goto_109

    .line 352
    :cond_d4
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isAllLimit()Z

    move-result v0

    const-wide/16 v9, 0xa

    if-eqz v0, :cond_e8

    .line 353
    if-eqz v14, :cond_e4

    .line 354
    const-wide/16 v9, 0x32

    invoke-direct {v1, v9, v10}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    goto :goto_109

    .line 356
    :cond_e4
    invoke-direct {v1, v9, v10}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    goto :goto_109

    .line 359
    :cond_e8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v4

    cmp-long v0, v19, v9

    if-lez v0, :cond_f8

    .line 360
    const-wide/16 v9, 0x8

    invoke-direct {v1, v9, v10}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    goto :goto_109

    .line 362
    :cond_f8
    sub-int v0, v15, v3

    const/16 v6, 0x1e

    if-le v0, v6, :cond_104

    .line 363
    const-wide/16 v9, 0x5

    invoke-direct {v1, v9, v10}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    goto :goto_109

    .line 365
    :cond_104
    const-wide/16 v9, 0x3

    invoke-direct {v1, v9, v10}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    .line 323
    .end local v4    # "startTime":J
    :cond_109
    :goto_109
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "i":I
    .local v10, "i":I
    goto/16 :goto_78

    .line 346
    .end local v10    # "i":I
    .restart local v3    # "i":I
    .restart local v4    # "startTime":J
    :catchall_10d
    move-exception v0

    :try_start_10e
    monitor-exit v6
    :try_end_10f
    .catchall {:try_start_10e .. :try_end_10f} :catchall_10d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 370
    .end local v3    # "i":I
    .end local v4    # "startTime":J
    :cond_113
    if-eqz v14, :cond_144

    .line 371
    const-string v0, "BroadcastQueueInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MBDH Done with parallel broadcast ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " total used : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v9, v8, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v4, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_144
    iget-object v10, v1, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_147
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 376
    invoke-direct {v1, v2, v8}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V

    .line 377
    monitor-exit v10
    :try_end_14e
    .catchall {:try_start_147 .. :try_end_14e} :catchall_15d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 381
    .end local v15    # "N":I
    nop

    .line 297
    move v3, v7

    move v7, v11

    move v4, v14

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v9, v18

    goto/16 :goto_11

    .line 377
    .restart local v15    # "N":I
    :catchall_15d
    move-exception v0

    :try_start_15e
    monitor-exit v10
    :try_end_15f
    .catchall {:try_start_15e .. :try_end_15f} :catchall_15d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 308
    .end local v7    # "heavyTimeConsumingIntent":Z
    .end local v14    # "timeConsumingIntent":Z
    .end local v15    # "N":I
    .end local v16    # "isNextTopApp":Z
    .end local v17    # "isNextSystemServer":Z
    .end local v18    # "notSleepUid":I
    .local v3, "heavyTimeConsumingIntent":Z
    .local v4, "timeConsumingIntent":Z
    .restart local v5    # "isNextTopApp":Z
    .restart local v6    # "isNextSystemServer":Z
    .restart local v9    # "notSleepUid":I
    :cond_163
    move-object/from16 v13, p2

    :try_start_165
    monitor-exit v12
    :try_end_166
    .catchall {:try_start_165 .. :try_end_166} :catchall_172

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 310
    :catchall_16a
    move-exception v0

    move-object/from16 v13, p2

    :goto_16d
    :try_start_16d
    monitor-exit v12
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_172

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_172
    move-exception v0

    goto :goto_16d

    .line 382
    .end local v11    # "dispatchCount":I
    .local v7, "dispatchCount":I
    :cond_174
    move-object/from16 v13, p2

    iget-object v11, v1, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_179
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 383
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_187

    .line 384
    iput-boolean v10, v2, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 387
    :cond_187
    monitor-exit v11
    :try_end_188
    .catchall {:try_start_179 .. :try_end_188} :catchall_18c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 388
    return-void

    .line 387
    :catchall_18c
    move-exception v0

    :try_start_18d
    monitor-exit v11
    :try_end_18e
    .catchall {:try_start_18d .. :try_end_18e} :catchall_18c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 391
    const-string v0, "  MIUI ADD :  MBDH dump start : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    const-string v0, "  Heavy Time Consuming Intents : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    const-string v0, " action : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    const-string v0, "  Time Consuming Intents : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v0

    .line 397
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 398
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 399
    const-string v2, " action : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22

    .line 402
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_1c .. :try_end_38} :catchall_52

    .line 403
    const-string v0, " enable : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 405
    const-string v0, " dispatchSleep : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 407
    const-string v0, "  MBDH dump end !!!!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    return-void

    .line 402
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getOrderedSleepTime(Lcom/android/server/am/BroadcastRecord;)J
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 187
    const-wide/16 v0, 0x5

    .line 188
    .local v0, "sleepTime":J
    iget-boolean v2, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isAllLimit()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 189
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 190
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->isTimeConsumingIntent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_2a

    .line 193
    :cond_27
    const-wide/16 v0, 0xa

    goto :goto_2c

    .line 191
    :cond_2a
    :goto_2a
    const-wide/16 v0, 0x32

    .line 196
    :cond_2c
    :goto_2c
    return-wide v0
.end method

.method public isEnable()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    return v0
.end method

.method public isTimeConsumingIntent(Ljava/lang/String;)Z
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .line 178
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v0, :cond_6

    .line 179
    const/4 v0, 0x0

    return v0

    .line 181
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v0

    .line 182
    :try_start_9
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 183
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public removeIntent([Ljava/lang/String;)V
    .registers 7
    .param p1, "actions"    # [Ljava/lang/String;

    .line 211
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v0, :cond_5

    .line 212
    return-void

    .line 214
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v0

    .line 215
    :try_start_8
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget-object v3, p1, v2

    .line 216
    .local v3, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 215
    .end local v3    # "action":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 218
    :cond_16
    monitor-exit v0

    .line 219
    return-void

    .line 218
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public setDispatchSleep(Z)V
    .registers 2
    .param p1, "dispatchSleep"    # Z

    .line 174
    iput-boolean p1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    .line 175
    return-void
.end method

.method public setEnable(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 163
    if-eqz p1, :cond_c

    .line 164
    const-string/jumbo v0, "persist.sys.m_b_dispatch"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 166
    :cond_c
    const-string/jumbo v0, "persist.sys.m_b_dispatch"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_14
    return-void
.end method
