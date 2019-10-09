.class public abstract Lcom/android/server/am/BaseMiuiBroadcastManager;
.super Ljava/lang/Object;
.source "BaseMiuiBroadcastManager.java"


# static fields
.field public static final DEBUG_BROADCAST:Z

.field private static final DEBUG_BROADCAST_BACKGROUND:Z

.field static final ENABLE_DELAY_QUEUE:Z

.field static final ENABLE_EXTRA_QUEUES:Z

.field static final EXTRA_QUEUE_SIZE:I

.field private static final FLAG_RECEIVER_LONGTIME:I = 0x2

.field private static final FLAG_RECEIVER_SYSTEM_APP:I = 0x1

.field private static final QUEUE_CONTROL_FLAGS:I = 0x3

.field private static final TAG_BROADCAST:Ljava/lang/String; = "BaseMiuiBroadcastManager"

.field private static final sLongTimeAction:[Ljava/lang/String;


# instance fields
.field private mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field private mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field private mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 23
    const-string v0, "debug.broadcast.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    .line 25
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    const/4 v2, 0x1

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    sput-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST_BACKGROUND:Z

    .line 30
    const-string/jumbo v0, "persist.sys.m_b_enable"

    .line 31
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    .line 32
    sget-wide v3, Lcom/android/server/am/MiuiBroadcastQueue;->DELAY_TIME:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_25

    goto :goto_26

    :cond_25
    move v2, v1

    :goto_26
    sput-boolean v2, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_DELAY_QUEUE:Z

    .line 33
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v0, :cond_34

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_DELAY_QUEUE:Z

    if-eqz v0, :cond_32

    const/4 v1, 0x3

    goto :goto_34

    :cond_32
    const/4 v1, 0x2

    nop

    :cond_34
    :goto_34
    sput v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->EXTRA_QUEUE_SIZE:I

    .line 42
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    const-string v5, "android.net.wifi.STATE_CHANGE"

    const-string v6, "android.net.wifi.SCAN_RESULTS"

    const-string v7, "com.xiaomi.push.channel_closed"

    const-string v8, "com.miui.core.intent.ACTION_DUMP_CACHED_LOG"

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->sLongTimeAction:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addReceiverToListByFlag(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;I)V
    .registers 8
    .param p1, "nonSystemReceivers"    # Ljava/util/List;
    .param p2, "systemReceivers"    # Ljava/util/List;
    .param p3, "receiver"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .line 233
    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_27

    .line 235
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_49

    .line 237
    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to nonSystemReceivers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 241
    :cond_27
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_46

    .line 242
    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to systemReceivers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_46
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_49
    :goto_49
    return-void
.end method

.method private broadcastQueueByFlag(IZ)Lcom/android/server/am/BroadcastQueue;
    .registers 7
    .param p1, "flags"    # I
    .param p2, "noDelay"    # Z

    .line 261
    const/high16 v0, 0x10000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 262
    .local v0, "isFg":Z
    :goto_8
    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST_BACKGROUND:Z

    if-eqz v1, :cond_31

    .line 263
    const-string v1, "BaseMiuiBroadcastManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast  on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    if-eqz v0, :cond_1d

    const-string v3, "foreground"

    goto :goto_1f

    :cond_1d
    const-string v3, "background"

    :goto_1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " queue, flags : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_31
    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v1, :cond_5a

    .line 267
    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_DELAY_QUEUE:Z

    if-eqz v1, :cond_42

    if-nez p2, :cond_42

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_42

    .line 268
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    return-object v1

    .line 269
    :cond_42
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4e

    .line 270
    if-eqz v0, :cond_4b

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_4d

    :cond_4b
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    :goto_4d
    return-object v1

    .line 272
    :cond_4e
    if-eqz v0, :cond_55

    .line 273
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_59

    .line 274
    :cond_55
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 272
    :goto_59
    return-object v1

    .line 277
    :cond_5a
    if-eqz v0, :cond_61

    .line 278
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_65

    .line 279
    :cond_61
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 277
    :goto_65
    return-object v1
.end method

.method private broadcastQueueForIntent(Landroid/content/Intent;Z)Lcom/android/server/am/BroadcastQueue;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "noDelay"    # Z

    .line 249
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_1b

    .line 250
    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ready to broadcastQueueForIntentt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_1b
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/BaseMiuiBroadcastManager;->broadcastQueueByFlag(IZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    return-object v0
.end method

.method private isLongTimeAction(Lcom/android/server/am/BroadcastRecord;)Z
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 119
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_DELAY_QUEUE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 120
    return v1

    .line 123
    :cond_6
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 126
    .local v2, "pr":Lcom/android/server/am/ProcessRecord;
    const/4 v3, 0x1

    if-eqz v2, :cond_37

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v5, 0xc8

    if-le v4, v5, :cond_37

    .line 127
    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_36

    .line 128
    const-string v1, "BaseMiuiBroadcastManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is background with"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_36
    return v3

    .line 131
    :cond_37
    sget-object v4, Lcom/android/server/am/BaseMiuiBroadcastManager;->sLongTimeAction:[Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    :goto_3b
    if-ge v6, v5, :cond_67

    aget-object v7, v4, v6

    .line 132
    .local v7, "action":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 133
    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_63

    .line 134
    const-string v1, "BaseMiuiBroadcastManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is long time action"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_63
    return v3

    .line 131
    .end local v7    # "action":Ljava/lang/String;
    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 138
    :cond_67
    return v1
.end method

.method private isTopApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 343
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 344
    return v1

    .line 345
    :cond_8
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 347
    return v1

    .line 348
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method private realSendBroadcastLocked(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V
    .registers 25
    .param p1, "parallel"    # Z
    .param p2, "replacePending"    # Z
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "receivers"    # Ljava/util/List;
    .param p5, "record"    # Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 144
    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/server/am/BaseMiuiBroadcastManager;->broadcastQueueForIntent(Landroid/content/Intent;Z)Lcom/android/server/am/BroadcastQueue;

    move-result-object v3

    .line 145
    .local v3, "queue":Lcom/android/server/am/BroadcastQueue;
    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v6

    .line 149
    .local v6, "r":Lcom/android/server/am/BroadcastRecord;
    if-nez p1, :cond_ad

    .line 150
    sget-boolean v7, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v7, :cond_3b

    .line 151
    const-string v7, "BaseMiuiBroadcastManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enqueueing ordered broadcast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": prev had "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 151
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_3b
    sget-boolean v7, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v7, :cond_5b

    .line 154
    const-string v7, "BaseMiuiBroadcastManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enqueueing broadcast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 155
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 154
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_5b
    if-eqz p2, :cond_62

    invoke-virtual {v3, v6}, Lcom/android/server/am/BroadcastQueue;->replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v7

    goto :goto_63

    :cond_62
    const/4 v7, 0x0

    .line 158
    .local v7, "oldRecord":Lcom/android/server/am/BroadcastRecord;
    :goto_63
    if-eqz v7, :cond_a6

    .line 160
    iget-object v8, v7, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v8, :cond_ac

    .line 161
    iget-object v8, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v8, v0}, Lcom/android/server/am/BaseMiuiBroadcastManager;->broadcastQueueForIntent(Landroid/content/Intent;Z)Lcom/android/server/am/BroadcastQueue;

    move-result-object v9

    .line 163
    .local v9, "oldQueue":Lcom/android/server/am/BroadcastQueue;
    :try_start_6f
    iget-object v10, v7, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v7, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iget-object v12, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v0, v7, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v18, v0

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_83} :catch_84

    .line 170
    goto :goto_a5

    .line 167
    :catch_84
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "BaseMiuiBroadcastManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] sending broadcast result of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v9    # "oldQueue":Lcom/android/server/am/BroadcastQueue;
    :goto_a5
    goto :goto_ac

    .line 173
    :cond_a6
    invoke-virtual {v3, v6}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 174
    invoke-virtual {v3}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 176
    .end local v7    # "oldRecord":Lcom/android/server/am/BroadcastRecord;
    :cond_ac
    :goto_ac
    goto :goto_d9

    .line 177
    :cond_ad
    sget-boolean v7, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v7, :cond_c7

    .line 178
    const-string v7, "BaseMiuiBroadcastManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enqueueing parallel broadcast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_c7
    if-eqz p2, :cond_d0

    .line 180
    invoke-virtual {v3, v6}, Lcom/android/server/am/BroadcastQueue;->replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v7

    if-eqz v7, :cond_d0

    goto :goto_d1

    :cond_d0
    const/4 v0, 0x0

    .line 181
    .local v0, "replaced":Z
    :goto_d1
    if-nez v0, :cond_d9

    .line 182
    invoke-virtual {v3, v6}, Lcom/android/server/am/BroadcastQueue;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 183
    invoke-virtual {v3}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 186
    .end local v0    # "replaced":Z
    :cond_d9
    :goto_d9
    return-void
.end method

.method private sendBroadcastDirect(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V
    .registers 15
    .param p1, "parallel"    # Z
    .param p2, "replacePending"    # Z
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "receivers"    # Ljava/util/List;
    .param p5, "record"    # Lcom/android/server/am/BroadcastRecord;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "nonSystemReceivers":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 194
    .local v8, "systemReceivers":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_c
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_10
    if-ge v1, v2, :cond_4e

    .line 195
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 196
    .local v3, "receiver":Ljava/lang/Object;
    if-eqz v3, :cond_3d

    instance-of v4, v3, Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_3d

    .line 197
    move-object v4, v3

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .line 198
    .local v4, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v5, v4, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v5, :cond_3c

    iget-object v5, v4, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_3c

    iget-object v5, v4, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_3c

    .line 201
    iget-object v5, v4, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-direct {p0, v0, v8, v4, v5}, Lcom/android/server/am/BaseMiuiBroadcastManager;->addReceiverToListByFlag(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;I)V

    .line 205
    .end local v4    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_3c
    goto :goto_4b

    :cond_3d
    if-eqz v3, :cond_4b

    .line 206
    move-object v4, v3

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 207
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-direct {p0, v0, v8, v4, v5}, Lcom/android/server/am/BaseMiuiBroadcastManager;->addReceiverToListByFlag(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;I)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4b} :catch_7b

    .line 194
    .end local v3    # "receiver":Ljava/lang/Object;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 216
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_4e
    nop

    .line 217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_62

    .line 218
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 219
    .local v4, "newIntent":Landroid/content/Intent;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, v0

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BaseMiuiBroadcastManager;->realSendBroadcastLocked(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V

    .line 223
    .end local v4    # "newIntent":Landroid/content/Intent;
    :cond_62
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7a

    .line 224
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 225
    .local v1, "newIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, v1

    move-object v6, v8

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BaseMiuiBroadcastManager;->realSendBroadcastLocked(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V

    .line 229
    .end local v1    # "newIntent":Landroid/content/Intent;
    :cond_7a
    return-void

    .line 212
    :catch_7b
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 214
    const/4 v2, 0x0

    .line 215
    .end local v8    # "systemReceivers":Ljava/util/List;
    .local v2, "systemReceivers":Ljava/util/List;
    return-void
.end method


# virtual methods
.method broadcastIntentLocked(ZZLcom/android/server/am/BroadcastRecord;)Z
    .registers 14
    .param p1, "parallel"    # Z
    .param p2, "replacePending"    # Z
    .param p3, "record"    # Lcom/android/server/am/BroadcastRecord;

    .line 95
    iget-object v6, p3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 96
    .local v6, "intent":Landroid/content/Intent;
    iget-boolean v7, p3, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 97
    .local v7, "ordered":Z
    iget-object v8, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 98
    .local v8, "receivers":Ljava/util/List;
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    if-nez v7, :cond_4b

    .line 99
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_28

    .line 100
    const-string v0, "BaseMiuiBroadcastManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ready to send broadcast : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_28
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v9

    .line 102
    .local v9, "flags":I
    and-int/lit8 v0, v9, 0x3

    if-eqz v0, :cond_35

    .line 103
    and-int/lit8 v0, v9, -0x4

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    :cond_35
    invoke-direct {p0, p3}, Lcom/android/server/am/BaseMiuiBroadcastManager;->isLongTimeAction(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 107
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    return v1

    .line 111
    :cond_40
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v6

    move-object v4, v8

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseMiuiBroadcastManager;->sendBroadcastDirect(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V

    .line 112
    const/4 v0, 0x1

    return v0

    .line 114
    .end local v9    # "flags":I
    :cond_4b
    return v1
.end method

.method broadcastQueueByFlag(I)Lcom/android/server/am/BroadcastQueue;
    .registers 3
    .param p1, "flags"    # I

    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/BaseMiuiBroadcastManager;->broadcastQueueByFlag(IZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    return-object v0
.end method

.method abstract createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;
.end method

.method abstract createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
.end method

.method init(Lcom/android/server/am/ActivityManagerService;)V
    .registers 13
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 54
    iput-object p1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 55
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v0, :cond_5d

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 57
    .local v0, "startTime":J
    const-string v4, "fg_sys"

    const-wide/16 v5, 0x2710

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 59
    const-string v5, "bg_sys"

    const-wide/32 v6, 0xea60

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 61
    sget-boolean v2, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_DELAY_QUEUE:Z

    if-eqz v2, :cond_3c

    .line 63
    new-instance v2, Lcom/android/server/am/MiuiBroadcastQueue;

    iget-object v5, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-string/jumbo v6, "longtime"

    const-wide/32 v7, 0x927c0

    const/4 v9, 0x1

    move-object v3, v2

    move-object v4, p1

    move-object v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/am/MiuiBroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZLcom/android/server/am/BaseMiuiBroadcastManager;)V

    iput-object v2, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 66
    :cond_3c
    const-string v2, "BaseMiuiBroadcastManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init extra BroadcastQueues in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v0    # "startTime":J
    :cond_5d
    return-void
.end method

.method initExtraQuqueIfNeed(I)Z
    .registers 5
    .param p1, "startIndex"    # I

    .line 81
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v0, :cond_26

    .line 82
    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    aput-object v1, v0, p1

    .line 83
    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    aput-object v2, v0, v1

    .line 84
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_DELAY_QUEUE:Z

    if-eqz v0, :cond_24

    .line 85
    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    add-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    aput-object v2, v0, v1

    .line 87
    :cond_24
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method isFgBroadcastQueue(Landroid/util/ArraySet;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;)Z"
        }
    .end annotation

    .line 77
    .local p1, "queues":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/BroadcastQueue;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method isFgBroadcastQueue(Lcom/android/server/am/BroadcastQueue;)Z
    .registers 3
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;

    .line 72
    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public updateLongTimeBroadcastRecord(Lcom/android/server/am/BroadcastRecord;Z)Ljava/util/List;
    .registers 13
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "order"    # Z

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v0, "bgReceivers":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v1, "fgReceivers":Ljava/util/List;
    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 295
    .local v8, "receivers":Ljava/util/List;
    if-nez v8, :cond_10

    .line 296
    const/4 v2, 0x0

    return-object v2

    .line 298
    :cond_10
    const/4 v2, 0x0

    .line 298
    .local v2, "i":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 298
    .local v3, "size":I
    :goto_15
    if-ge v2, v3, :cond_101

    .line 299
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 300
    .local v4, "receiver":Ljava/lang/Object;
    if-eqz v4, :cond_a7

    instance-of v5, v4, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_a7

    .line 301
    move-object v5, v4

    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    .line 302
    .local v5, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v6, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v6, :cond_80

    iget-object v6, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v6, v6, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_80

    .line 304
    iget-object v6, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v6, v6, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v6}, Lcom/android/server/am/BaseMiuiBroadcastManager;->isTopApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 306
    sget-boolean v6, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v6, :cond_59

    .line 307
    const-string v6, "BaseMiuiBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add app "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to foreground queue"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_59
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 310
    :cond_5d
    sget-boolean v6, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v6, :cond_7c

    .line 311
    const-string v6, "BaseMiuiBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add app "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to longtime queue"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_7c
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 314
    :cond_80
    iget-object v6, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v6, :cond_a6

    .line 315
    sget-boolean v6, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v6, :cond_a3

    .line 316
    const-string v6, "BaseMiuiBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add app "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to longtime queue"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_a3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v5    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_a6
    :goto_a6
    goto :goto_fd

    :cond_a7
    if-eqz v4, :cond_fd

    .line 320
    move-object v5, v4

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 321
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v6}, Lcom/android/server/am/BaseMiuiBroadcastManager;->isTopApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_da

    .line 322
    sget-boolean v6, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v6, :cond_d6

    .line 323
    const-string v6, "BaseMiuiBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resolve "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to fregournd queue"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_d6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_fd

    .line 326
    :cond_da
    sget-boolean v6, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v6, :cond_fa

    .line 327
    const-string v6, "BaseMiuiBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resolve "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to longtime queue"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_fa
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v4    # "receiver":Ljava/lang/Object;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_fd
    :goto_fd
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15

    .line 332
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_101
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_11f

    .line 334
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    xor-int/lit8 v3, p2, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object v2, p0

    move-object v6, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BaseMiuiBroadcastManager;->sendBroadcastDirect(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V

    .line 338
    :cond_11f
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 339
    return-object v0
.end method
